package smvDebugger.visualization;

/*Generated by MPS */

import java.util.Map;
import java.util.Set;
import java.util.HashMap;
import java.util.HashSet;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import java.util.List;
import smvDebugger.model.SystemItemValue;
import smvDebugger.model.SystemItem;
import java.util.function.Consumer;
import java.util.ArrayList;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import java.util.Optional;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import java.util.function.Predicate;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.AlgorithmBody;
import org.fbme.lib.st.statements.Statement;
import org.fbme.lib.st.statements.AssignmentStatement;
import org.fbme.lib.st.expressions.Variable;
import org.fbme.ide.iec61499.adapter.st.VariableReferenceByNode;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.ecc.ECTransitionCondition;

public class BacktraceService {
  private final Map<String, Set<String>> graph = new HashMap<String, Set<String>>();
  private final Set<String> visited = new HashSet<String>();
  private final MPSProject project;
  private final CompositeFBTypeDeclaration compositeFb;

  public BacktraceService(final MPSProject project, final CompositeFBTypeDeclaration compositeFb) {
    this.project = project;
    this.compositeFb = compositeFb;
  }

  public List<String> getRelatedItemSimpleNames(final SystemItemValue itemValue) {
    graph.clear();
    visited.clear();

    final SystemItem item = itemValue.getItem();
    switch (item.getType()) {
      case EVENT_PORT:
        backtraceEvent(item.getFbName(), item.getItemName());
      case DATA_PORT:
        backtraceData(item.getFbName(), item.getItemName());
      case ECC:
        backtraceEccState(item.getItemName(), itemValue.getValue());
    }

    final Set<String> relatedItemSimpleNames = new HashSet<String>();
    relatedItemSimpleNames.addAll(graph.keySet());
    graph.values().forEach(new Consumer<Set<String>>() {
      public void accept(final Set<String> set) {
        relatedItemSimpleNames.addAll(set);
      }
    });

    return new ArrayList<String>(relatedItemSimpleNames);
  }

  private void backtraceEvent(final String curFbName, final String event) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final FBNetwork fbNethwork = compositeFb.getNetwork();
        final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
        final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) ListSequence.fromList(fbs).findFirst(new IWhereFilter<FunctionBlockDeclaration>() {
          public boolean accept(FunctionBlockDeclaration it) {
            return Objects.equals(it.getName(), curFbName);
          }
        }).getTypeReference().getTarget();
        final Optional<EventDeclaration> inputEventOpt = curFb.getInputEvents().stream().filter(new Predicate<EventDeclaration>() {
          public boolean test(final EventDeclaration eventD) {
            return Objects.equals(eventD.getName(), event);
          }
        }).findFirst();
        if (inputEventOpt.isPresent()) {
          final EventDeclaration inputEvent = inputEventOpt.get();
          fbNethwork.getEventConnections().stream().filter(new Predicate<FBNetworkConnection>() {
            public boolean test(FBNetworkConnection con) {
              final String target = ((EventDeclaration) con.getTargetReference().getTarget().getPortTarget()).getName();
              return Objects.equals(target, event);
            }
          }).forEach(new Consumer<FBNetworkConnection>() {
            public void accept(FBNetworkConnection con) {
              final String fbName = con.getSourceReference().getTarget().getFunctionBlock().getName();
              final String eventName = ((EventDeclaration) con.getSourceReference().getTarget().getPortTarget()).getName();
              final String fullName = fbName + "." + eventName;

              if (!(visited.contains(fullName))) {
                visited.add(fullName);
                graph.putIfAbsent(fullName, new HashSet<String>());
                graph.get(fullName).add(curFbName + "." + event);
                backtraceEvent(fbName, eventName);
              }
            }
          });
        }
      }
    });
  }

  private void backtraceData(final String curFbName, final String var) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final FBNetwork fbNethwork = compositeFb.getNetwork();
        final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
        final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) ListSequence.fromList(fbs).findFirst(new IWhereFilter<FunctionBlockDeclaration>() {
          public boolean accept(FunctionBlockDeclaration it) {
            return Objects.equals(it.getName(), curFbName);
          }
        }).getTypeReference().getTarget();
        curFb.getAlgorithms().forEach(new Consumer<AlgorithmDeclaration>() {
          public void accept(final AlgorithmDeclaration algorithm) {
            ((AlgorithmBody.ST) algorithm.getBody()).getStatements().stream().forEach(new Consumer<Statement>() {
              public void accept(final Statement statement) {
                if (statement instanceof AssignmentStatement) {
                  final AssignmentStatement assignment = ((AssignmentStatement) statement);
                  final Variable curVar = assignment.getVariable();
                  if (curVar instanceof VariableReferenceByNode) {
                    if (Objects.equals(((VariableReferenceByNode) curVar).getReference().getTarget().getName(), var)) {
                      curFb.getEcc().getStates().forEach(new Consumer<StateDeclaration>() {
                        public void accept(final StateDeclaration state) {
                          if (state.getActions().stream().filter(new Predicate<StateAction>() {
                            public boolean test(final StateAction action) {
                              return Objects.equals(action.getAlgorithm(), algorithm);
                            }
                          }).findAny().isPresent()) {
                            final String eccName = state.getName();
                            final String fullName = curFbName + "." + eccName;
                            if (!(visited.contains(fullName))) {
                              visited.add(fullName);
                              graph.putIfAbsent(fullName, new HashSet<String>());
                              graph.get(fullName).add(curFbName + "." + eccName);
                              backtraceEccState(curFbName, eccName);
                            }
                          }
                        }
                      });

                    }
                  }
                }
              }
            });
          }
        });
      }
    });
  }

  private void backtraceEccState(final String curFbName, final String state) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final FBNetwork fbNethwork = compositeFb.getNetwork();
        final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
        final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) ListSequence.fromList(fbs).findFirst(new IWhereFilter<FunctionBlockDeclaration>() {
          public boolean accept(FunctionBlockDeclaration it) {
            return Objects.equals(it.getName(), curFbName);
          }
        }).getTypeReference().getTarget();
        final List<StateTransition> transitions = curFb.getEcc().getTransitions();
        transitions.stream().filter(new Predicate<StateTransition>() {
          public boolean test(final StateTransition transition) {
            return Objects.equals(transition.getTargetReference().getTarget().getName(), state);
          }
        }).forEach(new Consumer<StateTransition>() {
          public void accept(final StateTransition transition) {
            final ECTransitionCondition condition = transition.getCondition();
            final String fbName = condition.getEventReference().getTarget().getFunctionBlock().getName();
            final String eventName = condition.getEventReference().getTarget().getPortTarget().getName();
            final String fullName = fbName + "." + eventName;
            if (!(visited.contains(fullName))) {
              visited.add(fullName);
              graph.putIfAbsent(fullName, new HashSet<String>());
              graph.get(fullName).add(curFbName + "." + state);
              backtraceEvent(fbName, eventName);
            }
          }
        });
      }
    });
  }
}