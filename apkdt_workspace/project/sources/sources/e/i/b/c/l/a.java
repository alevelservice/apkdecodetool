package e.i.b.c.l;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RestrictTo;

/* compiled from: AnimationUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final TimeInterpolator f17896a = new LinearInterpolator();

    /* renamed from: b, reason: collision with root package name */
    public static final TimeInterpolator f17897b = new a.l.a.a.b();

    /* renamed from: c, reason: collision with root package name */
    public static final TimeInterpolator f17898c = new a.l.a.a.a();

    /* renamed from: d, reason: collision with root package name */
    public static final TimeInterpolator f17899d = new a.l.a.a.c();

    /* renamed from: e, reason: collision with root package name */
    public static final TimeInterpolator f17900e = new DecelerateInterpolator();

    public static float a(float f2, float f3, float f4) {
        return f2 + (f4 * (f3 - f2));
    }

    public static int a(int i2, int i3, float f2) {
        return i2 + Math.round(f2 * (i3 - i2));
    }
}
