package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtilsApi22.java */
@RequiresApi(22)
/* loaded from: classes.dex */
class a0 extends z {

    /* renamed from: i, reason: collision with root package name */
    private static Method f2950i;

    /* renamed from: j, reason: collision with root package name */
    private static boolean f2951j;

    @Override // androidx.transition.b0
    public void a(View view, int i2, int i3, int i4, int i5) {
        a();
        Method method = f2950i;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @SuppressLint({"PrivateApi"})
    private void a() {
        if (f2951j) {
            return;
        }
        try {
            f2950i = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            f2950i.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f2951j = true;
    }
}
