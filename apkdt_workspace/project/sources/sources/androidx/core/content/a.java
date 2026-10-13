package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.TypedValue;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: ContextCompat.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f1792a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static TypedValue f1793b;

    public static boolean a(@NonNull Context context, @NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    @NonNull
    public static File[] b(@NonNull Context context, @Nullable String str) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(str) : new File[]{context.getExternalFilesDir(str)};
    }

    @Nullable
    public static Drawable c(@NonNull Context context, @DrawableRes int i2) {
        int i3;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            return context.getDrawable(i2);
        }
        if (i4 >= 16) {
            return context.getResources().getDrawable(i2);
        }
        synchronized (f1792a) {
            if (f1793b == null) {
                f1793b = new TypedValue();
            }
            context.getResources().getValue(i2, f1793b, true);
            i3 = f1793b.resourceId;
        }
        return context.getResources().getDrawable(i3);
    }

    @ColorInt
    public static int a(@NonNull Context context, @ColorRes int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColor(i2);
        }
        return context.getResources().getColor(i2);
    }

    @NonNull
    public static File[] b(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    public static int a(@NonNull Context context, @NonNull String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    @Nullable
    public static ColorStateList b(@NonNull Context context, @ColorRes int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i2);
        }
        return context.getResources().getColorStateList(i2);
    }

    private static synchronized File a(File file) {
        synchronized (a.class) {
            if (file.exists() || file.mkdirs()) {
                return file;
            }
            if (file.exists()) {
                return file;
            }
            String str = "Unable to create files subdir " + file.getPath();
            return null;
        }
    }

    @Nullable
    public static File c(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return context.getNoBackupFilesDir();
        }
        return a(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    @Nullable
    public static Context a(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.createDeviceProtectedStorageContext();
        }
        return null;
    }
}
