package androidx.core.view;

import android.os.Build;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;

/* compiled from: LayoutInflaterCompat.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static Field f1978a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1979b;

    private static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f1979b) {
            try {
                f1978a = LayoutInflater.class.getDeclaredField("mFactory2");
                f1978a.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                String str = "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.";
            }
            f1979b = true;
        }
        Field field = f1978a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException unused2) {
                String str2 = "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.";
            }
        }
    }

    public static void b(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                a(layoutInflater, factory2);
            }
        }
    }
}
