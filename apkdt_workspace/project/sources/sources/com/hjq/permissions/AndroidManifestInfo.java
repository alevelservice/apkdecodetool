package com.hjq.permissions;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class AndroidManifestInfo {
    ApplicationInfo applicationInfo;
    String packageName;
    UsesSdkInfo usesSdkInfo;
    final List<PermissionInfo> permissionInfoList = new ArrayList();
    final List<ActivityInfo> activityInfoList = new ArrayList();
    final List<ServiceInfo> serviceInfoList = new ArrayList();

    /* loaded from: classes.dex */
    static final class ActivityInfo {
        String name;
        boolean supportsPictureInPicture;
    }

    /* loaded from: classes.dex */
    static final class ApplicationInfo {
        String name;
        boolean requestLegacyExternalStorage;
    }

    /* loaded from: classes.dex */
    static final class ServiceInfo {
        String name;
        String permission;
    }

    /* loaded from: classes.dex */
    static final class UsesSdkInfo {
        int minSdkVersion;
    }

    /* loaded from: classes.dex */
    static final class PermissionInfo {
        private static final int REQUESTED_PERMISSION_NEVER_FOR_LOCATION;
        int maxSdkVersion;
        String name;
        int usesPermissionFlags;

        static {
            if (AndroidVersion.isAndroid12()) {
                REQUESTED_PERMISSION_NEVER_FOR_LOCATION = 65536;
            } else {
                REQUESTED_PERMISSION_NEVER_FOR_LOCATION = 65536;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean neverForLocation() {
            return (this.usesPermissionFlags & REQUESTED_PERMISSION_NEVER_FOR_LOCATION) != 0;
        }
    }
}
