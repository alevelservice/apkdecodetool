package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewUtils.java */
/* loaded from: classes.dex */
public class x {

    /* renamed from: a, reason: collision with root package name */
    private static final b0 f3003a;

    /* renamed from: b, reason: collision with root package name */
    private static Field f3004b;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f3005c;

    /* renamed from: d, reason: collision with root package name */
    static final Property<View, Float> f3006d;

    /* compiled from: ViewUtils.java */
    /* loaded from: classes.dex */
    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(x.c(view));
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f2) {
            x.a(view, f2.floatValue());
        }
    }

    /* compiled from: ViewUtils.java */
    /* loaded from: classes.dex */
    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return ViewCompat.h(view);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            ViewCompat.a(view, rect);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22) {
            f3003a = new a0();
        } else if (i2 >= 21) {
            f3003a = new z();
        } else if (i2 >= 19) {
            f3003a = new y();
        } else {
            f3003a = new b0();
        }
        f3006d = new a(Float.class, "translationAlpha");
        new b(Rect.class, "clipBounds");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view, float f2) {
        f3003a.a(view, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w b(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new v(view);
        }
        return u.c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float c(@NonNull View view) {
        return f3003a.b(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e0 d(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new d0(view);
        }
        return new c0(view.getWindowToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(@NonNull View view) {
        f3003a.c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view) {
        f3003a.a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view, int i2) {
        a();
        Field field = f3004b;
        if (field != null) {
            try {
                f3004b.setInt(view, i2 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull View view, @NonNull Matrix matrix) {
        f3003a.b(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view, @NonNull Matrix matrix) {
        f3003a.a(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view, int i2, int i3, int i4, int i5) {
        f3003a.a(view, i2, i3, i4, i5);
    }

    private static void a() {
        if (f3005c) {
            return;
        }
        try {
            f3004b = View.class.getDeclaredField("mViewFlags");
            f3004b.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        f3005c = true;
    }
}
