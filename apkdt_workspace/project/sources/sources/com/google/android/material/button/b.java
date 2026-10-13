package com.google.android.material.button;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.l;
import e.i.b.c.k;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MaterialButtonHelper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b {
    private static final boolean w;

    /* renamed from: a, reason: collision with root package name */
    private final MaterialButton f13727a;

    /* renamed from: b, reason: collision with root package name */
    private int f13728b;

    /* renamed from: c, reason: collision with root package name */
    private int f13729c;

    /* renamed from: d, reason: collision with root package name */
    private int f13730d;

    /* renamed from: e, reason: collision with root package name */
    private int f13731e;

    /* renamed from: f, reason: collision with root package name */
    private int f13732f;

    /* renamed from: g, reason: collision with root package name */
    private int f13733g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f13734h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private ColorStateList f13735i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private ColorStateList f13736j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private ColorStateList f13737k;

    @Nullable
    private GradientDrawable o;

    @Nullable
    private Drawable p;

    @Nullable
    private GradientDrawable q;

    @Nullable
    private Drawable r;

    @Nullable
    private GradientDrawable s;

    @Nullable
    private GradientDrawable t;

    @Nullable
    private GradientDrawable u;

    /* renamed from: l, reason: collision with root package name */
    private final Paint f13738l = new Paint(1);
    private final Rect m = new Rect();
    private final RectF n = new RectF();
    private boolean v = false;

    static {
        w = Build.VERSION.SDK_INT >= 21;
    }

    public b(MaterialButton materialButton) {
        this.f13727a = materialButton;
    }

    private Drawable i() {
        this.o = new GradientDrawable();
        this.o.setCornerRadius(this.f13732f + 1.0E-5f);
        this.o.setColor(-1);
        this.p = androidx.core.graphics.drawable.a.i(this.o);
        androidx.core.graphics.drawable.a.a(this.p, this.f13735i);
        PorterDuff.Mode mode = this.f13734h;
        if (mode != null) {
            androidx.core.graphics.drawable.a.a(this.p, mode);
        }
        this.q = new GradientDrawable();
        this.q.setCornerRadius(this.f13732f + 1.0E-5f);
        this.q.setColor(-1);
        this.r = androidx.core.graphics.drawable.a.i(this.q);
        androidx.core.graphics.drawable.a.a(this.r, this.f13737k);
        return a(new LayerDrawable(new Drawable[]{this.p, this.r}));
    }

    @TargetApi(21)
    private Drawable j() {
        this.s = new GradientDrawable();
        this.s.setCornerRadius(this.f13732f + 1.0E-5f);
        this.s.setColor(-1);
        n();
        this.t = new GradientDrawable();
        this.t.setCornerRadius(this.f13732f + 1.0E-5f);
        this.t.setColor(0);
        this.t.setStroke(this.f13733g, this.f13736j);
        InsetDrawable a2 = a(new LayerDrawable(new Drawable[]{this.s, this.t}));
        this.u = new GradientDrawable();
        this.u.setCornerRadius(this.f13732f + 1.0E-5f);
        this.u.setColor(-1);
        return new a(e.i.b.c.r.a.a(this.f13737k), a2, this.u);
    }

    @Nullable
    private GradientDrawable k() {
        if (!w || this.f13727a.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f13727a.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }

    @Nullable
    private GradientDrawable l() {
        if (!w || this.f13727a.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.f13727a.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }

    private void m() {
        if (w && this.t != null) {
            this.f13727a.setInternalBackground(j());
        } else {
            if (w) {
                return;
            }
            this.f13727a.invalidate();
        }
    }

    private void n() {
        GradientDrawable gradientDrawable = this.s;
        if (gradientDrawable != null) {
            androidx.core.graphics.drawable.a.a(gradientDrawable, this.f13735i);
            PorterDuff.Mode mode = this.f13734h;
            if (mode != null) {
                androidx.core.graphics.drawable.a.a(this.s, mode);
            }
        }
    }

    public void a(TypedArray typedArray) {
        this.f13728b = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetLeft, 0);
        this.f13729c = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetRight, 0);
        this.f13730d = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetTop, 0);
        this.f13731e = typedArray.getDimensionPixelOffset(k.MaterialButton_android_insetBottom, 0);
        this.f13732f = typedArray.getDimensionPixelSize(k.MaterialButton_cornerRadius, 0);
        this.f13733g = typedArray.getDimensionPixelSize(k.MaterialButton_strokeWidth, 0);
        this.f13734h = l.a(typedArray.getInt(k.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f13735i = e.i.b.c.q.a.a(this.f13727a.getContext(), typedArray, k.MaterialButton_backgroundTint);
        this.f13736j = e.i.b.c.q.a.a(this.f13727a.getContext(), typedArray, k.MaterialButton_strokeColor);
        this.f13737k = e.i.b.c.q.a.a(this.f13727a.getContext(), typedArray, k.MaterialButton_rippleColor);
        this.f13738l.setStyle(Paint.Style.STROKE);
        this.f13738l.setStrokeWidth(this.f13733g);
        Paint paint = this.f13738l;
        ColorStateList colorStateList = this.f13736j;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(this.f13727a.getDrawableState(), 0) : 0);
        int r = ViewCompat.r(this.f13727a);
        int paddingTop = this.f13727a.getPaddingTop();
        int q = ViewCompat.q(this.f13727a);
        int paddingBottom = this.f13727a.getPaddingBottom();
        this.f13727a.setInternalBackground(w ? j() : i());
        ViewCompat.b(this.f13727a, r + this.f13728b, paddingTop + this.f13730d, q + this.f13729c, paddingBottom + this.f13731e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList b() {
        return this.f13737k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@Nullable ColorStateList colorStateList) {
        if (this.f13735i != colorStateList) {
            this.f13735i = colorStateList;
            if (w) {
                n();
                return;
            }
            Drawable drawable = this.p;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, this.f13735i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f13733g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList e() {
        return this.f13735i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode f() {
        return this.f13734h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.v = true;
        this.f13727a.setSupportBackgroundTintList(this.f13735i);
        this.f13727a.setSupportBackgroundTintMode(this.f13734h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable ColorStateList colorStateList) {
        if (this.f13736j != colorStateList) {
            this.f13736j = colorStateList;
            this.f13738l.setColor(colorStateList != null ? colorStateList.getColorForState(this.f13727a.getDrawableState(), 0) : 0);
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList c() {
        return this.f13736j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2) {
        GradientDrawable gradientDrawable;
        if (this.f13732f != i2) {
            this.f13732f = i2;
            if (w && this.s != null && this.t != null && this.u != null) {
                if (Build.VERSION.SDK_INT == 21) {
                    float f2 = i2 + 1.0E-5f;
                    k().setCornerRadius(f2);
                    l().setCornerRadius(f2);
                }
                float f3 = i2 + 1.0E-5f;
                this.s.setCornerRadius(f3);
                this.t.setCornerRadius(f3);
                this.u.setCornerRadius(f3);
                return;
            }
            if (w || (gradientDrawable = this.o) == null || this.q == null) {
                return;
            }
            float f4 = i2 + 1.0E-5f;
            gradientDrawable.setCornerRadius(f4);
            this.q.setCornerRadius(f4);
            this.f13727a.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i2) {
        if (this.f13733g != i2) {
            this.f13733g = i2;
            this.f13738l.setStrokeWidth(i2);
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable Canvas canvas) {
        if (canvas == null || this.f13736j == null || this.f13733g <= 0) {
            return;
        }
        this.m.set(this.f13727a.getBackground().getBounds());
        RectF rectF = this.n;
        float f2 = this.m.left;
        int i2 = this.f13733g;
        rectF.set(f2 + (i2 / 2.0f) + this.f13728b, r1.top + (i2 / 2.0f) + this.f13730d, (r1.right - (i2 / 2.0f)) - this.f13729c, (r1.bottom - (i2 / 2.0f)) - this.f13731e);
        float f3 = this.f13732f - (this.f13733g / 2.0f);
        canvas.drawRoundRect(this.n, f3, f3, this.f13738l);
    }

    private InsetDrawable a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f13728b, this.f13730d, this.f13729c, this.f13731e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable PorterDuff.Mode mode) {
        PorterDuff.Mode mode2;
        if (this.f13734h != mode) {
            this.f13734h = mode;
            if (w) {
                n();
                return;
            }
            Drawable drawable = this.p;
            if (drawable == null || (mode2 = this.f13734h) == null) {
                return;
            }
            androidx.core.graphics.drawable.a.a(drawable, mode2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, int i3) {
        GradientDrawable gradientDrawable = this.u;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.f13728b, this.f13730d, i3 - this.f13729c, i2 - this.f13731e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        if (w && (gradientDrawable2 = this.s) != null) {
            gradientDrawable2.setColor(i2);
        } else {
            if (w || (gradientDrawable = this.o) == null) {
                return;
            }
            gradientDrawable.setColor(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f13737k != colorStateList) {
            this.f13737k = colorStateList;
            if (w && (this.f13727a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f13727a.getBackground()).setColor(colorStateList);
            } else {
                if (w || (drawable = this.r) == null) {
                    return;
                }
                androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f13732f;
    }
}
