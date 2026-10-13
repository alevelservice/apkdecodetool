package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: LinearSmoothScroller.java */
/* loaded from: classes.dex */
public class h extends RecyclerView.v {

    /* renamed from: k, reason: collision with root package name */
    protected PointF f2793k;

    /* renamed from: l, reason: collision with root package name */
    private final float f2794l;

    /* renamed from: i, reason: collision with root package name */
    protected final LinearInterpolator f2791i = new LinearInterpolator();

    /* renamed from: j, reason: collision with root package name */
    protected final DecelerateInterpolator f2792j = new DecelerateInterpolator();
    protected int m = 0;
    protected int n = 0;

    public h(Context context) {
        this.f2794l = a(context.getResources().getDisplayMetrics());
    }

    private int b(int i2, int i3) {
        int i4 = i2 - i3;
        if (i2 * i4 <= 0) {
            return 0;
        }
        return i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v
    protected void a(View view, RecyclerView.w wVar, RecyclerView.v.a aVar) {
        int a2 = a(view, i());
        int b2 = b(view, j());
        int d2 = d((int) Math.sqrt((a2 * a2) + (b2 * b2)));
        if (d2 > 0) {
            aVar.a(-a2, -b2, d2, this.f2792j);
        }
    }

    public int b(View view, int i2) {
        RecyclerView.m b2 = b();
        if (b2 == null || !b2.b()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return a(b2.j(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, b2.e(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, b2.p(), b2.h() - b2.m(), i2);
    }

    protected int d(int i2) {
        double e2 = e(i2);
        Double.isNaN(e2);
        return (int) Math.ceil(e2 / 0.3356d);
    }

    protected int e(int i2) {
        return (int) Math.ceil(Math.abs(i2) * this.f2794l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v
    protected void f() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v
    protected void g() {
        this.n = 0;
        this.m = 0;
        this.f2793k = null;
    }

    protected int i() {
        PointF pointF = this.f2793k;
        if (pointF != null) {
            float f2 = pointF.x;
            if (f2 != 0.0f) {
                return f2 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    protected int j() {
        PointF pointF = this.f2793k;
        if (pointF != null) {
            float f2 = pointF.y;
            if (f2 != 0.0f) {
                return f2 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v
    protected void a(int i2, int i3, RecyclerView.w wVar, RecyclerView.v.a aVar) {
        if (a() == 0) {
            h();
            return;
        }
        this.m = b(this.m, i2);
        this.n = b(this.n, i3);
        if (this.m == 0 && this.n == 0) {
            a(aVar);
        }
    }

    protected float a(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    protected void a(RecyclerView.v.a aVar) {
        PointF a2 = a(c());
        if (a2 != null && (a2.x != 0.0f || a2.y != 0.0f)) {
            a(a2);
            this.f2793k = a2;
            this.m = (int) (a2.x * 10000.0f);
            this.n = (int) (a2.y * 10000.0f);
            aVar.a((int) (this.m * 1.2f), (int) (this.n * 1.2f), (int) (e(e.b.b.a.a.a.c.DEBUG_INT) * 1.2f), this.f2791i);
            return;
        }
        aVar.a(c());
        h();
    }

    public int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                return i5 - i3;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i7 = i4 - i2;
        if (i7 > 0) {
            return i7;
        }
        int i8 = i5 - i3;
        if (i8 < 0) {
            return i8;
        }
        return 0;
    }

    public int a(View view, int i2) {
        RecyclerView.m b2 = b();
        if (b2 == null || !b2.a()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return a(b2.f(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, b2.i(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, b2.n(), b2.q() - b2.o(), i2);
    }
}
