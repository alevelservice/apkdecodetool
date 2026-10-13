package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
import javax.annotation.Nullable;

/* compiled from: AspectRatioMeasure.java */
/* loaded from: classes.dex */
public class a {

    /* compiled from: AspectRatioMeasure.java */
    /* renamed from: com.facebook.drawee.view.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0063a {

        /* renamed from: a, reason: collision with root package name */
        public int f3581a;

        /* renamed from: b, reason: collision with root package name */
        public int f3582b;
    }

    public static void a(C0063a c0063a, float f2, @Nullable ViewGroup.LayoutParams layoutParams, int i2, int i3) {
        if (f2 <= 0.0f || layoutParams == null) {
            return;
        }
        if (a(layoutParams.height)) {
            c0063a.f3582b = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(c0063a.f3581a) - i2) / f2) + i3), c0063a.f3582b), 1073741824);
        } else if (a(layoutParams.width)) {
            c0063a.f3581a = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(c0063a.f3582b) - i3) * f2) + i2), c0063a.f3581a), 1073741824);
        }
    }

    private static boolean a(int i2) {
        return i2 == 0 || i2 == -2;
    }
}
