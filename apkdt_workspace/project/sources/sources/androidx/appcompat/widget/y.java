package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: ThemeUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f1458a = new ThreadLocal<>();

    /* renamed from: b, reason: collision with root package name */
    static final int[] f1459b = {-16842910};

    /* renamed from: c, reason: collision with root package name */
    static final int[] f1460c = {R.attr.state_focused};

    /* renamed from: d, reason: collision with root package name */
    static final int[] f1461d;

    /* renamed from: e, reason: collision with root package name */
    static final int[] f1462e;

    /* renamed from: f, reason: collision with root package name */
    static final int[] f1463f;

    /* renamed from: g, reason: collision with root package name */
    private static final int[] f1464g;

    static {
        new int[1][0] = 16843518;
        f1461d = new int[]{R.attr.state_pressed};
        f1462e = new int[]{R.attr.state_checked};
        new int[1][0] = 16842913;
        f1463f = new int[0];
        f1464g = new int[1];
    }

    public static int a(@NonNull Context context, int i2) {
        ColorStateList c2 = c(context, i2);
        if (c2 != null && c2.isStateful()) {
            return c2.getColorForState(f1459b, c2.getDefaultColor());
        }
        TypedValue a2 = a();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, a2, true);
        return a(context, i2, a2.getFloat());
    }

    public static int b(@NonNull Context context, int i2) {
        int[] iArr = f1464g;
        iArr[0] = i2;
        d0 a2 = d0.a(context, (AttributeSet) null, iArr);
        try {
            return a2.a(0, 0);
        } finally {
            a2.b();
        }
    }

    @Nullable
    public static ColorStateList c(@NonNull Context context, int i2) {
        int[] iArr = f1464g;
        iArr[0] = i2;
        d0 a2 = d0.a(context, (AttributeSet) null, iArr);
        try {
            return a2.a(0);
        } finally {
            a2.b();
        }
    }

    private static TypedValue a() {
        TypedValue typedValue = f1458a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f1458a.set(typedValue2);
        return typedValue2;
    }

    static int a(@NonNull Context context, int i2, float f2) {
        return a.i.h.a.c(b(context, i2), Math.round(Color.alpha(r0) * f2));
    }

    public static void a(@NonNull View view, @NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(a.a.j.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(a.a.j.AppCompatTheme_windowActionBar)) {
                String str = "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).";
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
