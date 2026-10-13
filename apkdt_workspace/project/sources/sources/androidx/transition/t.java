package androidx.transition;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewGroupUtilsApi18.java */
@RequiresApi(18)
/* loaded from: classes.dex */
class t {

    /* renamed from: a, reason: collision with root package name */
    private static Method f2995a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f2996b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull ViewGroup viewGroup, boolean z) {
        a();
        Method method = f2995a;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    private static void a() {
        if (f2996b) {
            return;
        }
        try {
            f2995a = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
            f2995a.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f2996b = true;
    }
}
