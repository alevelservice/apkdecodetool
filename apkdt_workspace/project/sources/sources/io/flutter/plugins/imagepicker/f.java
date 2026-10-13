package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.Arrays;

/* compiled from: ImagePickerUtils.java */
/* loaded from: classes2.dex */
final class f {
    private static boolean a(Context context, String str) {
        try {
            return Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions).contains(str);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        return (Build.VERSION.SDK_INT >= 23) && a(context, "android.permission.CAMERA");
    }
}
