package com.google.android.material.internal;

import android.R;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.d0;
import androidx.core.view.ViewCompat;

/* compiled from: CollapsingTextHelper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class c {
    private static final boolean T;
    private static final Paint U;
    private Paint A;
    private float B;
    private float C;
    private float D;
    private float E;
    private int[] F;
    private boolean G;
    private TimeInterpolator J;
    private TimeInterpolator K;
    private float L;
    private float M;
    private float N;
    private int O;
    private float P;
    private float Q;
    private float R;
    private int S;

    /* renamed from: a, reason: collision with root package name */
    private final View f13854a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f13855b;

    /* renamed from: c, reason: collision with root package name */
    private float f13856c;

    /* renamed from: k, reason: collision with root package name */
    private ColorStateList f13864k;

    /* renamed from: l, reason: collision with root package name */
    private ColorStateList f13865l;
    private float m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private Typeface s;
    private Typeface t;
    private Typeface u;
    private CharSequence v;
    private CharSequence w;
    private boolean x;
    private boolean y;
    private Bitmap z;

    /* renamed from: g, reason: collision with root package name */
    private int f13860g = 16;

    /* renamed from: h, reason: collision with root package name */
    private int f13861h = 16;

    /* renamed from: i, reason: collision with root package name */
    private float f13862i = 15.0f;

    /* renamed from: j, reason: collision with root package name */
    private float f13863j = 15.0f;
    private final TextPaint H = new TextPaint(129);
    private final TextPaint I = new TextPaint(this.H);

    /* renamed from: e, reason: collision with root package name */
    private final Rect f13858e = new Rect();

    /* renamed from: d, reason: collision with root package name */
    private final Rect f13857d = new Rect();

    /* renamed from: f, reason: collision with root package name */
    private final RectF f13859f = new RectF();

    static {
        T = Build.VERSION.SDK_INT < 18;
        U = null;
        Paint paint = U;
        if (paint != null) {
            paint.setAntiAlias(true);
            U.setColor(-65281);
        }
    }

    public c(View view) {
        this.f13854a = view;
    }

    private Typeface e(int i2) {
        TypedArray obtainStyledAttributes = this.f13854a.getContext().obtainStyledAttributes(i2, new int[]{R.attr.fontFamily});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void n() {
        float f2 = this.E;
        d(this.f13863j);
        CharSequence charSequence = this.w;
        float measureText = charSequence != null ? this.H.measureText(charSequence, 0, charSequence.length()) : 0.0f;
        int a2 = androidx.core.view.e.a(this.f13861h, this.x ? 1 : 0);
        int i2 = a2 & 112;
        if (i2 == 48) {
            this.n = this.f13858e.top - this.H.ascent();
        } else if (i2 != 80) {
            this.n = this.f13858e.centerY() + (((this.H.descent() - this.H.ascent()) / 2.0f) - this.H.descent());
        } else {
            this.n = this.f13858e.bottom;
        }
        int i3 = a2 & 8388615;
        if (i3 == 1) {
            this.p = this.f13858e.centerX() - (measureText / 2.0f);
        } else if (i3 != 5) {
            this.p = this.f13858e.left;
        } else {
            this.p = this.f13858e.right - measureText;
        }
        d(this.f13862i);
        CharSequence charSequence2 = this.w;
        float measureText2 = charSequence2 != null ? this.H.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int a3 = androidx.core.view.e.a(this.f13860g, this.x ? 1 : 0);
        int i4 = a3 & 112;
        if (i4 == 48) {
            this.m = this.f13857d.top - this.H.ascent();
        } else if (i4 != 80) {
            this.m = this.f13857d.centerY() + (((this.H.descent() - this.H.ascent()) / 2.0f) - this.H.descent());
        } else {
            this.m = this.f13857d.bottom;
        }
        int i5 = a3 & 8388615;
        if (i5 == 1) {
            this.o = this.f13857d.centerX() - (measureText2 / 2.0f);
        } else if (i5 != 5) {
            this.o = this.f13857d.left;
        } else {
            this.o = this.f13857d.right - measureText2;
        }
        p();
        f(f2);
    }

    private void o() {
        c(this.f13856c);
    }

    private void p() {
        Bitmap bitmap = this.z;
        if (bitmap != null) {
            bitmap.recycle();
            this.z = null;
        }
    }

    private void q() {
        if (this.z != null || this.f13857d.isEmpty() || TextUtils.isEmpty(this.w)) {
            return;
        }
        c(0.0f);
        this.B = this.H.ascent();
        this.C = this.H.descent();
        TextPaint textPaint = this.H;
        CharSequence charSequence = this.w;
        int round = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
        int round2 = Math.round(this.C - this.B);
        if (round <= 0 || round2 <= 0) {
            return;
        }
        this.z = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.z);
        CharSequence charSequence2 = this.w;
        canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, round2 - this.H.descent(), this.H);
        if (this.A == null) {
            this.A = new Paint(3);
        }
    }

    @ColorInt
    private int r() {
        int[] iArr = this.F;
        if (iArr != null) {
            return this.f13864k.getColorForState(iArr, 0);
        }
        return this.f13864k.getDefaultColor();
    }

    public void a(TimeInterpolator timeInterpolator) {
        this.J = timeInterpolator;
        m();
    }

    public void b(TimeInterpolator timeInterpolator) {
        this.K = timeInterpolator;
        m();
    }

    public int c() {
        return this.f13861h;
    }

    public float d() {
        a(this.I);
        return -this.I.ascent();
    }

    @ColorInt
    @VisibleForTesting
    public int f() {
        int[] iArr = this.F;
        if (iArr != null) {
            return this.f13865l.getColorForState(iArr, 0);
        }
        return this.f13865l.getDefaultColor();
    }

    public int g() {
        return this.f13860g;
    }

    public Typeface h() {
        Typeface typeface = this.t;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float i() {
        return this.f13856c;
    }

    public CharSequence j() {
        return this.v;
    }

    public final boolean k() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f13865l;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f13864k) != null && colorStateList.isStateful());
    }

    void l() {
        this.f13855b = this.f13858e.width() > 0 && this.f13858e.height() > 0 && this.f13857d.width() > 0 && this.f13857d.height() > 0;
    }

    public void m() {
        if (this.f13854a.getHeight() <= 0 || this.f13854a.getWidth() <= 0) {
            return;
        }
        n();
        o();
    }

    public void c(int i2) {
        d0 a2 = d0.a(this.f13854a.getContext(), i2, a.a.j.TextAppearance);
        if (a2.g(a.a.j.TextAppearance_android_textColor)) {
            this.f13864k = a2.a(a.a.j.TextAppearance_android_textColor);
        }
        if (a2.g(a.a.j.TextAppearance_android_textSize)) {
            this.f13862i = a2.c(a.a.j.TextAppearance_android_textSize, (int) this.f13862i);
        }
        this.S = a2.d(a.a.j.TextAppearance_android_shadowColor, 0);
        this.Q = a2.b(a.a.j.TextAppearance_android_shadowDx, 0.0f);
        this.R = a2.b(a.a.j.TextAppearance_android_shadowDy, 0.0f);
        this.P = a2.b(a.a.j.TextAppearance_android_shadowRadius, 0.0f);
        a2.b();
        if (Build.VERSION.SDK_INT >= 16) {
            this.t = e(i2);
        }
        m();
    }

    public void a(float f2) {
        if (this.f13862i != f2) {
            this.f13862i = f2;
            m();
        }
    }

    public void b(ColorStateList colorStateList) {
        if (this.f13864k != colorStateList) {
            this.f13864k = colorStateList;
            m();
        }
    }

    public void d(int i2) {
        if (this.f13860g != i2) {
            this.f13860g = i2;
            m();
        }
    }

    private void f(float f2) {
        d(f2);
        this.y = T && this.D != 1.0f;
        if (this.y) {
            q();
        }
        ViewCompat.H(this.f13854a);
    }

    private void d(float f2) {
        float f3;
        boolean z;
        boolean z2;
        if (this.v == null) {
            return;
        }
        float width = this.f13858e.width();
        float width2 = this.f13857d.width();
        if (a(f2, this.f13863j)) {
            float f4 = this.f13863j;
            this.D = 1.0f;
            Typeface typeface = this.u;
            Typeface typeface2 = this.s;
            if (typeface != typeface2) {
                this.u = typeface2;
                z2 = true;
            } else {
                z2 = false;
            }
            f3 = f4;
            z = z2;
        } else {
            f3 = this.f13862i;
            Typeface typeface3 = this.u;
            Typeface typeface4 = this.t;
            if (typeface3 != typeface4) {
                this.u = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (a(f2, this.f13862i)) {
                this.D = 1.0f;
            } else {
                this.D = f2 / this.f13862i;
            }
            float f5 = this.f13863j / this.f13862i;
            width = width2 * f5 > width ? Math.min(width / f5, width2) : width2;
        }
        if (width > 0.0f) {
            z = this.E != f3 || this.G || z;
            this.E = f3;
            this.G = false;
        }
        if (this.w == null || z) {
            this.H.setTextSize(this.E);
            this.H.setTypeface(this.u);
            this.H.setLinearText(this.D != 1.0f);
            CharSequence ellipsize = TextUtils.ellipsize(this.v, this.H, width, TextUtils.TruncateAt.END);
            if (TextUtils.equals(ellipsize, this.w)) {
                return;
            }
            this.w = ellipsize;
            this.x = b(this.w);
        }
    }

    public void a(ColorStateList colorStateList) {
        if (this.f13865l != colorStateList) {
            this.f13865l = colorStateList;
            m();
        }
    }

    public void b(int i2, int i3, int i4, int i5) {
        if (a(this.f13857d, i2, i3, i4, i5)) {
            return;
        }
        this.f13857d.set(i2, i3, i4, i5);
        this.G = true;
        l();
    }

    public Typeface e() {
        Typeface typeface = this.s;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    private void e(float f2) {
        this.f13859f.left = a(this.f13857d.left, this.f13858e.left, f2, this.J);
        this.f13859f.top = a(this.m, this.n, f2, this.J);
        this.f13859f.right = a(this.f13857d.right, this.f13858e.right, f2, this.J);
        this.f13859f.bottom = a(this.f13857d.bottom, this.f13858e.bottom, f2, this.J);
    }

    public void a(int i2, int i3, int i4, int i5) {
        if (a(this.f13858e, i2, i3, i4, i5)) {
            return;
        }
        this.f13858e.set(i2, i3, i4, i5);
        this.G = true;
        l();
    }

    public void b(int i2) {
        if (this.f13861h != i2) {
            this.f13861h = i2;
            m();
        }
    }

    public float a() {
        if (this.v == null) {
            return 0.0f;
        }
        a(this.I);
        TextPaint textPaint = this.I;
        CharSequence charSequence = this.v;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void b(Typeface typeface) {
        if (this.t != typeface) {
            this.t = typeface;
            m();
        }
    }

    public void a(RectF rectF) {
        boolean b2 = b(this.v);
        Rect rect = this.f13858e;
        rectF.left = !b2 ? rect.left : rect.right - a();
        Rect rect2 = this.f13858e;
        rectF.top = rect2.top;
        rectF.right = !b2 ? rectF.left + a() : rect2.right;
        rectF.bottom = this.f13858e.top + d();
    }

    public void b(float f2) {
        float a2 = a.i.j.a.a(f2, 0.0f, 1.0f);
        if (a2 != this.f13856c) {
            this.f13856c = a2;
            o();
        }
    }

    private boolean b(CharSequence charSequence) {
        return (ViewCompat.n(this.f13854a) == 1 ? a.i.l.e.f351d : a.i.l.e.f350c).a(charSequence, 0, charSequence.length());
    }

    private void a(TextPaint textPaint) {
        textPaint.setTextSize(this.f13863j);
        textPaint.setTypeface(this.s);
    }

    public void c(Typeface typeface) {
        this.t = typeface;
        this.s = typeface;
        m();
    }

    public void a(int i2) {
        d0 a2 = d0.a(this.f13854a.getContext(), i2, a.a.j.TextAppearance);
        if (a2.g(a.a.j.TextAppearance_android_textColor)) {
            this.f13865l = a2.a(a.a.j.TextAppearance_android_textColor);
        }
        if (a2.g(a.a.j.TextAppearance_android_textSize)) {
            this.f13863j = a2.c(a.a.j.TextAppearance_android_textSize, (int) this.f13863j);
        }
        this.O = a2.d(a.a.j.TextAppearance_android_shadowColor, 0);
        this.M = a2.b(a.a.j.TextAppearance_android_shadowDx, 0.0f);
        this.N = a2.b(a.a.j.TextAppearance_android_shadowDy, 0.0f);
        this.L = a2.b(a.a.j.TextAppearance_android_shadowRadius, 0.0f);
        a2.b();
        if (Build.VERSION.SDK_INT >= 16) {
            this.s = e(i2);
        }
        m();
    }

    public ColorStateList b() {
        return this.f13865l;
    }

    private void c(float f2) {
        e(f2);
        this.q = a(this.o, this.p, f2, this.J);
        this.r = a(this.m, this.n, f2, this.J);
        f(a(this.f13862i, this.f13863j, f2, this.K));
        if (this.f13865l != this.f13864k) {
            this.H.setColor(a(r(), f(), f2));
        } else {
            this.H.setColor(f());
        }
        this.H.setShadowLayer(a(this.P, this.L, f2, (TimeInterpolator) null), a(this.Q, this.M, f2, (TimeInterpolator) null), a(this.R, this.N, f2, (TimeInterpolator) null), a(this.S, this.O, f2));
        ViewCompat.H(this.f13854a);
    }

    public void a(Typeface typeface) {
        if (this.s != typeface) {
            this.s = typeface;
            m();
        }
    }

    public final boolean a(int[] iArr) {
        this.F = iArr;
        if (!k()) {
            return false;
        }
        m();
        return true;
    }

    public void a(Canvas canvas) {
        float ascent;
        int save = canvas.save();
        if (this.w != null && this.f13855b) {
            float f2 = this.q;
            float f3 = this.r;
            boolean z = this.y && this.z != null;
            if (z) {
                ascent = this.B * this.D;
            } else {
                ascent = this.H.ascent() * this.D;
                this.H.descent();
            }
            if (z) {
                f3 += ascent;
            }
            float f4 = f3;
            float f5 = this.D;
            if (f5 != 1.0f) {
                canvas.scale(f5, f5, f2, f4);
            }
            if (z) {
                canvas.drawBitmap(this.z, f2, f4, this.A);
            } else {
                CharSequence charSequence = this.w;
                canvas.drawText(charSequence, 0, charSequence.length(), f2, f4, this.H);
            }
        }
        canvas.restoreToCount(save);
    }

    public void a(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.v)) {
            this.v = charSequence;
            this.w = null;
            p();
            m();
        }
    }

    private static boolean a(float f2, float f3) {
        return Math.abs(f2 - f3) < 0.001f;
    }

    private static int a(int i2, int i3, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((Color.alpha(i2) * f3) + (Color.alpha(i3) * f2)), (int) ((Color.red(i2) * f3) + (Color.red(i3) * f2)), (int) ((Color.green(i2) * f3) + (Color.green(i3) * f2)), (int) ((Color.blue(i2) * f3) + (Color.blue(i3) * f2)));
    }

    private static float a(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return e.i.b.c.l.a.a(f2, f3, f4);
    }

    private static boolean a(Rect rect, int i2, int i3, int i4, int i5) {
        return rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5;
    }
}
