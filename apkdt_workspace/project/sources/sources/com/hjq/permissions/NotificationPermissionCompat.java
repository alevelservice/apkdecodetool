package com.hjq.permissions;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class NotificationPermissionCompat {
    private static final int OP_POST_NOTIFICATION_DEFAULT_VALUE = 11;
    private static final String OP_POST_NOTIFICATION_FIELD_NAME = "OP_POST_NOTIFICATION";

    NotificationPermissionCompat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGrantedPermission(Context context) {
        Object systemService;
        boolean areNotificationsEnabled;
        if (AndroidVersion.isAndroid7()) {
            systemService = context.getSystemService((Class<Object>) NotificationManager.class);
            areNotificationsEnabled = ((NotificationManager) systemService).areNotificationsEnabled();
            return areNotificationsEnabled;
        }
        if (AndroidVersion.isAndroid4_4()) {
            return PermissionUtils.checkOpNoThrow(context, OP_POST_NOTIFICATION_FIELD_NAME, 11);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent getPermissionIntent(Context context) {
        Intent intent;
        if (AndroidVersion.isAndroid8()) {
            intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        } else if (AndroidVersion.isAndroid5()) {
            intent = new Intent();
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", context.getPackageName());
            intent.putExtra("app_uid", context.getApplicationInfo().uid);
        } else {
            intent = null;
        }
        return !PermissionUtils.areActivityIntent(context, intent) ? PermissionIntentManager.getApplicationDetailsIntent(context) : intent;
    }
}
