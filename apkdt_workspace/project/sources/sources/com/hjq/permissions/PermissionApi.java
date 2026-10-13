package com.hjq.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PermissionApi {
    private static final PermissionDelegate DELEGATE = new PermissionDelegateImplV34();

    PermissionApi() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGrantedPermission(Context context, String str) {
        return DELEGATE.isGrantedPermission(context, str);
    }

    static boolean isDoNotAskAgainPermission(Activity activity, String str) {
        return DELEGATE.isDoNotAskAgainPermission(activity, str);
    }

    static Intent getPermissionSettingIntent(Context context, String str) {
        return DELEGATE.getPermissionSettingIntent(context, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean recheckPermissionResult(Context context, String str, boolean z) {
        return DELEGATE.recheckPermissionResult(context, str, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSpecialPermission(String str) {
        return PermissionHelper.isSpecialPermission(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean containsSpecialPermission(List<String> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (isSpecialPermission(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGrantedPermissions(Context context, List<String> list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (!isGrantedPermission(context, it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> getGrantedPermissions(Context context, List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (isGrantedPermission(context, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> getDeniedPermissions(Context context, List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (!isGrantedPermission(context, str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isDoNotAskAgainPermissions(Activity activity, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (isDoNotAskAgainPermission(activity, it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> getDeniedPermissions(List<String> list, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] == -1) {
                arrayList.add(list.get(i));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> getGrantedPermissions(List<String> list, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] == 0) {
                arrayList.add(list.get(i));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent getSmartPermissionIntent(Context context, List<String> list) {
        if (list == null || list.isEmpty()) {
            return PermissionIntentManager.getApplicationDetailsIntent(context);
        }
        if (!containsSpecialPermission(list)) {
            if (list.size() == 1) {
                return getPermissionSettingIntent(context, list.get(0));
            }
            return PermissionIntentManager.getApplicationDetailsIntent(context, list);
        }
        int size = list.size();
        if (size == 1) {
            return getPermissionSettingIntent(context, list.get(0));
        }
        if (size == 2) {
            if (!AndroidVersion.isAndroid13() && PermissionUtils.containsPermission(list, Permission.NOTIFICATION_SERVICE) && PermissionUtils.containsPermission(list, Permission.POST_NOTIFICATIONS)) {
                return getPermissionSettingIntent(context, Permission.NOTIFICATION_SERVICE);
            }
        } else if (size == 3 && AndroidVersion.isAndroid11() && PermissionUtils.containsPermission(list, Permission.MANAGE_EXTERNAL_STORAGE) && PermissionUtils.containsPermission(list, Permission.READ_EXTERNAL_STORAGE) && PermissionUtils.containsPermission(list, Permission.WRITE_EXTERNAL_STORAGE)) {
            return getPermissionSettingIntent(context, Permission.MANAGE_EXTERNAL_STORAGE);
        }
        return PermissionIntentManager.getApplicationDetailsIntent(context);
    }
}
