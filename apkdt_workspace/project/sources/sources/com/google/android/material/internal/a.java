package com.google.android.material.internal;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: CircularBorderDrawable.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a extends Drawable {

    /* renamed from: e, reason: collision with root package name */
    @Dimension
    float f13845e;

    /* renamed from: f, reason: collision with root package name */
    @ColorInt
    private int f13846f;

    /* renamed from: g, reason: collision with root package name */
    @ColorInt
    private int f13847g;

    /* renamed from: h, reason: collision with root package name */
    @ColorInt
    private int f13848h;

    /* renamed from: i, reason: collision with root package name */
    @ColorInt
    private int f13849i;

    /* renamed from: j, reason: collision with root package name */
    private ColorStateList f13850j;

    /* renamed from: k, reason: collision with root package name */
    @ColorInt
    private int f13851k;

    @FloatRange(from = 0.0d, to = 360.0d)
    private float m;

    /* renamed from: b, reason: collision with root package name */
    final Rect f13842b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    final RectF f13843c = new RectF();

    /* renamed from: d, reason: collision with root package name */
    final b f13844d = new b();

    /* renamed from: l, reason: collision with root package name */
    private boolean f13852l = true;

    /* renamed from: a, reason: collision with root package name */
    final Paint f13841a = new Paint(1);

    /* compiled from: CircularBorderDrawable.java */
    /* loaded from: classes.dex */
    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return a.this;
        }
    }

    public a() {
        this.f13841a.setStyle(Paint.Style.STROKE);
    }

    public void a(@ColorInt int i2, @ColorInt int i3, @ColorInt int i4, @ColorInt int i5) {
        this.f13846f = i2;
        this.f13847g = i3;
        this.f13848h = i4;
        this.f13849i = i5;
    }

    public final void b(float f2) {
        if (f2 != this.m) {
            this.m = f2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f13852l) {
            this.f13841a.setShader(a());
            this.f13852l = false;
        }
        float strokeWidth = this.f13841a.getStrokeWidth() / 2.0f;
        RectF rectF = this.f13843c;
        copyBounds(this.f13842b);
        rectF.set(this.f13842b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.m, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f13841a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f13844d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f13845e > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int round = Math.round(this.f13845e);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f13850j;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f13852l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f13850j;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f13851k)) != this.f13851k) {
            this.f13852l = true;
            this.f13851k = colorForState;
        }
        if (this.f13852l) {
            invalidateSelf();
        }
        return this.f13852l;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i2) {
        this.f13841a.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f13841a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void a(@Dimension float f2) {
        if (this.f13845e != f2) {
            this.f13845e = f2;
            this.f13841a.setStrokeWidth(f2 * 1.3333f);
            this.f13852l = true;
            invalidateSelf();
        }
    }

    public void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f13851k = colorStateList.getColorForState(getState(), this.f13851k);
        }
        this.f13850j = colorStateList;
        this.f13852l = true;
        invalidateSelf();
    }

    private Shader a() {
        copyBounds(this.f13842b);
        float height = this.f13845e / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{a.i.h.a.b(this.f13846f, this.f13851k), a.i.h.a.b(this.f13847g, this.f13851k), a.i.h.a.b(a.i.h.a.c(this.f13847g, 0), this.f13851k), a.i.h.a.b(a.i.h.a.c(this.f13849i, 0), this.f13851k), a.i.h.a.b(this.f13849i, this.f13851k), a.i.h.a.b(this.f13848h, this.f13851k)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }
}
