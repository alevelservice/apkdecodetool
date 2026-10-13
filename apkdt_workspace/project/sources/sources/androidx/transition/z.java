package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtilsApi21.java */
@RequiresApi(21)
/* loaded from: classes.dex */
class z extends y {

    /* renamed from: e, reason: collision with root package name */
    private static Method f3011e;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f3012f;

    /* renamed from: g, reason: collision with root package name */
    private static Method f3013g;

    /* renamed from: h, reason: collision with root package name */
    private static boolean f3014h;

    @Override // androidx.transition.b0
    public void a(@NonNull View view, @NonNull Matrix matrix) {
        a();
        Method method = f3011e;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // androidx.transition.b0
    public void b(@NonNull View view, @NonNull Matrix matrix) {
        b();
        Method method = f3013g;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    private void a() {
        if (f3012f) {
            return;
        }
        try {
            f3011e = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
            f3011e.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f3012f = true;
    }

    private void b() {
        if (f3014h) {
            return;
        }
        try {
            f3013g = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
            f3013g.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f3014h = true;
    }
}
