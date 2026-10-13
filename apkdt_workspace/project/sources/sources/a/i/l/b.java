package a.i.l;

import android.icu.util.ULocale;
import android.os.Build;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* compiled from: ICUCompat.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static Method f335a;

    /* renamed from: b, reason: collision with root package name */
    private static Method f336b;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            if (i2 < 24) {
                try {
                    f336b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                    return;
                } catch (Exception e2) {
                    throw new IllegalStateException(e2);
                }
            }
            return;
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            if (cls != null) {
                f335a = cls.getMethod("getScript", String.class);
                f336b = cls.getMethod("addLikelySubtags", String.class);
            }
        } catch (Exception unused) {
            f335a = null;
            f336b = null;
        }
    }

    private static String a(String str) {
        try {
            if (f335a != null) {
                return (String) f335a.invoke(null, str);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return null;
    }

    @Nullable
    public static String b(Locale locale) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i2 >= 21) {
            try {
                return ((Locale) f336b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return locale.getScript();
            }
        }
        String a2 = a(locale);
        if (a2 != null) {
            return a(a2);
        }
        return null;
    }

    private static String a(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (f336b != null) {
                return (String) f336b.invoke(null, locale2);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return locale2;
    }
}
