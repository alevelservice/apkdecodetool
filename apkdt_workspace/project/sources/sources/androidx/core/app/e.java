package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: BundleCompat.java */
/* loaded from: classes.dex */
public final class e {
    @Nullable
    public static IBinder a(@NonNull Bundle bundle, @Nullable String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return a.a(bundle, str);
    }

    public static void a(@NonNull Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.a(bundle, str, iBinder);
        }
    }

    /* compiled from: BundleCompat.java */
    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        private static Method f1730a;

        /* renamed from: b, reason: collision with root package name */
        private static boolean f1731b;

        /* renamed from: c, reason: collision with root package name */
        private static Method f1732c;

        /* renamed from: d, reason: collision with root package name */
        private static boolean f1733d;

        public static IBinder a(Bundle bundle, String str) {
            if (!f1731b) {
                try {
                    f1730a = Bundle.class.getMethod("getIBinder", String.class);
                    f1730a.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1731b = true;
            }
            Method method = f1730a;
            if (method != null) {
                try {
                    return (IBinder) method.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f1730a = null;
                }
            }
            return null;
        }

        public static void a(Bundle bundle, String str, IBinder iBinder) {
            if (!f1733d) {
                try {
                    f1732c = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1732c.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1733d = true;
            }
            Method method = f1732c;
            if (method != null) {
                try {
                    method.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f1732c = null;
                }
            }
        }
    }
}
