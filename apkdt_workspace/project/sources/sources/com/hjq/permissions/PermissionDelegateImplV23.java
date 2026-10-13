package com.hjq.permissions;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.provider.Settings;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class PermissionDelegateImplV23 extends PermissionDelegateImplV21 {
    @Override // com.hjq.permissions.PermissionDelegateImplV21, com.hjq.permissions.PermissionDelegateImplV19, com.hjq.permissions.PermissionDelegateImplV18, com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public boolean isGrantedPermission(Context context, String str) {
        if (!PermissionHelper.isSpecialPermission(str)) {
            if (PermissionUtils.equalsPermission(str, Permission.GET_INSTALLED_APPS)) {
                return GetInstalledAppsPermissionCompat.isGrantedPermission(context);
            }
            if (AndroidVersion.isAndroid6()) {
                return PermissionUtils.checkSelfPermission(context, str);
            }
            return true;
        }
        if (PermissionUtils.equalsPermission(str, Permission.SYSTEM_ALERT_WINDOW)) {
            return WindowPermissionCompat.isGrantedPermission(context);
        }
        if (PermissionUtils.equalsPermission(str, Permission.WRITE_SETTINGS)) {
            if (AndroidVersion.isAndroid6()) {
                return isGrantedSettingPermission(context);
            }
            return true;
        }
        if (PermissionUtils.equalsPermission(str, Permission.ACCESS_NOTIFICATION_POLICY)) {
            if (AndroidVersion.isAndroid6()) {
                return isGrantedNotDisturbPermission(context);
            }
            return true;
        }
        if (PermissionUtils.equalsPermission(str, Permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)) {
            if (AndroidVersion.isAndroid6()) {
                return isGrantedIgnoreBatteryPermission(context);
            }
            return true;
        }
        return super.isGrantedPermission(context, str);
    }

    @Override // com.hjq.permissions.PermissionDelegateImplV21, com.hjq.permissions.PermissionDelegateImplV19, com.hjq.permissions.PermissionDelegateImplV18, com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public boolean isDoNotAskAgainPermission(Activity activity, String str) {
        if (!PermissionHelper.isSpecialPermission(str)) {
            if (PermissionUtils.equalsPermission(str, Permission.GET_INSTALLED_APPS)) {
                return GetInstalledAppsPermissionCompat.isDoNotAskAgainPermission(activity);
            }
            return (!AndroidVersion.isAndroid6() || PermissionUtils.checkSelfPermission(activity, str) || PermissionUtils.shouldShowRequestPermissionRationale(activity, str)) ? false : true;
        }
        if (PermissionUtils.containsPermission(new String[]{Permission.SYSTEM_ALERT_WINDOW, Permission.WRITE_SETTINGS, Permission.ACCESS_NOTIFICATION_POLICY, Permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS}, str)) {
            return false;
        }
        return super.isDoNotAskAgainPermission(activity, str);
    }

    @Override // com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public boolean recheckPermissionResult(Context context, String str, boolean z) {
        if (PermissionUtils.equalsPermission(str, Permission.GET_INSTALLED_APPS)) {
            return isGrantedPermission(context, str);
        }
        return super.recheckPermissionResult(context, str, z);
    }

    @Override // com.hjq.permissions.PermissionDelegateImplV21, com.hjq.permissions.PermissionDelegateImplV19, com.hjq.permissions.PermissionDelegateImplV18, com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public Intent getPermissionSettingIntent(Context context, String str) {
        if (PermissionUtils.equalsPermission(str, Permission.GET_INSTALLED_APPS)) {
            return GetInstalledAppsPermissionCompat.getPermissionIntent(context);
        }
        if (PermissionUtils.equalsPermission(str, Permission.SYSTEM_ALERT_WINDOW)) {
            return WindowPermissionCompat.getPermissionIntent(context);
        }
        if (PermissionUtils.equalsPermission(str, Permission.WRITE_SETTINGS)) {
            if (!AndroidVersion.isAndroid6()) {
                return getApplicationDetailsIntent(context);
            }
            return getSettingPermissionIntent(context);
        }
        if (PermissionUtils.equalsPermission(str, Permission.ACCESS_NOTIFICATION_POLICY)) {
            if (!AndroidVersion.isAndroid6()) {
                return getApplicationDetailsIntent(context);
            }
            return getNotDisturbPermissionIntent(context);
        }
        if (PermissionUtils.equalsPermission(str, Permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)) {
            if (!AndroidVersion.isAndroid6()) {
                return getApplicationDetailsIntent(context);
            }
            return getIgnoreBatteryPermissionIntent(context);
        }
        return super.getPermissionSettingIntent(context, str);
    }

    private static boolean isGrantedSettingPermission(Context context) {
        boolean canWrite;
        canWrite = Settings.System.canWrite(context);
        return canWrite;
    }

    private static Intent getSettingPermissionIntent(Context context) {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(PermissionUtils.getPackageNameUri(context));
        return !PermissionUtils.areActivityIntent(context, intent) ? getApplicationDetailsIntent(context) : intent;
    }

    private static boolean isGrantedNotDisturbPermission(Context context) {
        Object systemService;
        boolean isNotificationPolicyAccessGranted;
        systemService = context.getSystemService((Class<Object>) NotificationManager.class);
        isNotificationPolicyAccessGranted = ((NotificationManager) systemService).isNotificationPolicyAccessGranted();
        return isNotificationPolicyAccessGranted;
    }

    private static Intent getNotDisturbPermissionIntent(Context context) {
        Intent intent;
        if (AndroidVersion.isAndroid10()) {
            intent = new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS");
            intent.setData(PermissionUtils.getPackageNameUri(context));
            if (PhoneRomUtils.isHarmonyOs() || PhoneRomUtils.isMagicOs()) {
                intent = new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS");
            }
        } else {
            intent = new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS");
        }
        return !PermissionUtils.areActivityIntent(context, intent) ? getApplicationDetailsIntent(context) : intent;
    }

    private static boolean isGrantedIgnoreBatteryPermission(Context context) {
        Object systemService;
        boolean isIgnoringBatteryOptimizations;
        systemService = context.getSystemService((Class<Object>) PowerManager.class);
        isIgnoringBatteryOptimizations = ((PowerManager) systemService).isIgnoringBatteryOptimizations(context.getPackageName());
        return isIgnoringBatteryOptimizations;
    }

    private static Intent getIgnoreBatteryPermissionIntent(Context context) {
        Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        intent.setData(PermissionUtils.getPackageNameUri(context));
        if (!PermissionUtils.areActivityIntent(context, intent)) {
            intent = new Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS");
        }
        return !PermissionUtils.areActivityIntent(context, intent) ? getApplicationDetailsIntent(context) : intent;
    }
}
