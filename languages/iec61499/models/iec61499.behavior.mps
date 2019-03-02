<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(iec61499.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="nkm5" ref="r:095345ad-6627-42ca-9d3f-fc1b2d9fbd61(de.itemis.mps.editor.diagram.runtime.model)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
    </language>
  </registry>
  <node concept="13h7C7" id="3Qd3IVOHS$v">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="13hLZK" id="3Qd3IVOHS$w" role="13h7CW">
      <node concept="3clFbS" id="3Qd3IVOHS$x" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3Qd3IVOHS$E" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <property role="13i0it" value="true" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="3Qd3IVOHS$F" role="1B3o_S" />
      <node concept="10Oyi0" id="3Qd3IVOHS$U" role="3clF45" />
      <node concept="3clFbS" id="3Qd3IVOHS$H" role="3clF47">
        <node concept="3cpWs6" id="3Qd3IVOHS__" role="3cqZAp">
          <node concept="3cmrfG" id="3Qd3IVOHS_S" role="3cqZAk">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3Qd3IVOHSAR">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZu2b" resolve="EqualsExpression" />
    <node concept="13hLZK" id="3Qd3IVOHSAS" role="13h7CW">
      <node concept="3clFbS" id="3Qd3IVOHSAT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3Qd3IVOHSB_" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" node="3Qd3IVOHS$E" resolve="getPriority" />
      <node concept="3Tm1VV" id="3Qd3IVOHSBA" role="1B3o_S" />
      <node concept="3clFbS" id="3Qd3IVOHSBF" role="3clF47">
        <node concept="3cpWs6" id="3Qd3IVOHSOn" role="3cqZAp">
          <node concept="3cmrfG" id="3Qd3IVOK7bg" role="3cqZAk">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3Qd3IVOK6TI" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3tDlCSlWkoN" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWkoO" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWkp1" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWkEb" role="3cqZAp">
          <node concept="3cpWs3" id="3tDlCSlWkEc" role="3clFbG">
            <node concept="2OqwBi" id="3tDlCSlWkEd" role="3uHU7w">
              <node concept="2OqwBi" id="3tDlCSlWkEe" role="2Oq$k0">
                <node concept="13iPFW" id="3tDlCSlWkEf" role="2Oq$k0" />
                <node concept="3TrEf2" id="3tDlCSlWkEg" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
              <node concept="2qgKlT" id="3tDlCSlWkEh" role="2OqNvi">
                <ref role="37wK5l" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
              </node>
            </node>
            <node concept="3cpWs3" id="3tDlCSlWkEi" role="3uHU7B">
              <node concept="2OqwBi" id="3tDlCSlWkEj" role="3uHU7B">
                <node concept="2OqwBi" id="3tDlCSlWkEk" role="2Oq$k0">
                  <node concept="13iPFW" id="3tDlCSlWkEl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3tDlCSlWkEm" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3tDlCSlWkEn" role="2OqNvi">
                  <ref role="37wK5l" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="3tDlCSlWkEo" role="3uHU7w">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWkp2" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3Qd3IVOImfC">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZiWZ" resolve="AndExpression" />
    <node concept="13hLZK" id="3Qd3IVOImfD" role="13h7CW">
      <node concept="3clFbS" id="3Qd3IVOImfE" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3Qd3IVOImfN" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <property role="13i0it" value="false" />
      <property role="2Ki8OM" value="true" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3Qd3IVOHS$E" resolve="getPriority" />
      <node concept="3Tm1VV" id="3Qd3IVOImfO" role="1B3o_S" />
      <node concept="3clFbS" id="3Qd3IVOImfT" role="3clF47">
        <node concept="3clFbF" id="3Qd3IVOImrJ" role="3cqZAp">
          <node concept="3cmrfG" id="3Qd3IVOK7bH" role="3clFbG">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3Qd3IVOImfU" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3tDlCSlWfud" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWfue" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWfur" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWfyO" role="3cqZAp">
          <node concept="3cpWs3" id="3tDlCSlWizI" role="3clFbG">
            <node concept="2OqwBi" id="3tDlCSlWjId" role="3uHU7w">
              <node concept="2OqwBi" id="3tDlCSlWiUt" role="2Oq$k0">
                <node concept="13iPFW" id="3tDlCSlWiHM" role="2Oq$k0" />
                <node concept="3TrEf2" id="3tDlCSlWjgR" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
              <node concept="2qgKlT" id="3tDlCSlWkdX" role="2OqNvi">
                <ref role="37wK5l" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
              </node>
            </node>
            <node concept="3cpWs3" id="3tDlCSlWhBX" role="3uHU7B">
              <node concept="2OqwBi" id="3tDlCSlWgiy" role="3uHU7B">
                <node concept="2OqwBi" id="3tDlCSlWfGW" role="2Oq$k0">
                  <node concept="13iPFW" id="3tDlCSlWfyN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3tDlCSlWfTI" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3tDlCSlWgEB" role="2OqNvi">
                  <ref role="37wK5l" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="3tDlCSlWhHM" role="3uHU7w">
                <property role="Xl_RC" value="&amp;amp;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWfus" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tDlCSlWdi2">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZ0X9" resolve="Expression" />
    <node concept="13i0hz" id="3tDlCSlWdit" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWdiu" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWdiw" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWdkR" role="3cqZAp">
          <node concept="3cpWs3" id="3tDlCSlWdzv" role="3clFbG">
            <node concept="3cpWs3" id="3tDlCSlWdKP" role="3uHU7B">
              <node concept="2OqwBi" id="3tDlCSlWeno" role="3uHU7w">
                <node concept="2OqwBi" id="3tDlCSlWdXP" role="2Oq$k0">
                  <node concept="13iPFW" id="3tDlCSlWdM$" role="2Oq$k0" />
                  <node concept="2yIwOk" id="3tDlCSlWe7J" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="3tDlCSlWf1e" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
              <node concept="Xl_RD" id="3tDlCSlWdz_" role="3uHU7B">
                <property role="Xl_RC" value="&lt;! No xmlValuePresentation implemented for " />
              </node>
            </node>
            <node concept="Xl_RD" id="3tDlCSlWdzB" role="3uHU7w">
              <property role="Xl_RC" value=" concept !&gt;" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWdjb" role="3clF45" />
    </node>
    <node concept="13hLZK" id="3tDlCSlWdi3" role="13h7CW">
      <node concept="3clFbS" id="3tDlCSlWdi4" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3tDlCSlWkZe">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZeH4" resolve="InputEventGuard" />
    <node concept="13hLZK" id="3tDlCSlWkZf" role="13h7CW">
      <node concept="3clFbS" id="3tDlCSlWkZg" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tDlCSlWkZp" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWkZq" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWkZB" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWl7_" role="3cqZAp">
          <node concept="2OqwBi" id="3tDlCSlWlMX" role="3clFbG">
            <node concept="2OqwBi" id="3tDlCSlWlhn" role="2Oq$k0">
              <node concept="13iPFW" id="3tDlCSlWl82" role="2Oq$k0" />
              <node concept="3TrEf2" id="3tDlCSlWlsH" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZeH5" resolve="inputEvent" />
              </node>
            </node>
            <node concept="3TrcHB" id="3tDlCSlWm1O" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWkZC" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tDlCSlWm6f">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZu2i" resolve="NumericLiteral" />
    <node concept="13hLZK" id="3tDlCSlWm6g" role="13h7CW">
      <node concept="3clFbS" id="3tDlCSlWm6h" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tDlCSlWm6q" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWm6r" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWm6C" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWmeN" role="3cqZAp">
          <node concept="3cpWs3" id="3tDlCSlWq6J" role="3clFbG">
            <node concept="Xl_RD" id="3tDlCSlWq93" role="3uHU7B">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2OqwBi" id="3tDlCSlWmCV" role="3uHU7w">
              <node concept="13iPFW" id="3tDlCSlWmeI" role="2Oq$k0" />
              <node concept="3TrcHB" id="3tDlCSlWmOh" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:3HBlKeoZu2j" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWm6D" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tDlCSlWqfG">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3Qd3IVOFNl$" resolve="ParensExpression" />
    <node concept="13hLZK" id="3tDlCSlWqfH" role="13h7CW">
      <node concept="3clFbS" id="3tDlCSlWqfI" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tDlCSlWqfR" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWqfS" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWqg5" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWqo3" role="3cqZAp">
          <node concept="3cpWs3" id="3tDlCSlWs4W" role="3clFbG">
            <node concept="Xl_RD" id="3tDlCSlWsbx" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="3tDlCSlWrbC" role="3uHU7B">
              <node concept="Xl_RD" id="3tDlCSlWqo2" role="3uHU7B">
                <property role="Xl_RC" value="(" />
              </node>
              <node concept="2OqwBi" id="3tDlCSlWrnJ" role="3uHU7w">
                <node concept="13iPFW" id="3tDlCSlWrbY" role="2Oq$k0" />
                <node concept="3TrEf2" id="3tDlCSlWrI3" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3Qd3IVOFNmU" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWqg6" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3tDlCSlWsoM">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZu2f" resolve="VariableReference" />
    <node concept="13hLZK" id="3tDlCSlWsoN" role="13h7CW">
      <node concept="3clFbS" id="3tDlCSlWsoO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3tDlCSlWsoX" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="xmlValuePresentation" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
      <node concept="3Tm1VV" id="3tDlCSlWsoY" role="1B3o_S" />
      <node concept="3clFbS" id="3tDlCSlWspb" role="3clF47">
        <node concept="3clFbF" id="3tDlCSlWste" role="3cqZAp">
          <node concept="2OqwBi" id="3tDlCSlWtkL" role="3clFbG">
            <node concept="2OqwBi" id="3tDlCSlWsA$" role="2Oq$k0">
              <node concept="13iPFW" id="3tDlCSlWstd" role="2Oq$k0" />
              <node concept="3TrEf2" id="3tDlCSlWsWN" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZu2g" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="3tDlCSlWtzC" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3tDlCSlWspc" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="61urdBygzY8">
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <ref role="13h7C2" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="13i0hz" id="61urdBygsoc" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdBygsop" role="1B3o_S" />
      <node concept="3clFbS" id="61urdBygsoq" role="3clF47">
        <node concept="3cpWs6" id="61urdByguyw" role="3cqZAp">
          <node concept="3cpWs3" id="61urdBygxEt" role="3cqZAk">
            <node concept="2OqwBi" id="61urdBygyTw" role="3uHU7w">
              <node concept="2OqwBi" id="61urdBygxZN" role="2Oq$k0">
                <node concept="13iPFW" id="61urdBygxNy" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdBygyuo" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="61urdBygzeY" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdBygwMa" role="3uHU7B">
              <node concept="2OqwBi" id="61urdBygvQr" role="3uHU7B">
                <node concept="2OqwBi" id="61urdByguWs" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdByguJ4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdBygvmB" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
                <node concept="3TrcHB" id="61urdBygw7v" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdBygwQV" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdBygsor" role="3clF45" />
    </node>
    <node concept="13i0hz" id="75nMhMfYu1I" role="13h7CS">
      <property role="TrG5h" value="create" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="75nMhMfYu1J" role="3clF46">
        <property role="TrG5h" value="isInput" />
        <node concept="10P_77" id="75nMhMfYu1K" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="75nMhMfYu1L" role="1B3o_S" />
      <node concept="3Tqbb2" id="75nMhMfYu1M" role="3clF45">
        <ref role="ehGHo" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
      </node>
      <node concept="3clFbS" id="75nMhMfYu1N" role="3clF47">
        <node concept="3clFbJ" id="75nMhMfYu1O" role="3cqZAp">
          <node concept="37vLTw" id="75nMhMfYu1P" role="3clFbw">
            <ref role="3cqZAo" node="75nMhMfYu1J" resolve="isInput" />
          </node>
          <node concept="3clFbS" id="75nMhMfYu1Q" role="3clFbx">
            <node concept="3cpWs6" id="75nMhMfYu1R" role="3cqZAp">
              <node concept="2ShNRf" id="75nMhMfYu1S" role="3cqZAk">
                <node concept="3zrR0B" id="75nMhMfYu1T" role="2ShVmc">
                  <node concept="3Tqbb2" id="75nMhMfYu1U" role="3zrR0E">
                    <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="75nMhMfYu1V" role="9aQIa">
            <node concept="3clFbS" id="75nMhMfYu1W" role="9aQI4">
              <node concept="3cpWs6" id="75nMhMfYu1X" role="3cqZAp">
                <node concept="2ShNRf" id="75nMhMfYu1Y" role="3cqZAk">
                  <node concept="3zrR0B" id="75nMhMfYu1Z" role="2ShVmc">
                    <node concept="3Tqbb2" id="75nMhMfYu20" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="61urdBygzY9" role="13h7CW">
      <node concept="3clFbS" id="61urdBygzYa" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="61urdByg$ib">
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <ref role="13h7C2" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="13hLZK" id="61urdByg$ic" role="13h7CW">
      <node concept="3clFbS" id="61urdByg$id" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="61urdByg$tE" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdByg$tF" role="1B3o_S" />
      <node concept="3clFbS" id="61urdByg$tG" role="3clF47">
        <node concept="3cpWs6" id="61urdByg$tO" role="3cqZAp">
          <node concept="3cpWs3" id="61urdByg$tP" role="3cqZAk">
            <node concept="2OqwBi" id="61urdByg$tQ" role="3uHU7w">
              <node concept="2OqwBi" id="61urdByg$tR" role="2Oq$k0">
                <node concept="13iPFW" id="61urdByg$tS" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdByg$tT" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="61urdByg$tU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdByg$tV" role="3uHU7B">
              <node concept="2OqwBi" id="61urdByg$tW" role="3uHU7B">
                <node concept="2OqwBi" id="61urdByg$tX" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdByg$tY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdByg$tZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                  </node>
                </node>
                <node concept="3TrcHB" id="61urdByg$u0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdByg$u1" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdByg$ua" role="3clF45" />
    </node>
    <node concept="13i0hz" id="75nMhMfYrW8" role="13h7CS">
      <property role="TrG5h" value="create" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="75nMhMfYs8Z" role="3clF46">
        <property role="TrG5h" value="isInput" />
        <node concept="10P_77" id="75nMhMfYs9d" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="75nMhMfYrW9" role="1B3o_S" />
      <node concept="3Tqbb2" id="75nMhMfYs7$" role="3clF45">
        <ref role="ehGHo" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
      </node>
      <node concept="3clFbS" id="75nMhMfYrWb" role="3clF47">
        <node concept="3clFbJ" id="75nMhMfYs9X" role="3cqZAp">
          <node concept="37vLTw" id="75nMhMfYsah" role="3clFbw">
            <ref role="3cqZAo" node="75nMhMfYs8Z" resolve="isInput" />
          </node>
          <node concept="3clFbS" id="75nMhMfYs9Z" role="3clFbx">
            <node concept="3cpWs6" id="75nMhMfYsax" role="3cqZAp">
              <node concept="2ShNRf" id="75nMhMfYsb0" role="3cqZAk">
                <node concept="3zrR0B" id="75nMhMfYth1" role="2ShVmc">
                  <node concept="3Tqbb2" id="75nMhMfYth3" role="3zrR0E">
                    <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="75nMhMfYti_" role="9aQIa">
            <node concept="3clFbS" id="75nMhMfYtiA" role="9aQI4">
              <node concept="3cpWs6" id="75nMhMfYtjU" role="3cqZAp">
                <node concept="2ShNRf" id="75nMhMfYtlb" role="3cqZAk">
                  <node concept="3zrR0B" id="75nMhMfYtsZ" role="2ShVmc">
                    <node concept="3Tqbb2" id="75nMhMfYtt1" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="61urdByg_Fh">
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <ref role="13h7C2" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
    <node concept="13i0hz" id="61urdByg_MH" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdByg_MI" role="1B3o_S" />
      <node concept="3clFbS" id="61urdByg_MJ" role="3clF47">
        <node concept="3clFbF" id="61urdByg_ZI" role="3cqZAp">
          <node concept="3cpWs3" id="61urdBygDyn" role="3clFbG">
            <node concept="2OqwBi" id="61urdBygEJO" role="3uHU7w">
              <node concept="2OqwBi" id="61urdBygDXA" role="2Oq$k0">
                <node concept="13iPFW" id="61urdBygDGM" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdBygEqn" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                </node>
              </node>
              <node concept="2qgKlT" id="61urdBygFj2" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdBygC8J" role="3uHU7B">
              <node concept="2OqwBi" id="61urdBygAJZ" role="3uHU7B">
                <node concept="2OqwBi" id="61urdBygA8k" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdByg_ZH" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdBygArs" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                  </node>
                </node>
                <node concept="2qgKlT" id="61urdBygBbf" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdBygCeQ" role="3uHU7w">
                <property role="Xl_RC" value=" -&gt; " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdByg_Nd" role="3clF45" />
    </node>
    <node concept="13hLZK" id="61urdByg_Fi" role="13h7CW">
      <node concept="3clFbS" id="61urdByg_Fj" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="61urdBygFx9">
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <ref role="13h7C2" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
    <node concept="13i0hz" id="61urdBygFC_" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdBygFCA" role="1B3o_S" />
      <node concept="3clFbS" id="61urdBygFCB" role="3clF47">
        <node concept="3clFbF" id="61urdBygFCC" role="3cqZAp">
          <node concept="3cpWs3" id="61urdBygFCD" role="3clFbG">
            <node concept="2OqwBi" id="61urdBygFCE" role="3uHU7w">
              <node concept="2OqwBi" id="61urdBygFCF" role="2Oq$k0">
                <node concept="13iPFW" id="61urdBygFCG" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdBygFCH" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                </node>
              </node>
              <node concept="2qgKlT" id="61urdBygFCI" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdBygFCJ" role="3uHU7B">
              <node concept="2OqwBi" id="61urdBygFCK" role="3uHU7B">
                <node concept="2OqwBi" id="61urdBygFCL" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdBygFCM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdBygFCN" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                  </node>
                </node>
                <node concept="2qgKlT" id="61urdBygFCO" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdBygFCP" role="3uHU7w">
                <property role="Xl_RC" value=" -&gt; " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdBygFCQ" role="3clF45" />
    </node>
    <node concept="13hLZK" id="61urdBygFxa" role="13h7CW">
      <node concept="3clFbS" id="61urdBygFxb" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7t6qmPMAFg9">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
    <node concept="13hLZK" id="7t6qmPMAFga" role="13h7CW">
      <node concept="3clFbS" id="7t6qmPMAFgb" role="2VODD2">
        <node concept="3clFbF" id="7t6qmPMAFgY" role="3cqZAp">
          <node concept="2OqwBi" id="7t6qmPMAG5d" role="3clFbG">
            <node concept="2OqwBi" id="7t6qmPMAFo$" role="2Oq$k0">
              <node concept="13iPFW" id="7t6qmPMAFgW" role="2Oq$k0" />
              <node concept="3CFZ6_" id="7t6qmPMAFzU" role="2OqNvi">
                <node concept="3CFYIy" id="7t6qmPMAFBI" role="3CFYIz">
                  <ref role="3CFYIx" to="xiqq:7UH$k724uxl" resolve="StateActionsEnabler" />
                </node>
              </node>
            </node>
            <node concept="2DeJnY" id="7t6qmPMAGlM" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6g3sTRf2ZlD">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="13hLZK" id="6g3sTRf2ZlE" role="13h7CW">
      <node concept="3clFbS" id="6g3sTRf2ZlF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6g3sTRf2ZlU" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="6g3sTRf2Zm7" role="1B3o_S" />
      <node concept="3clFbS" id="6g3sTRf2Zm8" role="3clF47">
        <node concept="3cpWs8" id="6g3sTRf2ZRn" role="3cqZAp">
          <node concept="3cpWsn" id="6g3sTRf2ZRo" role="3cpWs9">
            <property role="TrG5h" value="event" />
            <node concept="3Tqbb2" id="6g3sTRf2ZRl" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
            </node>
            <node concept="2OqwBi" id="6g3sTRf2ZRp" role="33vP2m">
              <node concept="13iPFW" id="6g3sTRf2ZRq" role="2Oq$k0" />
              <node concept="3TrEf2" id="2R0WzquTl6x" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6g3sTRf2ZVr" role="3cqZAp">
          <node concept="3cpWsn" id="6g3sTRf2ZVs" role="3cpWs9">
            <property role="TrG5h" value="guardExpression" />
            <node concept="3Tqbb2" id="6g3sTRf2ZVt" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="6g3sTRf2ZVu" role="33vP2m">
              <node concept="13iPFW" id="6g3sTRf2ZVv" role="2Oq$k0" />
              <node concept="3TrEf2" id="6g3sTRf30nP" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g3sTRf2ZpT" role="3cqZAp">
          <node concept="1Wc70l" id="6g3sTRf31Cw" role="3clFbw">
            <node concept="2OqwBi" id="6g3sTRf31NH" role="3uHU7w">
              <node concept="37vLTw" id="6g3sTRf31EZ" role="2Oq$k0">
                <ref role="3cqZAo" node="6g3sTRf2ZVs" resolve="guardExpression" />
              </node>
              <node concept="3w_OXm" id="6g3sTRf328Q" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="6g3sTRf30B2" role="3uHU7B">
              <node concept="37vLTw" id="6g3sTRf2ZRs" role="2Oq$k0">
                <ref role="3cqZAo" node="6g3sTRf2ZRo" resolve="event" />
              </node>
              <node concept="3w_OXm" id="6g3sTRf30Xm" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="6g3sTRf2ZpV" role="3clFbx">
            <node concept="3cpWs6" id="6g3sTRf32cT" role="3cqZAp">
              <node concept="Xl_RD" id="6g3sTRf32je" role="3cqZAk">
                <property role="Xl_RC" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6g3sTRf32Hj" role="3cqZAp">
          <node concept="3cpWsn" id="6g3sTRf32Hm" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="17QB3L" id="6g3sTRf32Hh" role="1tU5fm" />
            <node concept="Xl_RD" id="6g3sTRf32IP" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6g3sTRf32vW" role="3cqZAp">
          <node concept="3clFbS" id="6g3sTRf32vY" role="3clFbx">
            <node concept="3clFbF" id="6g3sTRf33mk" role="3cqZAp">
              <node concept="d57v9" id="6g3sTRf33Vp" role="3clFbG">
                <node concept="2OqwBi" id="6g3sTRf348G" role="37vLTx">
                  <node concept="37vLTw" id="6g3sTRf33VK" role="2Oq$k0">
                    <ref role="3cqZAo" node="6g3sTRf2ZRo" resolve="event" />
                  </node>
                  <node concept="2qgKlT" id="2R0WzquTmB6" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="37vLTw" id="6g3sTRf33mi" role="37vLTJ">
                  <ref role="3cqZAo" node="6g3sTRf32Hm" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6g3sTRf32XL" role="3clFbw">
            <node concept="37vLTw" id="6g3sTRf32J0" role="2Oq$k0">
              <ref role="3cqZAo" node="6g3sTRf2ZRo" resolve="event" />
            </node>
            <node concept="3x8VRR" id="6g3sTRf33k7" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="6g3sTRf34F4" role="3cqZAp">
          <node concept="3clFbS" id="6g3sTRf34F6" role="3clFbx">
            <node concept="3clFbF" id="6g3sTRf35l4" role="3cqZAp">
              <node concept="d57v9" id="6g3sTRf35U9" role="3clFbG">
                <node concept="3cpWs3" id="6g3sTRf385z" role="37vLTx">
                  <node concept="Xl_RD" id="6g3sTRf38dI" role="3uHU7w">
                    <property role="Xl_RC" value="]" />
                  </node>
                  <node concept="3cpWs3" id="6g3sTRf36Gn" role="3uHU7B">
                    <node concept="Xl_RD" id="6g3sTRf35Uu" role="3uHU7B">
                      <property role="Xl_RC" value="[" />
                    </node>
                    <node concept="2OqwBi" id="6g3sTRf36ST" role="3uHU7w">
                      <node concept="37vLTw" id="6g3sTRf36GN" role="2Oq$k0">
                        <ref role="3cqZAo" node="6g3sTRf2ZVs" resolve="guardExpression" />
                      </node>
                      <node concept="2qgKlT" id="6g3sTRf372N" role="2OqNvi">
                        <ref role="37wK5l" node="3tDlCSlWdit" resolve="xmlValuePresentation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6g3sTRf35l2" role="37vLTJ">
                  <ref role="3cqZAo" node="6g3sTRf32Hm" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6g3sTRf34ZQ" role="3clFbw">
            <node concept="37vLTw" id="6g3sTRf34R9" role="2Oq$k0">
              <ref role="3cqZAo" node="6g3sTRf2ZVs" resolve="guardExpression" />
            </node>
            <node concept="3x8VRR" id="6g3sTRf35j0" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="6g3sTRf38HL" role="3cqZAp">
          <node concept="37vLTw" id="6g3sTRf38Wg" role="3cqZAk">
            <ref role="3cqZAo" node="6g3sTRf32Hm" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6g3sTRf2Zm9" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1zB5ET5xzqc">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:1zB5ET5xzpM" resolve="AlgorithmBody" />
    <node concept="13i0hz" id="1zB5ET5xzrF" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="languageType" />
      <node concept="3Tm1VV" id="1zB5ET5xzrG" role="1B3o_S" />
      <node concept="17QB3L" id="1zB5ET5xzrV" role="3clF45" />
      <node concept="3clFbS" id="1zB5ET5xzrI" role="3clF47" />
    </node>
    <node concept="13i0hz" id="1zB5ET5xzsQ" role="13h7CS">
      <property role="TrG5h" value="languageTypeSafe" />
      <node concept="3Tm1VV" id="1zB5ET5xzsR" role="1B3o_S" />
      <node concept="17QB3L" id="1zB5ET5xztq" role="3clF45" />
      <node concept="3clFbS" id="1zB5ET5xzsT" role="3clF47">
        <node concept="SfApY" id="1zB5ET5xzu5" role="3cqZAp">
          <node concept="3clFbS" id="1zB5ET5xzu6" role="SfCbr">
            <node concept="3cpWs6" id="1zB5ET5xzxz" role="3cqZAp">
              <node concept="BsUDl" id="1zB5ET5xzy1" role="3cqZAk">
                <ref role="37wK5l" node="1zB5ET5xzrF" resolve="languageType" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1zB5ET5xzu7" role="TEbGg">
            <node concept="3cpWsn" id="1zB5ET5xzu8" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1zB5ET5xzuv" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="1zB5ET5xzua" role="TDEfX">
              <node concept="3cpWs6" id="1zB5ET5xzyv" role="3cqZAp">
                <node concept="Xl_RD" id="1zB5ET5xzz7" role="3cqZAk">
                  <property role="Xl_RC" value="&lt;unknown&gt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1zB5ET5xzqd" role="13h7CW">
      <node concept="3clFbS" id="1zB5ET5xzqe" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1zB5ET5$GCj">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
    <node concept="13hLZK" id="1zB5ET5$GCk" role="13h7CW">
      <node concept="3clFbS" id="1zB5ET5$GCl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1zB5ET5$GCu" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="languageType" />
      <ref role="13i0hy" node="1zB5ET5xzrF" resolve="languageType" />
      <node concept="3Tm1VV" id="1zB5ET5$GCv" role="1B3o_S" />
      <node concept="3clFbS" id="1zB5ET5$GCy" role="3clF47">
        <node concept="3cpWs6" id="1zB5ET5$GCK" role="3cqZAp">
          <node concept="Xl_RD" id="1zB5ET5$GCY" role="3cqZAk">
            <property role="Xl_RC" value="ST" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1zB5ET5$GCz" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="37fub3vnbaH">
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <ref role="13h7C2" to="xiqq:37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="13hLZK" id="37fub3vnbaI" role="13h7CW">
      <node concept="3clFbS" id="37fub3vnbaJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="37fub3vnbb8" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="37fub3vnbbl" role="1B3o_S" />
      <node concept="3clFbS" id="37fub3vnbbm" role="3clF47">
        <node concept="3cpWs6" id="37fub3vnbjk" role="3cqZAp">
          <node concept="2OqwBi" id="37fub3vnc4w" role="3cqZAk">
            <node concept="2OqwBi" id="37fub3vnbsT" role="2Oq$k0">
              <node concept="13iPFW" id="37fub3vnbjX" role="2Oq$k0" />
              <node concept="3TrEf2" id="37fub3vnbBz" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="37fub3vncCk" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="37fub3vnbbn" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="75nMhMfIPx8">
    <property role="3GE5qa" value="fbnetwork.connections.adapter" />
    <ref role="13h7C2" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
    <node concept="13hLZK" id="75nMhMfIPx9" role="13h7CW">
      <node concept="3clFbS" id="75nMhMfIPxa" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="75nMhMfIPxj" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="75nMhMfIPxw" role="1B3o_S" />
      <node concept="3clFbS" id="75nMhMfIPxx" role="3clF47">
        <node concept="3clFbF" id="75nMhMfIPDu" role="3cqZAp">
          <node concept="3cpWs3" id="75nMhMfISlL" role="3clFbG">
            <node concept="2OqwBi" id="75nMhMfITKg" role="3uHU7w">
              <node concept="2OqwBi" id="75nMhMfISEb" role="2Oq$k0">
                <node concept="13iPFW" id="75nMhMfISuy" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMfITev" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="75nMhMfIUpM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="75nMhMfIRGY" role="3uHU7B">
              <node concept="2OqwBi" id="75nMhMfIQpV" role="3uHU7B">
                <node concept="2OqwBi" id="75nMhMfIPMm" role="2Oq$k0">
                  <node concept="13iPFW" id="75nMhMfIPDp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="75nMhMfIPWY" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="functionBlock" />
                  </node>
                </node>
                <node concept="3TrcHB" id="75nMhMfIQWY" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="Xl_RD" id="75nMhMfIRLp" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="75nMhMfIPxy" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="75nMhMfIWCd">
    <property role="3GE5qa" value="fbnetwork.connections.adapter" />
    <ref role="13h7C2" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
    <node concept="13i0hz" id="75nMhMfIWCo" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="75nMhMfIWCp" role="1B3o_S" />
      <node concept="3clFbS" id="75nMhMfIWCq" role="3clF47">
        <node concept="3clFbF" id="75nMhMfIWCr" role="3cqZAp">
          <node concept="3cpWs3" id="75nMhMfIZLy" role="3clFbG">
            <node concept="3cpWs3" id="75nMhMfJ0_U" role="3uHU7B">
              <node concept="Xl_RD" id="75nMhMfJ0_X" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="2OqwBi" id="75nMhMfIYtP" role="3uHU7B">
                <node concept="2OqwBi" id="75nMhMfIXAK" role="2Oq$k0">
                  <node concept="13iPFW" id="75nMhMfIXsu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="75nMhMfIYaq" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="functionBlock" />
                  </node>
                </node>
                <node concept="3TrcHB" id="75nMhMfIZ1c" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="75nMhMfIWCs" role="3uHU7w">
              <node concept="2OqwBi" id="75nMhMfIWCt" role="2Oq$k0">
                <node concept="13iPFW" id="75nMhMfIWCu" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMfIWCv" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="75nMhMfIWCw" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="75nMhMfIWCx" role="3clF45" />
    </node>
    <node concept="13hLZK" id="75nMhMfIWCe" role="13h7CW">
      <node concept="3clFbS" id="75nMhMfIWCf" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="75nMhMfQOuT">
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <ref role="13h7C2" to="xiqq:75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="13hLZK" id="75nMhMfQOuU" role="13h7CW">
      <node concept="3clFbS" id="75nMhMfQOuV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="75nMhMfQOvk" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="75nMhMfQOvx" role="1B3o_S" />
      <node concept="3clFbS" id="75nMhMfQOvy" role="3clF47">
        <node concept="3clFbF" id="75nMhMfQOBB" role="3cqZAp">
          <node concept="2OqwBi" id="75nMhMfQPx0" role="3clFbG">
            <node concept="2OqwBi" id="75nMhMfQOKn" role="2Oq$k0">
              <node concept="13iPFW" id="75nMhMfQOBy" role="2Oq$k0" />
              <node concept="3TrEf2" id="75nMhMfQPcr" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="75nMhMfQQ41" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="75nMhMfQOvz" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDukYcj">
    <property role="3GE5qa" value="fbnetwork" />
    <ref role="13h7C2" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
    <node concept="13i0hz" id="5L1OxDukYcu" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDukYcv" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYcx" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYdp" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYdN" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYdO" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYdP" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYdQ" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYe7" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDukYe8" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYe9" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYea" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYen" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYeo" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYep" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYeq" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13hLZK" id="5L1OxDukYck" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDukYcl" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDukYif">
    <property role="3GE5qa" value="fbnetwork" />
    <ref role="13h7C2" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
    <node concept="13hLZK" id="5L1OxDukYig" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDukYih" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5L1OxDukYiq" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDukYir" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYiu" role="3clF47">
        <node concept="3clFbF" id="5L1OxDukYjz" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDukZbV" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDukYtR" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDukYjy" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDukYGj" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDukZud" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYiv" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiw" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYix" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYi$" role="3clF47">
        <node concept="3clFbF" id="5L1OxDukZEe" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDukZEf" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDukZEg" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDukZEh" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDukZEi" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDul061" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYi_" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiA" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDukYiB" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYiE" role="3clF47">
        <node concept="3clFbF" id="5L1OxDul0ax" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDul1qm" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDul0kP" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDul0aw" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDul0Sx" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDul2fb" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYiF" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiG" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYiH" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYiK" role="3clF47">
        <node concept="3clFbF" id="5L1OxDul2jF" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDul3eg" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDul2tZ" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDul2jE" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDul2Gr" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDul435" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYiL" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDuoomP">
    <property role="3GE5qa" value="adapter" />
    <ref role="13h7C2" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
    <node concept="13hLZK" id="5L1OxDuoomQ" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDuoomR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5L1OxDuoon0" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDuoon1" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoon4" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuooo9" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuopiI" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuooyt" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuooo8" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuooKT" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuop_0" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoon5" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuoon6" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuoon7" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoona" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuopL1" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuopL2" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuopL3" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuopL4" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuopL5" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuoqkm" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoonb" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuoonc" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDuoond" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoong" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuoqKF" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuoqKG" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuoqKH" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuoqKI" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuoqKJ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuosae" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoonh" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuooni" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuoonj" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoonm" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuoqoP" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuoqoQ" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuoqoR" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuoqoS" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuoqoT" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuorB8" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoonn" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDuosf6">
    <property role="3GE5qa" value="adapter" />
    <ref role="13h7C2" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
    <node concept="13i0hz" id="5L1OxDuosfh" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDuosfi" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosfj" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfk" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfl" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfm" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfn" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfo" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuosHp" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosfq" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuosfr" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuosfs" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosft" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfu" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfv" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfw" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfx" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfy" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuotgm" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosf$" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuosf_" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDuosfA" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosfB" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfC" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfD" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfE" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfF" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfG" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuouek" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosfI" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuosfJ" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuosfK" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosfL" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfM" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfN" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfO" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfP" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfQ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuouDJ" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosfS" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13hLZK" id="5L1OxDuosf7" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDuosf8" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHjRVNg">
    <property role="3GE5qa" value="fbnetwork" />
    <ref role="13h7C2" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="13i0hz" id="2lwHqHjRVNr" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextComponents" />
      <node concept="3Tm1VV" id="2lwHqHjRVNs" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRVNN" role="3clF45">
        <ref role="2I9WkF" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRVNu" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRVOC" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRVOA" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRWVt" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRWZs" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRZ6V" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHjRZ6W" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRZ6X" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRZ6Y" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRZ6Z" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRZ70" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRZ71" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRZ72" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRX1R" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextDataDestinations" />
      <node concept="3Tm1VV" id="2lwHqHjRX1S" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRX1T" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRX1U" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRX1V" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRX1W" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRX1X" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRX1Y" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRZ9n" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextEventSources" />
      <node concept="3Tm1VV" id="2lwHqHjRZ9o" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRZf5" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRZ9q" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRZko" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRZkp" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRZkq" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRZkr" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRZn8" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextEventDestinations" />
      <node concept="3Tm1VV" id="2lwHqHjRZn9" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRZna" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRZnb" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRZnc" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRZnd" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRZne" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRZnf" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHk$skt" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="networkPrototype" />
      <node concept="3Tm1VV" id="2lwHqHk$sku" role="1B3o_S" />
      <node concept="3Tqbb2" id="2lwHqHk$slC" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
      <node concept="3clFbS" id="2lwHqHk$skw" role="3clF47">
        <node concept="3cpWs6" id="2lwHqHk$snr" role="3cqZAp">
          <node concept="10Nm6u" id="2lwHqHk$snU" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkaoWI" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getNetworkPaletteEntries" />
      <node concept="3Tm1VV" id="2lwHqHkaoWJ" role="1B3o_S" />
      <node concept="A3Dl8" id="2lwHqHknt0v" role="3clF45">
        <node concept="3uibUv" id="2lwHqHknt0x" role="A3Ik2">
          <ref role="3uigEE" to="nkm5:KILMQGnt6a" resolve="IPaletteEntry" />
        </node>
      </node>
      <node concept="3clFbS" id="2lwHqHkaoWL" role="3clF47">
        <node concept="3SKdUt" id="2lwHqHkatRz" role="3cqZAp">
          <node concept="3SKdUq" id="2lwHqHkatR$" role="3SKWNk">
            <property role="3SKdUp" value="FIXME need proper abstraction" />
          </node>
        </node>
        <node concept="3cpWs6" id="2lwHqHkatRV" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHkatSw" role="3cqZAk">
            <node concept="Tc6Ow" id="2lwHqHkau2E" role="2ShVmc">
              <node concept="3uibUv" id="2lwHqHkaum7" role="HW$YZ">
                <ref role="3uigEE" to="nkm5:KILMQGnt6a" resolve="IPaletteEntry" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2lwHqHjRVNh" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHjRVNi" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHkaB5C">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="13h7C2" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="13hLZK" id="2lwHqHkaB5D" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHkaB5E" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHkaB63" role="13h7CS">
      <property role="TrG5h" value="contextComponents" />
      <ref role="13i0hy" node="2lwHqHjRVNr" resolve="contextComponents" />
      <node concept="3Tm1VV" id="2lwHqHkaB64" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkaB6b" role="3clF47">
        <node concept="3cpWs8" id="2lwHqHkb1qo" role="3cqZAp">
          <node concept="3cpWsn" id="2lwHqHkb1qp" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="2lwHqHkb1qg" role="1tU5fm">
              <node concept="3Tqbb2" id="2lwHqHkb1qj" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
            </node>
            <node concept="2ShNRf" id="2lwHqHkb1qq" role="33vP2m">
              <node concept="Tc6Ow" id="2lwHqHkb1qr" role="2ShVmc">
                <node concept="3Tqbb2" id="2lwHqHkb1qs" role="HW$YZ">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2lwHqHkb14C" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkb2_5" role="3clFbG">
            <node concept="37vLTw" id="2lwHqHkb1qt" role="2Oq$k0">
              <ref role="3cqZAo" node="2lwHqHkb1qp" resolve="res" />
            </node>
            <node concept="X8dFx" id="2lwHqHkbjwS" role="2OqNvi">
              <node concept="2OqwBi" id="2lwHqHkbjwU" role="25WWJ7">
                <node concept="13iPFW" id="2lwHqHkbjwV" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2lwHqHkbjwW" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2lwHqHkb7Ga" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkb98H" role="3clFbG">
            <node concept="37vLTw" id="2lwHqHkb7G8" role="2Oq$k0">
              <ref role="3cqZAo" node="2lwHqHkb1qp" resolve="res" />
            </node>
            <node concept="X8dFx" id="2lwHqHkblvv" role="2OqNvi">
              <node concept="2OqwBi" id="2lwHqHkblvx" role="25WWJ7">
                <node concept="13iPFW" id="2lwHqHkblvy" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2lwHqHkblvz" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2lwHqHkbfKa" role="3cqZAp">
          <node concept="37vLTw" id="2lwHqHkbgyN" role="3cqZAk">
            <ref role="3cqZAo" node="2lwHqHkb1qp" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkaB6c" role="3clF45">
        <ref role="2I9WkF" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkaB6h" role="13h7CS">
      <property role="TrG5h" value="contextDataSources" />
      <ref role="13i0hy" node="2lwHqHjRZ6V" resolve="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHkaB6i" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkaB6p" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkaJi1" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkaJi2" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkaJi3" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkaKie" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkaB6q" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkaB6v" role="13h7CS">
      <property role="TrG5h" value="contextDataDestinations" />
      <ref role="13i0hy" node="2lwHqHjRX1R" resolve="contextDataDestinations" />
      <node concept="3Tm1VV" id="2lwHqHkaB6w" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkaB6B" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkaIgv" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkaIgw" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkaIgx" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkaJ7A" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkaB6C" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkaB6H" role="13h7CS">
      <property role="TrG5h" value="contextEventSources" />
      <ref role="13i0hy" node="2lwHqHjRZ9n" resolve="contextEventSources" />
      <node concept="3Tm1VV" id="2lwHqHkaB6I" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkaB6P" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkaHy5" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkaHy6" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkaHy7" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkaI64" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkaB6Q" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkaB6V" role="13h7CS">
      <property role="TrG5h" value="contextEventDestinations" />
      <ref role="13i0hy" node="2lwHqHjRZn8" resolve="contextEventDestinations" />
      <node concept="3Tm1VV" id="2lwHqHkaB6W" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkaB73" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkaGBZ" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkaGNZ" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkaGBU" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkaHvj" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkaB74" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkaB79" role="13h7CS">
      <property role="TrG5h" value="getNetworkPaletteEntries" />
      <ref role="13i0hy" node="2lwHqHkaoWI" resolve="getNetworkPaletteEntries" />
      <node concept="3Tm1VV" id="2lwHqHkaB7a" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkaB7k" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRDMM" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRDMN" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRDMO" role="2ShVmc">
              <node concept="3uibUv" id="2lwHqHjRDMP" role="HW$YZ">
                <ref role="3uigEE" to="nkm5:KILMQGnt6a" resolve="IPaletteEntry" />
              </node>
              <node concept="2ShNRf" id="2lwHqHjRDMQ" role="HW$Y0">
                <node concept="YeOm9" id="2lwHqHjRDMR" role="2ShVmc">
                  <node concept="1Y3b0j" id="2lwHqHjRDMS" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="nkm5:7h3F9h$_H4y" resolve="AbstractPaletteEntry" />
                    <node concept="3Tm1VV" id="2lwHqHjRDMT" role="1B3o_S" />
                    <node concept="3clFb_" id="2lwHqHjRDMU" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getText" />
                      <node concept="17QB3L" id="2lwHqHjRDMV" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDMW" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDMX" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDMY" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDMZ" role="3cqZAp">
                          <node concept="Xl_RD" id="2lwHqHjRDN0" role="3clFbG">
                            <property role="Xl_RC" value="Input event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2lwHqHjRDN1" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tqbb2" id="2lwHqHjRDN2" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDN3" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDN4" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDN5" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDN6" role="3cqZAp">
                          <node concept="2OqwBi" id="2lwHqHjRDN7" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHjRDN8" role="2Oq$k0">
                              <node concept="3Tsc0h" id="2lwHqHjRDNa" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                              </node>
                              <node concept="13iPFW" id="2lwHqHkaCXJ" role="2Oq$k0" />
                            </node>
                            <node concept="WFELt" id="2lwHqHjRDNb" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2lwHqHjRDNc" role="HW$Y0">
                <node concept="YeOm9" id="2lwHqHjRDNd" role="2ShVmc">
                  <node concept="1Y3b0j" id="2lwHqHjRDNe" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="nkm5:7h3F9h$_H4y" resolve="AbstractPaletteEntry" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2lwHqHjRDNf" role="1B3o_S" />
                    <node concept="3clFb_" id="2lwHqHjRDNg" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getText" />
                      <node concept="17QB3L" id="2lwHqHjRDNh" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDNi" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDNj" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDNk" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDNl" role="3cqZAp">
                          <node concept="Xl_RD" id="2lwHqHjRDNm" role="3clFbG">
                            <property role="Xl_RC" value="Output event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2lwHqHjRDNn" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tqbb2" id="2lwHqHjRDNo" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDNp" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDNq" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDNr" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDNs" role="3cqZAp">
                          <node concept="2OqwBi" id="2lwHqHjRDNt" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHjRDNu" role="2Oq$k0">
                              <node concept="3Tsc0h" id="2lwHqHjRDNw" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                              </node>
                              <node concept="13iPFW" id="2lwHqHkaEwC" role="2Oq$k0" />
                            </node>
                            <node concept="WFELt" id="2lwHqHjRDNx" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2lwHqHjRDNy" role="HW$Y0">
                <node concept="YeOm9" id="2lwHqHjRDNz" role="2ShVmc">
                  <node concept="1Y3b0j" id="2lwHqHjRDN$" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="nkm5:7h3F9h$_H4y" resolve="AbstractPaletteEntry" />
                    <node concept="3Tm1VV" id="2lwHqHjRDN_" role="1B3o_S" />
                    <node concept="3clFb_" id="2lwHqHjRDNA" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getText" />
                      <node concept="17QB3L" id="2lwHqHjRDNB" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDNC" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDND" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDNE" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDNF" role="3cqZAp">
                          <node concept="Xl_RD" id="2lwHqHjRDNG" role="3clFbG">
                            <property role="Xl_RC" value="Input variable" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2lwHqHjRDNH" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tqbb2" id="2lwHqHjRDNI" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDNJ" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDNK" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDNL" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDNM" role="3cqZAp">
                          <node concept="2OqwBi" id="2lwHqHjRDNN" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHjRDNO" role="2Oq$k0">
                              <node concept="3Tsc0h" id="2lwHqHjRDNQ" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                              </node>
                              <node concept="13iPFW" id="2lwHqHkaFg7" role="2Oq$k0" />
                            </node>
                            <node concept="WFELt" id="2lwHqHjRDNR" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2lwHqHjRDNS" role="HW$Y0">
                <node concept="YeOm9" id="2lwHqHjRDNT" role="2ShVmc">
                  <node concept="1Y3b0j" id="2lwHqHjRDNU" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="nkm5:7h3F9h$_H4y" resolve="AbstractPaletteEntry" />
                    <node concept="3Tm1VV" id="2lwHqHjRDNV" role="1B3o_S" />
                    <node concept="3clFb_" id="2lwHqHjRDNW" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getText" />
                      <node concept="17QB3L" id="2lwHqHjRDNX" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDNY" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDNZ" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDO0" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDO1" role="3cqZAp">
                          <node concept="Xl_RD" id="2lwHqHjRDO2" role="3clFbG">
                            <property role="Xl_RC" value="Output variable" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2lwHqHjRDO3" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tqbb2" id="2lwHqHjRDO4" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHjRDO5" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHjRDO6" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHjRDO7" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHjRDO8" role="3cqZAp">
                          <node concept="2OqwBi" id="2lwHqHjRDO9" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHjRDOa" role="2Oq$k0">
                              <node concept="3Tsc0h" id="2lwHqHjRDOc" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                              </node>
                              <node concept="13iPFW" id="2lwHqHkaG1o" role="2Oq$k0" />
                            </node>
                            <node concept="WFELt" id="2lwHqHjRDOd" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2lwHqHkaB7l" role="3clF45">
        <node concept="3uibUv" id="2lwHqHkaB7m" role="_ZDj9">
          <ref role="3uigEE" to="nkm5:KILMQGnt6a" resolve="IPaletteEntry" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHkn6uT">
    <property role="3GE5qa" value="resources" />
    <ref role="13h7C2" to="xiqq:2lwHqHjKhl7" resolve="ResourceType" />
    <node concept="13hLZK" id="2lwHqHkn6uU" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHkn6uV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHkn6v4" role="13h7CS">
      <property role="TrG5h" value="contextDataSources" />
      <ref role="13i0hy" node="2lwHqHjRZ6V" resolve="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHkn6v5" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkn6vc" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkn6zq" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkn6HI" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkn6zp" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkn7hq" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkn6vd" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHkn7pA" role="13h7CS">
      <property role="TrG5h" value="getNetworkPaletteEntries" />
      <ref role="13i0hy" node="2lwHqHkaoWI" resolve="getNetworkPaletteEntries" />
      <node concept="3Tm1VV" id="2lwHqHkn7pB" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkn7pL" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkn7yc" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHkn7y2" role="3clFbG">
            <node concept="2HTt$P" id="2lwHqHkn7Gb" role="2ShVmc">
              <node concept="3uibUv" id="2lwHqHkn7IX" role="2HTBi0">
                <ref role="3uigEE" to="nkm5:KILMQGnt6a" resolve="IPaletteEntry" />
              </node>
              <node concept="2ShNRf" id="2lwHqHkn7LF" role="2HTEbv">
                <node concept="YeOm9" id="2lwHqHkn7Yc" role="2ShVmc">
                  <node concept="1Y3b0j" id="2lwHqHkn7Yf" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="nkm5:7h3F9h$_H4y" resolve="AbstractPaletteEntry" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2lwHqHkn7Yg" role="1B3o_S" />
                    <node concept="3clFb_" id="2lwHqHkn7Yl" role="jymVt">
                      <property role="TrG5h" value="getText" />
                      <node concept="17QB3L" id="2lwHqHkn7Ym" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHkn7Yn" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHkn7Yp" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHkn7Yq" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHkn8am" role="3cqZAp">
                          <node concept="Xl_RD" id="2lwHqHkn8al" role="3clFbG">
                            <property role="Xl_RC" value="Parameter" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2lwHqHkn7Ys" role="jymVt">
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tqbb2" id="2lwHqHkn7Yt" role="3clF45" />
                      <node concept="3Tm1VV" id="2lwHqHkn7Yu" role="1B3o_S" />
                      <node concept="2AHcQZ" id="2lwHqHkn7Yw" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3clFbS" id="2lwHqHkn7Yx" role="3clF47">
                        <node concept="3clFbF" id="2lwHqHkna2j" role="3cqZAp">
                          <node concept="2OqwBi" id="2lwHqHkndWV" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHknagg" role="2Oq$k0">
                              <node concept="13iPFW" id="2lwHqHknb8M" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="2lwHqHknbnb" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                              </node>
                            </node>
                            <node concept="WFELt" id="2lwHqHknlFw" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="2lwHqHknuhP" role="3clF45">
        <node concept="3uibUv" id="2lwHqHknuhR" role="A3Ik2">
          <ref role="3uigEE" to="nkm5:KILMQGnt6a" resolve="IPaletteEntry" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHk$fut">
    <property role="3GE5qa" value="resources" />
    <ref role="13h7C2" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="13hLZK" id="2lwHqHk$fuu" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHk$fuv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHk$fuC" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="2lwHqHk$fuD" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHk$fuM" role="3clF47">
        <node concept="3clFbJ" id="2lwHqHk$f_Z" role="3cqZAp">
          <node concept="3clFbS" id="2lwHqHk$fA1" role="3clFbx">
            <node concept="3cpWs6" id="2lwHqHk$g$q" role="3cqZAp">
              <node concept="2YIFZM" id="2lwHqHk$iNa" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="2lwHqHk$iNb" role="37wK5m">
                  <node concept="2OqwBi" id="2lwHqHk$iNc" role="2Oq$k0">
                    <node concept="13iPFW" id="2lwHqHk$iNd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2lwHqHk$iNe" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2lwHqHk$iNf" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2lwHqHk$fOc" role="3clFbw">
            <node concept="37vLTw" id="2lwHqHk$fAm" role="2Oq$k0">
              <ref role="3cqZAo" node="2lwHqHk$fuN" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="2lwHqHk$gu8" role="2OqNvi">
              <node concept="chp4Y" id="2lwHqHk$gxe" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2lwHqHk$j1f" role="3cqZAp">
          <node concept="10Nm6u" id="2lwHqHk$j89" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="2lwHqHk$fuN" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="2lwHqHk$fuO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2lwHqHk$fuP" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="2lwHqHk$fuQ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2lwHqHk$fuR" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHk$_sz" role="13h7CS">
      <property role="TrG5h" value="networkPrototype" />
      <ref role="13i0hy" node="2lwHqHk$skt" resolve="networkPrototype" />
      <node concept="3Tm1VV" id="2lwHqHk$_s$" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHk$_sD" role="3clF47">
        <node concept="3clFbF" id="2lwHqHk$_Bl" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHk$_KV" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHk$_Bk" role="2Oq$k0" />
            <node concept="3TrEf2" id="2lwHqHk$Aor" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2lwHqHk$_sE" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHkAfsO">
    <property role="3GE5qa" value="devices" />
    <ref role="13h7C2" to="xiqq:2lwHqHkyEL8" resolve="DeviceType" />
    <node concept="13hLZK" id="2lwHqHkAfsP" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHkAfsQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHkAftn" role="13h7CS">
      <property role="TrG5h" value="contextDataSources" />
      <ref role="13i0hy" node="2lwHqHjRZ6V" resolve="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHkAfto" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkAftv" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkAfDk" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkAfNC" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkAfDf" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkBXqW" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkAftw" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
      </node>
    </node>
  </node>
</model>

