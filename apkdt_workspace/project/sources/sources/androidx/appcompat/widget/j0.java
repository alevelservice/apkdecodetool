package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class j0 {

    /* renamed from: a, reason: collision with root package name */
    private static Method f1379a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1379a = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                if (f1379a.isAccessible()) {
                    return;
                }
                f1379a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
        }
    }

    public static boolean a(View view) {
        return ViewCompat.n(view) == 1;
    }

    public static void b(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
    }

    public static void a(View view, Rect rect, Rect rect2) {
        Method method = f1379a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception unused) {
            }
        }
    }
}
