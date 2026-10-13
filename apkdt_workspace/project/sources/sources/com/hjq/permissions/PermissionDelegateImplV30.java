package com.hjq.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class PermissionDelegateImplV30 extends PermissionDelegateImplV29 {
    @Override // com.hjq.permissions.PermissionDelegateImplV29, com.hjq.permissions.PermissionDelegateImplV28, com.hjq.permissions.PermissionDelegateImplV26, com.hjq.permissions.PermissionDelegateImplV23, com.hjq.permissions.PermissionDelegateImplV21, com.hjq.permissions.PermissionDelegateImplV19, com.hjq.permissions.PermissionDelegateImplV18, com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public boolean isGrantedPermission(Context context, String str) {
        if (PermissionUtils.equalsPermission(str, Permission.MANAGE_EXTERNAL_STORAGE)) {
            if (!AndroidVersion.isAndroid6()) {
                return true;
            }
            if (AndroidVersion.isAndroid11()) {
                return isGrantedManageStoragePermission();
            }
            return (!AndroidVersion.isAndroid10() || isUseDeprecationExternalStorage()) && PermissionUtils.checkSelfPermission(context, Permission.READ_EXTERNAL_STORAGE) && PermissionUtils.checkSelfPermission(context, Permission.WRITE_EXTERNAL_STORAGE);
        }
        return super.isGrantedPermission(context, str);
    }

    @Override // com.hjq.permissions.PermissionDelegateImplV29, com.hjq.permissions.PermissionDelegateImplV28, com.hjq.permissions.PermissionDelegateImplV26, com.hjq.permissions.PermissionDelegateImplV23, com.hjq.permissions.PermissionDelegateImplV21, com.hjq.permissions.PermissionDelegateImplV19, com.hjq.permissions.PermissionDelegateImplV18, com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public boolean isDoNotAskAgainPermission(Activity activity, String str) {
        if (PermissionUtils.equalsPermission(str, Permission.MANAGE_EXTERNAL_STORAGE)) {
            return false;
        }
        return super.isDoNotAskAgainPermission(activity, str);
    }

    @Override // com.hjq.permissions.PermissionDelegateImplV26, com.hjq.permissions.PermissionDelegateImplV23, com.hjq.permissions.PermissionDelegateImplV21, com.hjq.permissions.PermissionDelegateImplV19, com.hjq.permissions.PermissionDelegateImplV18, com.hjq.permissions.PermissionDelegateImplBase, com.hjq.permissions.PermissionDelegate
    public Intent getPermissionSettingIntent(Context context, String str) {
        if (PermissionUtils.equalsPermission(str, Permission.MANAGE_EXTERNAL_STORAGE)) {
            if (!AndroidVersion.isAndroid11()) {
                return getApplicationDetailsIntent(context);
            }
            return getManageStoragePermissionIntent(context);
        }
        return super.getPermissionSettingIntent(context, str);
    }

    private static boolean isGrantedManageStoragePermission() {
        boolean isExternalStorageManager;
        isExternalStorageManager = Environment.isExternalStorageManager();
        return isExternalStorageManager;
    }

    private static Intent getManageStoragePermissionIntent(Context context) {
        Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
        intent.setData(PermissionUtils.getPackageNameUri(context));
        if (!PermissionUtils.areActivityIntent(context, intent)) {
            intent = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
        }
        return !PermissionUtils.areActivityIntent(context, intent) ? getApplicationDetailsIntent(context) : intent;
    }

    private static boolean isUseDeprecationExternalStorage() {
        boolean isExternalStorageLegacy;
        isExternalStorageLegacy = Environment.isExternalStorageLegacy();
        return isExternalStorageLegacy;
    }
}
