package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.core.content.res.e;
import com.google.android.material.internal.k;
import e.i.b.c.l.h;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* compiled from: ChipDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements androidx.core.graphics.drawable.b, Drawable.Callback {
    private static final int[] l0 = {R.attr.state_enabled};

    @Nullable
    private h A;

    @Nullable
    private h B;
    private float C;
    private float D;
    private float E;
    private float F;
    private float G;
    private float H;
    private float I;
    private float J;
    private final Context K;

    @Nullable
    private final Paint N;

    @ColorInt
    private int R;

    @ColorInt
    private int S;

    @ColorInt
    private int T;

    @ColorInt
    private int U;
    private boolean V;

    @ColorInt
    private int W;

    @Nullable
    private ColorFilter Y;

    @Nullable
    private PorterDuffColorFilter Z;

    @Nullable
    private ColorStateList a0;
    private int[] c0;
    private boolean d0;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private ColorStateList f13758e;

    @Nullable
    private ColorStateList e0;

    /* renamed from: f, reason: collision with root package name */
    private float f13759f;

    /* renamed from: g, reason: collision with root package name */
    private float f13760g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private ColorStateList f13761h;
    private float h0;

    /* renamed from: i, reason: collision with root package name */
    private float f13762i;
    private TextUtils.TruncateAt i0;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private ColorStateList f13763j;
    private boolean j0;
    private int k0;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private CharSequence f13765l;

    @Nullable
    private e.i.b.c.q.b m;
    private boolean o;

    @Nullable
    private Drawable p;

    @Nullable
    private ColorStateList q;
    private float r;
    private boolean s;

    @Nullable
    private Drawable t;

    @Nullable
    private ColorStateList u;
    private float v;

    @Nullable
    private CharSequence w;
    private boolean x;
    private boolean y;

    @Nullable
    private Drawable z;
    private final e.a n = new C0099a();
    private final TextPaint L = new TextPaint(1);
    private final Paint M = new Paint(1);
    private final Paint.FontMetrics O = new Paint.FontMetrics();
    private final RectF P = new RectF();
    private final PointF Q = new PointF();
    private int X = 255;

    @Nullable
    private PorterDuff.Mode b0 = PorterDuff.Mode.SRC_IN;
    private WeakReference<b> f0 = new WeakReference<>(null);
    private boolean g0 = true;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private CharSequence f13764k = "";

    /* compiled from: ChipDrawable.java */
    /* renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0099a extends e.a {
        C0099a() {
        }

        @Override // androidx.core.content.res.e.a
        public void a(int i2) {
        }

        @Override // androidx.core.content.res.e.a
        public void a(@NonNull Typeface typeface) {
            a.this.g0 = true;
            a.this.I();
            a.this.invalidateSelf();
        }
    }

    /* compiled from: ChipDrawable.java */
    /* loaded from: classes.dex */
    public interface b {
        void onChipDrawableSizeChange();
    }

    private a(Context context) {
        this.K = context;
        this.L.density = context.getResources().getDisplayMetrics().density;
        this.N = null;
        Paint paint = this.N;
        if (paint != null) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(l0);
        a(l0);
        this.j0 = true;
    }

    private float K() {
        if (R()) {
            return this.H + this.v + this.I;
        }
        return 0.0f;
    }

    private float L() {
        this.L.getFontMetrics(this.O);
        Paint.FontMetrics fontMetrics = this.O;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private boolean M() {
        return this.y && this.z != null && this.x;
    }

    private float N() {
        if (!this.g0) {
            return this.h0;
        }
        this.h0 = c(this.f13765l);
        this.g0 = false;
        return this.h0;
    }

    @Nullable
    private ColorFilter O() {
        ColorFilter colorFilter = this.Y;
        return colorFilter != null ? colorFilter : this.Z;
    }

    private boolean P() {
        return this.y && this.z != null && this.V;
    }

    private boolean Q() {
        return this.o && this.p != null;
    }

    private boolean R() {
        return this.s && this.t != null;
    }

    private void S() {
        this.e0 = this.d0 ? e.i.b.c.r.a.a(this.f13763j) : null;
    }

    private void b(@NonNull Canvas canvas, Rect rect) {
        this.M.setColor(this.R);
        this.M.setStyle(Paint.Style.FILL);
        this.M.setColorFilter(O());
        this.P.set(rect);
        RectF rectF = this.P;
        float f2 = this.f13760g;
        canvas.drawRoundRect(rectF, f2, f2, this.M);
    }

    private float c(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.L.measureText(charSequence, 0, charSequence.length());
    }

    private void d(@NonNull Canvas canvas, Rect rect) {
        if (this.f13762i > 0.0f) {
            this.M.setColor(this.S);
            this.M.setStyle(Paint.Style.STROKE);
            this.M.setColorFilter(O());
            RectF rectF = this.P;
            float f2 = rect.left;
            float f3 = this.f13762i;
            rectF.set(f2 + (f3 / 2.0f), rect.top + (f3 / 2.0f), rect.right - (f3 / 2.0f), rect.bottom - (f3 / 2.0f));
            float f4 = this.f13760g - (this.f13762i / 2.0f);
            canvas.drawRoundRect(this.P, f4, f4, this.M);
        }
    }

    private void e(@NonNull Canvas canvas, Rect rect) {
        if (R()) {
            c(rect, this.P);
            RectF rectF = this.P;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.t.setBounds(0, 0, (int) this.P.width(), (int) this.P.height());
            this.t.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void g(@NonNull Canvas canvas, Rect rect) {
        Paint paint = this.N;
        if (paint != null) {
            paint.setColor(a.i.h.a.c(-16777216, 127));
            canvas.drawRect(rect, this.N);
            if (Q() || P()) {
                a(rect, this.P);
                canvas.drawRect(this.P, this.N);
            }
            if (this.f13765l != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.N);
            }
            if (R()) {
                c(rect, this.P);
                canvas.drawRect(this.P, this.N);
            }
            this.N.setColor(a.i.h.a.c(-65536, 127));
            b(rect, this.P);
            canvas.drawRect(this.P, this.N);
            this.N.setColor(a.i.h.a.c(-16711936, 127));
            d(rect, this.P);
            canvas.drawRect(this.P, this.N);
        }
    }

    private void h(@NonNull Canvas canvas, Rect rect) {
        if (this.f13765l != null) {
            Paint.Align a2 = a(rect, this.Q);
            e(rect, this.P);
            if (this.m != null) {
                this.L.drawableState = getState();
                this.m.b(this.K, this.L, this.n);
            }
            this.L.setTextAlign(a2);
            int i2 = 0;
            boolean z = Math.round(N()) > Math.round(this.P.width());
            if (z) {
                i2 = canvas.save();
                canvas.clipRect(this.P);
            }
            CharSequence charSequence = this.f13765l;
            if (z && this.i0 != null) {
                charSequence = TextUtils.ellipsize(charSequence, this.L, this.P.width(), this.i0);
            }
            CharSequence charSequence2 = charSequence;
            int length = charSequence2.length();
            PointF pointF = this.Q;
            canvas.drawText(charSequence2, 0, length, pointF.x, pointF.y, this.L);
            if (z) {
                canvas.restoreToCount(i2);
            }
        }
    }

    @Nullable
    public e.i.b.c.q.b A() {
        return this.m;
    }

    public float B() {
        return this.G;
    }

    public float C() {
        return this.F;
    }

    public boolean D() {
        return this.x;
    }

    public boolean E() {
        return this.y;
    }

    public boolean F() {
        return this.o;
    }

    public boolean G() {
        return e(this.t);
    }

    public boolean H() {
        return this.s;
    }

    protected void I() {
        b bVar = this.f0.get();
        if (bVar != null) {
            bVar.onChipDrawableSizeChange();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean J() {
        return this.j0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i2 = this.X;
        int a2 = i2 < 255 ? e.i.b.c.m.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i2) : 0;
        b(canvas, bounds);
        d(canvas, bounds);
        f(canvas, bounds);
        c(canvas, bounds);
        a(canvas, bounds);
        if (this.j0) {
            h(canvas, bounds);
        }
        e(canvas, bounds);
        g(canvas, bounds);
        if (this.X < 255) {
            canvas.restoreToCount(a2);
        }
    }

    public void f(boolean z) {
        if (this.d0 != z) {
            this.d0 = z;
            S();
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.X;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.Y;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f13759f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.C + a() + this.F + N() + this.G + K() + this.J), this.k0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f13760g);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f13760g);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public float i() {
        return this.f13759f;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return f(this.f13758e) || f(this.f13761h) || (this.d0 && f(this.e0)) || b(this.m) || M() || e(this.p) || e(this.z) || f(this.a0);
    }

    public void j(@BoolRes int i2) {
        c(this.K.getResources().getBoolean(i2));
    }

    public void k(@DimenRes int i2) {
        d(this.K.getResources().getDimension(i2));
    }

    public float l() {
        return this.f13762i;
    }

    public void m(@ColorRes int i2) {
        c(a.a.k.a.a.b(this.K, i2));
    }

    public void n(@DimenRes int i2) {
        f(this.K.getResources().getDimension(i2));
    }

    public float o() {
        return this.I;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(23)
    public boolean onLayoutDirectionChanged(int i2) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i2);
        if (Q()) {
            onLayoutDirectionChanged |= this.p.setLayoutDirection(i2);
        }
        if (P()) {
            onLayoutDirectionChanged |= this.z.setLayoutDirection(i2);
        }
        if (R()) {
            onLayoutDirectionChanged |= this.t.setLayoutDirection(i2);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        boolean onLevelChange = super.onLevelChange(i2);
        if (Q()) {
            onLevelChange |= this.p.setLevel(i2);
        }
        if (P()) {
            onLevelChange |= this.z.setLevel(i2);
        }
        if (R()) {
            onLevelChange |= this.t.setLevel(i2);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return a(iArr, r());
    }

    public void p(@DrawableRes int i2) {
        c(a.a.k.a.a.c(this.K, i2));
    }

    public void q(@DimenRes int i2) {
        h(this.K.getResources().getDimension(i2));
    }

    @NonNull
    public int[] r() {
        return this.c0;
    }

    @Nullable
    public ColorStateList s() {
        return this.u;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.X != i2) {
            this.X = i2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.Y != colorFilter) {
            this.Y = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.a0 != colorStateList) {
            this.a0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.b0 != mode) {
            this.b0 = mode;
            this.Z = e.i.b.c.n.a.a(this, this.a0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (Q()) {
            visible |= this.p.setVisible(z, z2);
        }
        if (P()) {
            visible |= this.z.setVisible(z, z2);
        }
        if (R()) {
            visible |= this.t.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public TextUtils.TruncateAt t() {
        return this.i0;
    }

    @Nullable
    public h u() {
        return this.B;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public float v() {
        return this.E;
    }

    public float w() {
        return this.D;
    }

    @Nullable
    public ColorStateList x() {
        return this.f13763j;
    }

    public void y(@ColorRes int i2) {
        e(a.a.k.a.a.b(this.K, i2));
    }

    @NonNull
    public CharSequence z() {
        return this.f13764k;
    }

    public static a a(Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        a aVar = new a(context);
        aVar.a(attributeSet, i2, i3);
        return aVar;
    }

    private void c(@NonNull Canvas canvas, Rect rect) {
        if (Q()) {
            a(rect, this.P);
            RectF rectF = this.P;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.p.setBounds(0, 0, (int) this.P.width(), (int) this.P.height());
            this.p.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    public void A(@StyleRes int i2) {
        a(new e.i.b.c.q.b(this.K, i2));
    }

    public void B(@DimenRes int i2) {
        l(this.K.getResources().getDimension(i2));
    }

    public void C(@DimenRes int i2) {
        m(this.K.getResources().getDimension(i2));
    }

    public void i(@ColorRes int i2) {
        b(a.a.k.a.a.b(this.K, i2));
    }

    public float j() {
        return this.C;
    }

    @Nullable
    public ColorStateList k() {
        return this.f13761h;
    }

    public void l(@DimenRes int i2) {
        e(this.K.getResources().getDimension(i2));
    }

    @Nullable
    public Drawable m() {
        Drawable drawable = this.t;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.h(drawable);
        }
        return null;
    }

    @Nullable
    public CharSequence n() {
        return this.w;
    }

    public void o(@DimenRes int i2) {
        g(this.K.getResources().getDimension(i2));
    }

    public float p() {
        return this.v;
    }

    public float q() {
        return this.H;
    }

    public void r(@DimenRes int i2) {
        i(this.K.getResources().getDimension(i2));
    }

    public void s(@ColorRes int i2) {
        d(a.a.k.a.a.b(this.K, i2));
    }

    public void t(@BoolRes int i2) {
        d(this.K.getResources().getBoolean(i2));
    }

    public void u(@AnimatorRes int i2) {
        a(h.a(this.K, i2));
    }

    public void v(@DimenRes int i2) {
        j(this.K.getResources().getDimension(i2));
    }

    public void w(@DimenRes int i2) {
        k(this.K.getResources().getDimension(i2));
    }

    public void x(@Px int i2) {
        this.k0 = i2;
    }

    @Nullable
    public h y() {
        return this.A;
    }

    public void z(@AnimatorRes int i2) {
        b(h.a(this.K, i2));
    }

    public void i(float f2) {
        if (this.H != f2) {
            this.H = f2;
            invalidateSelf();
            if (R()) {
                I();
            }
        }
    }

    public void j(float f2) {
        if (this.E != f2) {
            float a2 = a();
            this.E = f2;
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                I();
            }
        }
    }

    public void k(float f2) {
        if (this.D != f2) {
            float a2 = a();
            this.D = f2;
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                I();
            }
        }
    }

    public void l(float f2) {
        if (this.G != f2) {
            this.G = f2;
            invalidateSelf();
            I();
        }
    }

    public void m(float f2) {
        if (this.F != f2) {
            this.F = f2;
            invalidateSelf();
            I();
        }
    }

    private void a(AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        TypedArray c2 = k.c(this.K, attributeSet, e.i.b.c.k.Chip, i2, i3, new int[0]);
        a(e.i.b.c.q.a.a(this.K, c2, e.i.b.c.k.Chip_chipBackgroundColor));
        d(c2.getDimension(e.i.b.c.k.Chip_chipMinHeight, 0.0f));
        a(c2.getDimension(e.i.b.c.k.Chip_chipCornerRadius, 0.0f));
        c(e.i.b.c.q.a.a(this.K, c2, e.i.b.c.k.Chip_chipStrokeColor));
        f(c2.getDimension(e.i.b.c.k.Chip_chipStrokeWidth, 0.0f));
        e(e.i.b.c.q.a.a(this.K, c2, e.i.b.c.k.Chip_rippleColor));
        b(c2.getText(e.i.b.c.k.Chip_android_text));
        a(e.i.b.c.q.a.c(this.K, c2, e.i.b.c.k.Chip_android_textAppearance));
        int i4 = c2.getInt(e.i.b.c.k.Chip_android_ellipsize, 0);
        if (i4 == 1) {
            a(TextUtils.TruncateAt.START);
        } else if (i4 == 2) {
            a(TextUtils.TruncateAt.MIDDLE);
        } else if (i4 == 3) {
            a(TextUtils.TruncateAt.END);
        }
        c(c2.getBoolean(e.i.b.c.k.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c(c2.getBoolean(e.i.b.c.k.Chip_chipIconEnabled, false));
        }
        b(e.i.b.c.q.a.b(this.K, c2, e.i.b.c.k.Chip_chipIcon));
        b(e.i.b.c.q.a.a(this.K, c2, e.i.b.c.k.Chip_chipIconTint));
        c(c2.getDimension(e.i.b.c.k.Chip_chipIconSize, 0.0f));
        d(c2.getBoolean(e.i.b.c.k.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            d(c2.getBoolean(e.i.b.c.k.Chip_closeIconEnabled, false));
        }
        c(e.i.b.c.q.a.b(this.K, c2, e.i.b.c.k.Chip_closeIcon));
        d(e.i.b.c.q.a.a(this.K, c2, e.i.b.c.k.Chip_closeIconTint));
        h(c2.getDimension(e.i.b.c.k.Chip_closeIconSize, 0.0f));
        a(c2.getBoolean(e.i.b.c.k.Chip_android_checkable, false));
        b(c2.getBoolean(e.i.b.c.k.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            b(c2.getBoolean(e.i.b.c.k.Chip_checkedIconEnabled, false));
        }
        a(e.i.b.c.q.a.b(this.K, c2, e.i.b.c.k.Chip_checkedIcon));
        b(h.a(this.K, c2, e.i.b.c.k.Chip_showMotionSpec));
        a(h.a(this.K, c2, e.i.b.c.k.Chip_hideMotionSpec));
        e(c2.getDimension(e.i.b.c.k.Chip_chipStartPadding, 0.0f));
        k(c2.getDimension(e.i.b.c.k.Chip_iconStartPadding, 0.0f));
        j(c2.getDimension(e.i.b.c.k.Chip_iconEndPadding, 0.0f));
        m(c2.getDimension(e.i.b.c.k.Chip_textStartPadding, 0.0f));
        l(c2.getDimension(e.i.b.c.k.Chip_textEndPadding, 0.0f));
        i(c2.getDimension(e.i.b.c.k.Chip_closeIconStartPadding, 0.0f));
        g(c2.getDimension(e.i.b.c.k.Chip_closeIconEndPadding, 0.0f));
        b(c2.getDimension(e.i.b.c.k.Chip_chipEndPadding, 0.0f));
        x(c2.getDimensionPixelSize(e.i.b.c.k.Chip_android_maxWidth, Integer.MAX_VALUE));
        c2.recycle();
    }

    private void f(@NonNull Canvas canvas, Rect rect) {
        this.M.setColor(this.T);
        this.M.setStyle(Paint.Style.FILL);
        this.P.set(rect);
        RectF rectF = this.P;
        float f2 = this.f13760g;
        canvas.drawRoundRect(rectF, f2, f2, this.M);
    }

    private void b(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (R()) {
            float f2 = this.J + this.I + this.v + this.H + this.G;
            if (androidx.core.graphics.drawable.a.e(this) == 0) {
                rectF.right = rect.right - f2;
            } else {
                rectF.left = rect.left + f2;
            }
        }
    }

    private void d(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (R()) {
            float f2 = this.J + this.I + this.v + this.H + this.G;
            if (androidx.core.graphics.drawable.a.e(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f2;
            } else {
                int i2 = rect.left;
                rectF.left = i2;
                rectF.right = i2 + f2;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void e(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.f13765l != null) {
            float a2 = this.C + a() + this.F;
            float K = this.J + K() + this.G;
            if (androidx.core.graphics.drawable.a.e(this) == 0) {
                rectF.left = rect.left + a2;
                rectF.right = rect.right - K;
            } else {
                rectF.left = rect.left + K;
                rectF.right = rect.right - a2;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean f(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private void c(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (R()) {
            float f2 = this.J + this.I;
            if (androidx.core.graphics.drawable.a.e(this) == 0) {
                rectF.right = rect.right - f2;
                rectF.left = rectF.right - this.v;
            } else {
                rectF.left = rect.left + f2;
                rectF.right = rectF.left + this.v;
            }
            float exactCenterY = rect.exactCenterY();
            float f3 = this.v;
            rectF.top = exactCenterY - (f3 / 2.0f);
            rectF.bottom = rectF.top + f3;
        }
    }

    private void f(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void f(float f2) {
        if (this.f13762i != f2) {
            this.f13762i = f2;
            this.M.setStrokeWidth(f2);
            invalidateSelf();
        }
    }

    private static boolean b(@Nullable e.i.b.c.q.b bVar) {
        ColorStateList colorStateList;
        return (bVar == null || (colorStateList = bVar.f17922b) == null || !colorStateList.isStateful()) ? false : true;
    }

    public void b(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (this.f13764k != charSequence) {
            this.f13764k = charSequence;
            this.f13765l = a.i.l.a.b().a(charSequence);
            this.g0 = true;
            invalidateSelf();
            I();
        }
    }

    @Nullable
    public Drawable f() {
        Drawable drawable = this.p;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.h(drawable);
        }
        return null;
    }

    public void f(@DimenRes int i2) {
        b(this.K.getResources().getDimension(i2));
    }

    @Nullable
    public ColorStateList h() {
        return this.q;
    }

    public void h(@DimenRes int i2) {
        c(this.K.getResources().getDimension(i2));
    }

    private void d(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            androidx.core.graphics.drawable.a.a(drawable, androidx.core.graphics.drawable.a.e(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.t) {
                if (drawable.isStateful()) {
                    drawable.setState(r());
                }
                androidx.core.graphics.drawable.a.a(drawable, this.u);
            } else if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    public void h(float f2) {
        if (this.v != f2) {
            this.v = f2;
            invalidateSelf();
            if (R()) {
                I();
            }
        }
    }

    private static boolean e(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public void b(@Nullable Drawable drawable) {
        Drawable f2 = f();
        if (f2 != drawable) {
            float a2 = a();
            this.p = drawable != null ? androidx.core.graphics.drawable.a.i(drawable).mutate() : null;
            float a3 = a();
            f(f2);
            if (Q()) {
                d(this.p);
            }
            invalidateSelf();
            if (a2 != a3) {
                I();
            }
        }
    }

    @Nullable
    public ColorStateList c() {
        return this.f13758e;
    }

    public void g(@DrawableRes int i2) {
        b(a.a.k.a.a.c(this.K, i2));
    }

    public void c(@Nullable ColorStateList colorStateList) {
        if (this.f13761h != colorStateList) {
            this.f13761h = colorStateList;
            onStateChange(getState());
        }
    }

    public void e(@DimenRes int i2) {
        a(this.K.getResources().getDimension(i2));
    }

    public float g() {
        return this.r;
    }

    public void e(@Nullable ColorStateList colorStateList) {
        if (this.f13763j != colorStateList) {
            this.f13763j = colorStateList;
            S();
            onStateChange(getState());
        }
    }

    public void g(float f2) {
        if (this.I != f2) {
            this.I = f2;
            invalidateSelf();
            if (R()) {
                I();
            }
        }
    }

    public void c(boolean z) {
        if (this.o != z) {
            boolean Q = Q();
            this.o = z;
            boolean Q2 = Q();
            if (Q != Q2) {
                if (Q2) {
                    d(this.p);
                } else {
                    f(this.p);
                }
                invalidateSelf();
                I();
            }
        }
    }

    public void e(float f2) {
        if (this.C != f2) {
            this.C = f2;
            invalidateSelf();
            I();
        }
    }

    public void d(@ColorRes int i2) {
        a(a.a.k.a.a.b(this.K, i2));
    }

    public void b(@Nullable ColorStateList colorStateList) {
        if (this.q != colorStateList) {
            this.q = colorStateList;
            if (Q()) {
                androidx.core.graphics.drawable.a.a(this.p, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void d(float f2) {
        if (this.f13759f != f2) {
            this.f13759f = f2;
            invalidateSelf();
            I();
        }
    }

    public float e() {
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z) {
        this.j0 = z;
    }

    public void c(float f2) {
        if (this.r != f2) {
            float a2 = a();
            this.r = f2;
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                I();
            }
        }
    }

    public float d() {
        return this.f13760g;
    }

    public void b(boolean z) {
        if (this.y != z) {
            boolean P = P();
            this.y = z;
            boolean P2 = P();
            if (P != P2) {
                if (P2) {
                    d(this.z);
                } else {
                    f(this.z);
                }
                invalidateSelf();
                I();
            }
        }
    }

    public void d(boolean z) {
        if (this.s != z) {
            boolean R = R();
            this.s = z;
            boolean R2 = R();
            if (R != R2) {
                if (R2) {
                    d(this.t);
                } else {
                    f(this.t);
                }
                invalidateSelf();
                I();
            }
        }
    }

    public void c(@Nullable Drawable drawable) {
        Drawable m = m();
        if (m != drawable) {
            float K = K();
            this.t = drawable != null ? androidx.core.graphics.drawable.a.i(drawable).mutate() : null;
            float K2 = K();
            f(m);
            if (R()) {
                d(this.t);
            }
            invalidateSelf();
            if (K != K2) {
                I();
            }
        }
    }

    @Nullable
    public Drawable b() {
        return this.z;
    }

    public void d(@Nullable ColorStateList colorStateList) {
        if (this.u != colorStateList) {
            this.u = colorStateList;
            if (R()) {
                androidx.core.graphics.drawable.a.a(this.t, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void b(@DrawableRes int i2) {
        a(a.a.k.a.a.c(this.K, i2));
    }

    public void b(@Nullable h hVar) {
        this.A = hVar;
    }

    public void b(float f2) {
        if (this.J != f2) {
            this.J = f2;
            invalidateSelf();
            I();
        }
    }

    public void c(@BoolRes int i2) {
        b(this.K.getResources().getBoolean(i2));
    }

    public void a(@Nullable b bVar) {
        this.f0 = new WeakReference<>(bVar);
    }

    public void a(RectF rectF) {
        d(getBounds(), rectF);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        if (Q() || P()) {
            return this.D + this.r + this.E;
        }
        return 0.0f;
    }

    private void a(@NonNull Canvas canvas, Rect rect) {
        if (P()) {
            a(rect, this.P);
            RectF rectF = this.P;
            float f2 = rectF.left;
            float f3 = rectF.top;
            canvas.translate(f2, f3);
            this.z.setBounds(0, 0, (int) this.P.width(), (int) this.P.height());
            this.z.draw(canvas);
            canvas.translate(-f2, -f3);
        }
    }

    private void a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Q() || P()) {
            float f2 = this.C + this.D;
            if (androidx.core.graphics.drawable.a.e(this) == 0) {
                rectF.left = rect.left + f2;
                rectF.right = rectF.left + this.r;
            } else {
                rectF.right = rect.right - f2;
                rectF.left = rectF.right - this.r;
            }
            float exactCenterY = rect.exactCenterY();
            float f3 = this.r;
            rectF.top = exactCenterY - (f3 / 2.0f);
            rectF.bottom = rectF.top + f3;
        }
    }

    Paint.Align a(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f13765l != null) {
            float a2 = this.C + a() + this.F;
            if (androidx.core.graphics.drawable.a.e(this) == 0) {
                pointF.x = rect.left + a2;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - a2;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - L();
        }
        return align;
    }

    public boolean a(@NonNull int[] iArr) {
        if (Arrays.equals(this.c0, iArr)) {
            return false;
        }
        this.c0 = iArr;
        if (R()) {
            return a(getState(), iArr);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(int[] r6, int[] r7) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.a.a(int[], int[]):boolean");
    }

    private static boolean a(@Nullable int[] iArr, @AttrRes int i2) {
        if (iArr == null) {
            return false;
        }
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public void a(@Nullable ColorStateList colorStateList) {
        if (this.f13758e != colorStateList) {
            this.f13758e = colorStateList;
            onStateChange(getState());
        }
    }

    public void a(float f2) {
        if (this.f13760g != f2) {
            this.f13760g = f2;
            invalidateSelf();
        }
    }

    public void a(@Nullable e.i.b.c.q.b bVar) {
        if (this.m != bVar) {
            this.m = bVar;
            if (bVar != null) {
                bVar.c(this.K, this.L, this.n);
                this.g0 = true;
            }
            onStateChange(getState());
            I();
        }
    }

    public void a(@Nullable TextUtils.TruncateAt truncateAt) {
        this.i0 = truncateAt;
    }

    public void a(@Nullable CharSequence charSequence) {
        if (this.w != charSequence) {
            this.w = a.i.l.a.b().a(charSequence);
            invalidateSelf();
        }
    }

    public void a(@BoolRes int i2) {
        a(this.K.getResources().getBoolean(i2));
    }

    public void a(boolean z) {
        if (this.x != z) {
            this.x = z;
            float a2 = a();
            if (!z && this.V) {
                this.V = false;
            }
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                I();
            }
        }
    }

    public void a(@Nullable Drawable drawable) {
        if (this.z != drawable) {
            float a2 = a();
            this.z = drawable;
            float a3 = a();
            f(this.z);
            d(this.z);
            invalidateSelf();
            if (a2 != a3) {
                I();
            }
        }
    }

    public void a(@Nullable h hVar) {
        this.B = hVar;
    }
}
