package androidx.transition;

import android.animation.LayoutTransition;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewGroupUtilsApi14.java */
/* loaded from: classes.dex */
class s {

    /* renamed from: a, reason: collision with root package name */
    private static LayoutTransition f2990a;

    /* renamed from: b, reason: collision with root package name */
    private static Field f2991b;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f2992c;

    /* renamed from: d, reason: collision with root package name */
    private static Method f2993d;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f2994e;

    /* compiled from: ViewGroupUtilsApi14.java */
    /* loaded from: classes.dex */
    static class a extends LayoutTransition {
        a() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull ViewGroup viewGroup, boolean z) {
        boolean z2 = false;
        if (f2990a == null) {
            f2990a = new a();
            f2990a.setAnimator(2, null);
            f2990a.setAnimator(0, null);
            f2990a.setAnimator(1, null);
            f2990a.setAnimator(3, null);
            f2990a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    a(layoutTransition);
                }
                if (layoutTransition != f2990a) {
                    viewGroup.setTag(f.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f2990a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f2992c) {
            try {
                f2991b = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f2991b.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2992c = true;
        }
        Field field = f2991b;
        if (field != null) {
            try {
                boolean z3 = field.getBoolean(viewGroup);
                if (z3) {
                    try {
                        f2991b.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                    }
                }
                z2 = z3;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(f.transition_layout_save);
        if (layoutTransition2 != null) {
            viewGroup.setTag(f.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!f2994e) {
            try {
                f2993d = LayoutTransition.class.getDeclaredMethod(HummerConstants.TASK_CANCEL, new Class[0]);
                f2993d.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f2994e = true;
        }
        Method method = f2993d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
    }
}
