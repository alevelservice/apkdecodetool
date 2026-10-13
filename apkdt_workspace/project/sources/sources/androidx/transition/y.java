package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtilsApi19.java */
@RequiresApi(19)
/* loaded from: classes.dex */
class y extends b0 {

    /* renamed from: a, reason: collision with root package name */
    private static Method f3007a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f3008b;

    /* renamed from: c, reason: collision with root package name */
    private static Method f3009c;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f3010d;

    @Override // androidx.transition.b0
    public void a(@NonNull View view) {
    }

    @Override // androidx.transition.b0
    public void a(@NonNull View view, float f2) {
        b();
        Method method = f3007a;
        if (method != null) {
            try {
                method.invoke(view, Float.valueOf(f2));
                return;
            } catch (IllegalAccessException unused) {
                return;
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        view.setAlpha(f2);
    }

    @Override // androidx.transition.b0
    public float b(@NonNull View view) {
        a();
        Method method = f3009c;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.b(view);
    }

    @Override // androidx.transition.b0
    public void c(@NonNull View view) {
    }

    private void a() {
        if (f3010d) {
            return;
        }
        try {
            f3009c = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
            f3009c.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f3010d = true;
    }

    private void b() {
        if (f3008b) {
            return;
        }
        try {
            f3007a = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
            f3007a.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f3008b = true;
    }
}
