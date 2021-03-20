package org.fbme.lib.iec61499.instances;


import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface NetworkInstance extends Instance {

    @NotNull FBNetwork getNetworkDeclaration();

    @Nullable FunctionBlockInstance getChild(@NotNull FunctionBlockDeclarationBase component);

    static @NotNull NetworkInstance createForCompositeFBType(@NotNull CompositeFBTypeDeclaration compositeFBType) {
        return new RegularNetworkInstance(null, compositeFBType.getNetwork(), compositeFBType);
    }

    static @NotNull NetworkInstance createForSubapplicationType(@NotNull SubapplicationTypeDeclaration subapplicationType) {
        return new RegularNetworkInstance(null, subapplicationType.getNetwork(), subapplicationType);
    }

    static @NotNull NetworkInstance createForResourceType(@NotNull ResourceTypeDeclaration resourceType) {
        return new RegularNetworkInstance(null, resourceType.getNetwork(), resourceType);
    }

    static @NotNull NetworkInstance createForImplicitResourceOfDeviceType(@NotNull DeviceTypeDeclaration deviceType) {
        return new RegularNetworkInstance(null, deviceType.getNetwork(), deviceType);
    }

    static @NotNull NetworkInstance createForApplication(@NotNull ApplicationDeclaration application) {
        return new RegularNetworkInstance(null, application.getNetwork(), application);
    }

    static @NotNull NetworkInstance createForResource(@NotNull ResourceDeclaration resource) {
        return new RegularNetworkInstance(null, resource.getNetwork(), resource);
    }

    static @NotNull NetworkInstance createForImplicitResourceOfDevice(@NotNull DeviceDeclaration device) {
        return new RegularNetworkInstance(null, device.getNetwork(), device);
    }

    static @NotNull NetworkInstance createForDeclaration(@NotNull Declaration declaration) {
        Declaration decl = declaration;
        if (declaration instanceof FunctionBlockDeclarationBase) {
            decl = ((FunctionBlockDeclarationBase) declaration).getType().getDeclaration();
        }
        if (decl instanceof CompositeFBTypeDeclaration) {
            CompositeFBTypeDeclaration compositeFBType = ((CompositeFBTypeDeclaration) decl);
            return createForCompositeFBType(compositeFBType);
        } else if (decl instanceof SubapplicationTypeDeclaration) {
            SubapplicationTypeDeclaration subappType = ((SubapplicationTypeDeclaration) decl);
            return createForSubapplicationType(subappType);
        } else if (decl instanceof ResourceTypeDeclaration) {
            ResourceTypeDeclaration resourceType = ((ResourceTypeDeclaration) decl);
            return createForResourceType(resourceType);
        } else if (decl instanceof DeviceTypeDeclaration) {
            DeviceTypeDeclaration deviceType = ((DeviceTypeDeclaration) decl);
            return createForImplicitResourceOfDeviceType(deviceType);
        } else if (decl instanceof ApplicationDeclaration) {
            ApplicationDeclaration app = ((ApplicationDeclaration) decl);
            return createForApplication(app);
        } else if (decl instanceof ResourceDeclaration) {
            ResourceDeclaration resource = ((ResourceDeclaration) decl);
            return createForResource(resource);
        } else if (decl instanceof DeviceDeclaration) {
            DeviceDeclaration device = ((DeviceDeclaration) decl);
            return createForImplicitResourceOfDevice(device);
        }
        throw new IllegalArgumentException("Unknown kind of declaration: " + decl.getClass());
    }
}
