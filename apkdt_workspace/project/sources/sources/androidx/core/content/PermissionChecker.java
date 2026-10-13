package androidx.core.content;

import android.content.Context;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.d;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class PermissionChecker {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface PermissionResult {
    }

    public static int a(@NonNull Context context, @NonNull String str, int i2, int i3, @Nullable String str2) {
        if (context.checkPermission(str, i2, i3) == -1) {
            return -1;
        }
        String a2 = d.a(str);
        if (a2 == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i3);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return d.a(context, a2, str2) != 0 ? -2 : 0;
    }

    public static int b(@NonNull Context context, @NonNull String str) {
        return a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    public static int a(@NonNull Context context, @NonNull String str) {
        return a(context, str, Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null);
    }
}
