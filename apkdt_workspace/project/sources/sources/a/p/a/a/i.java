package a.p.a.a;

import a.i.h.c;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: VectorDrawableCompat.java */
/* loaded from: classes.dex */
public class i extends a.p.a.a.h {
    static final PorterDuff.Mode n = PorterDuff.Mode.SRC_IN;

    /* renamed from: f, reason: collision with root package name */
    private h f494f;

    /* renamed from: g, reason: collision with root package name */
    private PorterDuffColorFilter f495g;

    /* renamed from: h, reason: collision with root package name */
    private ColorFilter f496h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f497i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f498j;

    /* renamed from: k, reason: collision with root package name */
    private final float[] f499k;

    /* renamed from: l, reason: collision with root package name */
    private final Matrix f500l;
    private final Rect m;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class b extends f {
        b() {
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (androidx.core.content.res.f.a(xmlPullParser, "pathData")) {
                TypedArray a2 = androidx.core.content.res.f.a(resources, theme, attributeSet, a.p.a.a.a.f469d);
                a(a2, xmlPullParser);
                a2.recycle();
            }
        }

        @Override // a.p.a.a.i.f
        public boolean b() {
            return true;
        }

        b(b bVar) {
            super(bVar);
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f522b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f521a = a.i.h.c.a(string2);
            }
            this.f523c = androidx.core.content.res.f.b(typedArray, xmlPullParser, "fillType", 2, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean a(int[] iArr) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class h extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        int f537a;

        /* renamed from: b, reason: collision with root package name */
        g f538b;

        /* renamed from: c, reason: collision with root package name */
        ColorStateList f539c;

        /* renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f540d;

        /* renamed from: e, reason: collision with root package name */
        boolean f541e;

        /* renamed from: f, reason: collision with root package name */
        Bitmap f542f;

        /* renamed from: g, reason: collision with root package name */
        ColorStateList f543g;

        /* renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f544h;

        /* renamed from: i, reason: collision with root package name */
        int f545i;

        /* renamed from: j, reason: collision with root package name */
        boolean f546j;

        /* renamed from: k, reason: collision with root package name */
        boolean f547k;

        /* renamed from: l, reason: collision with root package name */
        Paint f548l;

        public h(h hVar) {
            this.f539c = null;
            this.f540d = i.n;
            if (hVar != null) {
                this.f537a = hVar.f537a;
                this.f538b = new g(hVar.f538b);
                Paint paint = hVar.f538b.f529e;
                if (paint != null) {
                    this.f538b.f529e = new Paint(paint);
                }
                Paint paint2 = hVar.f538b.f528d;
                if (paint2 != null) {
                    this.f538b.f528d = new Paint(paint2);
                }
                this.f539c = hVar.f539c;
                this.f540d = hVar.f540d;
                this.f541e = hVar.f541e;
            }
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f542f, (Rect) null, rect, a(colorFilter));
        }

        public boolean b() {
            return this.f538b.getRootAlpha() < 255;
        }

        public void c(int i2, int i3) {
            this.f542f.eraseColor(0);
            this.f538b.a(new Canvas(this.f542f), i2, i3, (ColorFilter) null);
        }

        public void d() {
            this.f543g = this.f539c;
            this.f544h = this.f540d;
            this.f545i = this.f538b.getRootAlpha();
            this.f546j = this.f541e;
            this.f547k = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f537a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new i(this);
        }

        public void b(int i2, int i3) {
            if (this.f542f == null || !a(i2, i3)) {
                this.f542f = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                this.f547k = true;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }

        public Paint a(ColorFilter colorFilter) {
            if (!b() && colorFilter == null) {
                return null;
            }
            if (this.f548l == null) {
                this.f548l = new Paint();
                this.f548l.setFilterBitmap(true);
            }
            this.f548l.setAlpha(this.f538b.getRootAlpha());
            this.f548l.setColorFilter(colorFilter);
            return this.f548l;
        }

        public boolean c() {
            return this.f538b.a();
        }

        public boolean a(int i2, int i3) {
            return i2 == this.f542f.getWidth() && i3 == this.f542f.getHeight();
        }

        public boolean a() {
            return !this.f547k && this.f543g == this.f539c && this.f544h == this.f540d && this.f546j == this.f541e && this.f545i == this.f538b.getRootAlpha();
        }

        public h() {
            this.f539c = null;
            this.f540d = i.n;
            this.f538b = new g();
        }

        public boolean a(int[] iArr) {
            boolean a2 = this.f538b.a(iArr);
            this.f547k |= a2;
            return a2;
        }
    }

    i() {
        this.f498j = true;
        this.f499k = new float[9];
        this.f500l = new Matrix();
        this.m = new Rect();
        this.f494f = new h();
    }

    public static i createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a(String str) {
        return this.f494f.f538b.p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f493e;
        if (drawable == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.a(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.m);
        if (this.m.width() <= 0 || this.m.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f496h;
        if (colorFilter == null) {
            colorFilter = this.f495g;
        }
        canvas.getMatrix(this.f500l);
        this.f500l.getValues(this.f499k);
        float abs = Math.abs(this.f499k[0]);
        float abs2 = Math.abs(this.f499k[4]);
        float abs3 = Math.abs(this.f499k[1]);
        float abs4 = Math.abs(this.f499k[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (this.m.width() * abs));
        int min2 = Math.min(2048, (int) (this.m.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        Rect rect = this.m;
        canvas.translate(rect.left, rect.top);
        if (a()) {
            canvas.translate(this.m.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.m.offsetTo(0, 0);
        this.f494f.b(min, min2);
        if (!this.f498j) {
            this.f494f.c(min, min2);
        } else if (!this.f494f.a()) {
            this.f494f.c(min, min2);
            this.f494f.d();
        }
        this.f494f.a(canvas, colorFilter, this.m);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.c(drawable);
        }
        return this.f494f.f538b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f494f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.d(drawable);
        }
        return this.f496h;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f493e;
        if (drawable != null && Build.VERSION.SDK_INT >= 24) {
            return new C0020i(drawable.getConstantState());
        }
        this.f494f.f537a = getChangingConfigurations();
        return this.f494f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.f494f.f538b.f534j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f494f.f538b.f533i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.f(drawable);
        }
        return this.f494f.f541e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((hVar = this.f494f) != null && (hVar.c() || ((colorStateList = this.f494f.f539c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f497i && super.mutate() == this) {
            this.f494f = new h(this.f494f);
            this.f497i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        h hVar = this.f494f;
        ColorStateList colorStateList = hVar.f539c;
        if (colorStateList != null && (mode = hVar.f540d) != null) {
            this.f495g = a(this.f495g, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!hVar.c() || !hVar.a(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f494f.f538b.getRootAlpha() != i2) {
            this.f494f.f538b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, z);
        } else {
            this.f494f.f541e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.b(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            return;
        }
        h hVar = this.f494f;
        if (hVar.f539c != colorStateList) {
            hVar.f539c = colorStateList;
            this.f495g = a(this.f495g, colorStateList, hVar.f540d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, mode);
            return;
        }
        h hVar = this.f494f;
        if (hVar.f540d != mode) {
            hVar.f540d = mode;
            this.f495g = a(this.f495g, hVar.f539c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    @RequiresApi(24)
    /* renamed from: a.p.a.a.i$i, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0020i extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f549a;

        public C0020i(Drawable.ConstantState constantState) {
            this.f549a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f549a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f549a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i();
            iVar.f493e = (VectorDrawable) this.f549a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.f493e = (VectorDrawable) this.f549a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.f493e = (VectorDrawable) this.f549a.newDrawable(resources, theme);
            return iVar;
        }
    }

    PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f496h = colorFilter;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class c extends f {

        /* renamed from: e, reason: collision with root package name */
        private int[] f501e;

        /* renamed from: f, reason: collision with root package name */
        androidx.core.content.res.b f502f;

        /* renamed from: g, reason: collision with root package name */
        float f503g;

        /* renamed from: h, reason: collision with root package name */
        androidx.core.content.res.b f504h;

        /* renamed from: i, reason: collision with root package name */
        float f505i;

        /* renamed from: j, reason: collision with root package name */
        float f506j;

        /* renamed from: k, reason: collision with root package name */
        float f507k;

        /* renamed from: l, reason: collision with root package name */
        float f508l;
        float m;
        Paint.Cap n;
        Paint.Join o;
        float p;

        c() {
            this.f503g = 0.0f;
            this.f505i = 1.0f;
            this.f506j = 1.0f;
            this.f507k = 0.0f;
            this.f508l = 1.0f;
            this.m = 0.0f;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
        }

        private Paint.Cap a(int i2, Paint.Cap cap) {
            if (i2 == 0) {
                return Paint.Cap.BUTT;
            }
            if (i2 != 1) {
                return i2 != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        float getFillAlpha() {
            return this.f506j;
        }

        @ColorInt
        int getFillColor() {
            return this.f504h.a();
        }

        float getStrokeAlpha() {
            return this.f505i;
        }

        @ColorInt
        int getStrokeColor() {
            return this.f502f.a();
        }

        float getStrokeWidth() {
            return this.f503g;
        }

        float getTrimPathEnd() {
            return this.f508l;
        }

        float getTrimPathOffset() {
            return this.m;
        }

        float getTrimPathStart() {
            return this.f507k;
        }

        void setFillAlpha(float f2) {
            this.f506j = f2;
        }

        void setFillColor(int i2) {
            this.f504h.a(i2);
        }

        void setStrokeAlpha(float f2) {
            this.f505i = f2;
        }

        void setStrokeColor(int i2) {
            this.f502f.a(i2);
        }

        void setStrokeWidth(float f2) {
            this.f503g = f2;
        }

        void setTrimPathEnd(float f2) {
            this.f508l = f2;
        }

        void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        void setTrimPathStart(float f2) {
            this.f507k = f2;
        }

        private Paint.Join a(int i2, Paint.Join join) {
            if (i2 == 0) {
                return Paint.Join.MITER;
            }
            if (i2 != 1) {
                return i2 != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = androidx.core.content.res.f.a(resources, theme, attributeSet, a.p.a.a.a.f468c);
            a(a2, xmlPullParser, theme);
            a2.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f501e = null;
            if (androidx.core.content.res.f.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f522b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f521a = a.i.h.c.a(string2);
                }
                this.f504h = androidx.core.content.res.f.a(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f506j = androidx.core.content.res.f.a(typedArray, xmlPullParser, "fillAlpha", 12, this.f506j);
                this.n = a(androidx.core.content.res.f.b(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.n);
                this.o = a(androidx.core.content.res.f.b(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.o);
                this.p = androidx.core.content.res.f.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.p);
                this.f502f = androidx.core.content.res.f.a(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f505i = androidx.core.content.res.f.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f505i);
                this.f503g = androidx.core.content.res.f.a(typedArray, xmlPullParser, "strokeWidth", 4, this.f503g);
                this.f508l = androidx.core.content.res.f.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.f508l);
                this.m = androidx.core.content.res.f.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.m);
                this.f507k = androidx.core.content.res.f.a(typedArray, xmlPullParser, "trimPathStart", 5, this.f507k);
                this.f523c = androidx.core.content.res.f.b(typedArray, xmlPullParser, "fillType", 13, this.f523c);
            }
        }

        c(c cVar) {
            super(cVar);
            this.f503g = 0.0f;
            this.f505i = 1.0f;
            this.f506j = 1.0f;
            this.f507k = 0.0f;
            this.f508l = 1.0f;
            this.m = 0.0f;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
            this.f501e = cVar.f501e;
            this.f502f = cVar.f502f;
            this.f503g = cVar.f503g;
            this.f505i = cVar.f505i;
            this.f504h = cVar.f504h;
            this.f523c = cVar.f523c;
            this.f506j = cVar.f506j;
            this.f507k = cVar.f507k;
            this.f508l = cVar.f508l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }

        @Override // a.p.a.a.i.e
        public boolean a() {
            return this.f504h.d() || this.f502f.d();
        }

        @Override // a.p.a.a.i.e
        public boolean a(int[] iArr) {
            return this.f502f.a(iArr) | this.f504h.a(iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class d extends e {

        /* renamed from: a, reason: collision with root package name */
        final Matrix f509a;

        /* renamed from: b, reason: collision with root package name */
        final ArrayList<e> f510b;

        /* renamed from: c, reason: collision with root package name */
        float f511c;

        /* renamed from: d, reason: collision with root package name */
        private float f512d;

        /* renamed from: e, reason: collision with root package name */
        private float f513e;

        /* renamed from: f, reason: collision with root package name */
        private float f514f;

        /* renamed from: g, reason: collision with root package name */
        private float f515g;

        /* renamed from: h, reason: collision with root package name */
        private float f516h;

        /* renamed from: i, reason: collision with root package name */
        private float f517i;

        /* renamed from: j, reason: collision with root package name */
        final Matrix f518j;

        /* renamed from: k, reason: collision with root package name */
        int f519k;

        /* renamed from: l, reason: collision with root package name */
        private int[] f520l;
        private String m;

        public d(d dVar, a.e.a<String, Object> aVar) {
            super();
            f bVar;
            this.f509a = new Matrix();
            this.f510b = new ArrayList<>();
            this.f511c = 0.0f;
            this.f512d = 0.0f;
            this.f513e = 0.0f;
            this.f514f = 1.0f;
            this.f515g = 1.0f;
            this.f516h = 0.0f;
            this.f517i = 0.0f;
            this.f518j = new Matrix();
            this.m = null;
            this.f511c = dVar.f511c;
            this.f512d = dVar.f512d;
            this.f513e = dVar.f513e;
            this.f514f = dVar.f514f;
            this.f515g = dVar.f515g;
            this.f516h = dVar.f516h;
            this.f517i = dVar.f517i;
            this.f520l = dVar.f520l;
            this.m = dVar.m;
            this.f519k = dVar.f519k;
            String str = this.m;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f518j.set(dVar.f518j);
            ArrayList<e> arrayList = dVar.f510b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                e eVar = arrayList.get(i2);
                if (eVar instanceof d) {
                    this.f510b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else if (eVar instanceof b) {
                        bVar = new b((b) eVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f510b.add(bVar);
                    String str2 = bVar.f522b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        private void b() {
            this.f518j.reset();
            this.f518j.postTranslate(-this.f512d, -this.f513e);
            this.f518j.postScale(this.f514f, this.f515g);
            this.f518j.postRotate(this.f511c, 0.0f, 0.0f);
            this.f518j.postTranslate(this.f516h + this.f512d, this.f517i + this.f513e);
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = androidx.core.content.res.f.a(resources, theme, attributeSet, a.p.a.a.a.f467b);
            a(a2, xmlPullParser);
            a2.recycle();
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.f518j;
        }

        public float getPivotX() {
            return this.f512d;
        }

        public float getPivotY() {
            return this.f513e;
        }

        public float getRotation() {
            return this.f511c;
        }

        public float getScaleX() {
            return this.f514f;
        }

        public float getScaleY() {
            return this.f515g;
        }

        public float getTranslateX() {
            return this.f516h;
        }

        public float getTranslateY() {
            return this.f517i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f512d) {
                this.f512d = f2;
                b();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f513e) {
                this.f513e = f2;
                b();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.f511c) {
                this.f511c = f2;
                b();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f514f) {
                this.f514f = f2;
                b();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.f515g) {
                this.f515g = f2;
                b();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.f516h) {
                this.f516h = f2;
                b();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.f517i) {
                this.f517i = f2;
                b();
            }
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f520l = null;
            this.f511c = androidx.core.content.res.f.a(typedArray, xmlPullParser, "rotation", 5, this.f511c);
            this.f512d = typedArray.getFloat(1, this.f512d);
            this.f513e = typedArray.getFloat(2, this.f513e);
            this.f514f = androidx.core.content.res.f.a(typedArray, xmlPullParser, "scaleX", 3, this.f514f);
            this.f515g = androidx.core.content.res.f.a(typedArray, xmlPullParser, "scaleY", 4, this.f515g);
            this.f516h = androidx.core.content.res.f.a(typedArray, xmlPullParser, "translateX", 6, this.f516h);
            this.f517i = androidx.core.content.res.f.a(typedArray, xmlPullParser, "translateY", 7, this.f517i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            b();
        }

        @Override // a.p.a.a.i.e
        public boolean a() {
            for (int i2 = 0; i2 < this.f510b.size(); i2++) {
                if (this.f510b.get(i2).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // a.p.a.a.i.e
        public boolean a(int[] iArr) {
            boolean z = false;
            for (int i2 = 0; i2 < this.f510b.size(); i2++) {
                z |= this.f510b.get(i2).a(iArr);
            }
            return z;
        }

        public d() {
            super();
            this.f509a = new Matrix();
            this.f510b = new ArrayList<>();
            this.f511c = 0.0f;
            this.f512d = 0.0f;
            this.f513e = 0.0f;
            this.f514f = 1.0f;
            this.f515g = 1.0f;
            this.f516h = 0.0f;
            this.f517i = 0.0f;
            this.f518j = new Matrix();
            this.m = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static abstract class f extends e {

        /* renamed from: a, reason: collision with root package name */
        protected c.b[] f521a;

        /* renamed from: b, reason: collision with root package name */
        String f522b;

        /* renamed from: c, reason: collision with root package name */
        int f523c;

        /* renamed from: d, reason: collision with root package name */
        int f524d;

        public f() {
            super();
            this.f521a = null;
            this.f523c = 0;
        }

        public void a(Path path) {
            path.reset();
            c.b[] bVarArr = this.f521a;
            if (bVarArr != null) {
                c.b.a(bVarArr, path);
            }
        }

        public boolean b() {
            return false;
        }

        public c.b[] getPathData() {
            return this.f521a;
        }

        public String getPathName() {
            return this.f522b;
        }

        public void setPathData(c.b[] bVarArr) {
            if (!a.i.h.c.a(this.f521a, bVarArr)) {
                this.f521a = a.i.h.c.a(bVarArr);
            } else {
                a.i.h.c.b(this.f521a, bVarArr);
            }
        }

        public f(f fVar) {
            super();
            this.f521a = null;
            this.f523c = 0;
            this.f522b = fVar.f522b;
            this.f524d = fVar.f524d;
            this.f521a = a.i.h.c.a(fVar.f521a);
        }
    }

    @Nullable
    public static i a(@NonNull Resources resources, @DrawableRes int i2, @Nullable Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.f493e = androidx.core.content.res.e.b(resources, i2, theme);
            new C0020i(iVar.f493e.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return createFromXmlInner(resources, (XmlPullParser) xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f494f;
        hVar.f538b = new g();
        TypedArray a2 = androidx.core.content.res.f.a(resources, theme, attributeSet, a.p.a.a.a.f466a);
        a(a2, xmlPullParser, theme);
        a2.recycle();
        hVar.f537a = getChangingConfigurations();
        hVar.f547k = true;
        a(resources, xmlPullParser, attributeSet, theme);
        this.f495g = a(this.f495g, hVar.f539c, hVar.f540d);
    }

    i(@NonNull h hVar) {
        this.f498j = true;
        this.f499k = new float[9];
        this.f500l = new Matrix();
        this.m = new Rect();
        this.f494f = hVar;
        this.f495g = a(this.f495g, hVar.f539c, hVar.f540d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class g {
        private static final Matrix q = new Matrix();

        /* renamed from: a, reason: collision with root package name */
        private final Path f525a;

        /* renamed from: b, reason: collision with root package name */
        private final Path f526b;

        /* renamed from: c, reason: collision with root package name */
        private final Matrix f527c;

        /* renamed from: d, reason: collision with root package name */
        Paint f528d;

        /* renamed from: e, reason: collision with root package name */
        Paint f529e;

        /* renamed from: f, reason: collision with root package name */
        private PathMeasure f530f;

        /* renamed from: g, reason: collision with root package name */
        private int f531g;

        /* renamed from: h, reason: collision with root package name */
        final d f532h;

        /* renamed from: i, reason: collision with root package name */
        float f533i;

        /* renamed from: j, reason: collision with root package name */
        float f534j;

        /* renamed from: k, reason: collision with root package name */
        float f535k;

        /* renamed from: l, reason: collision with root package name */
        float f536l;
        int m;
        String n;
        Boolean o;
        final a.e.a<String, Object> p;

        public g() {
            this.f527c = new Matrix();
            this.f533i = 0.0f;
            this.f534j = 0.0f;
            this.f535k = 0.0f;
            this.f536l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new a.e.a<>();
            this.f532h = new d();
            this.f525a = new Path();
            this.f526b = new Path();
        }

        private static float a(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        private void a(d dVar, Matrix matrix, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            dVar.f509a.set(matrix);
            dVar.f509a.preConcat(dVar.f518j);
            canvas.save();
            for (int i4 = 0; i4 < dVar.f510b.size(); i4++) {
                e eVar = dVar.f510b.get(i4);
                if (eVar instanceof d) {
                    a((d) eVar, dVar.f509a, canvas, i2, i3, colorFilter);
                } else if (eVar instanceof f) {
                    a(dVar, (f) eVar, canvas, i2, i3, colorFilter);
                }
            }
            canvas.restore();
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.m = i2;
        }

        public void a(Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            a(this.f532h, q, canvas, i2, i3, colorFilter);
        }

        public g(g gVar) {
            this.f527c = new Matrix();
            this.f533i = 0.0f;
            this.f534j = 0.0f;
            this.f535k = 0.0f;
            this.f536l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new a.e.a<>();
            this.f532h = new d(gVar.f532h, this.p);
            this.f525a = new Path(gVar.f525a);
            this.f526b = new Path(gVar.f526b);
            this.f533i = gVar.f533i;
            this.f534j = gVar.f534j;
            this.f535k = gVar.f535k;
            this.f536l = gVar.f536l;
            this.f531g = gVar.f531g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                this.p.put(str, this);
            }
            this.o = gVar.o;
        }

        private void a(d dVar, f fVar, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            float f2 = i2 / this.f535k;
            float f3 = i3 / this.f536l;
            float min = Math.min(f2, f3);
            Matrix matrix = dVar.f509a;
            this.f527c.set(matrix);
            this.f527c.postScale(f2, f3);
            float a2 = a(matrix);
            if (a2 == 0.0f) {
                return;
            }
            fVar.a(this.f525a);
            Path path = this.f525a;
            this.f526b.reset();
            if (fVar.b()) {
                this.f526b.setFillType(fVar.f523c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f526b.addPath(path, this.f527c);
                canvas.clipPath(this.f526b);
                return;
            }
            c cVar = (c) fVar;
            if (cVar.f507k != 0.0f || cVar.f508l != 1.0f) {
                float f4 = cVar.f507k;
                float f5 = cVar.m;
                float f6 = (f4 + f5) % 1.0f;
                float f7 = (cVar.f508l + f5) % 1.0f;
                if (this.f530f == null) {
                    this.f530f = new PathMeasure();
                }
                this.f530f.setPath(this.f525a, false);
                float length = this.f530f.getLength();
                float f8 = f6 * length;
                float f9 = f7 * length;
                path.reset();
                if (f8 > f9) {
                    this.f530f.getSegment(f8, length, path, true);
                    this.f530f.getSegment(0.0f, f9, path, true);
                } else {
                    this.f530f.getSegment(f8, f9, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f526b.addPath(path, this.f527c);
            if (cVar.f504h.e()) {
                androidx.core.content.res.b bVar = cVar.f504h;
                if (this.f529e == null) {
                    this.f529e = new Paint(1);
                    this.f529e.setStyle(Paint.Style.FILL);
                }
                Paint paint = this.f529e;
                if (bVar.c()) {
                    Shader b2 = bVar.b();
                    b2.setLocalMatrix(this.f527c);
                    paint.setShader(b2);
                    paint.setAlpha(Math.round(cVar.f506j * 255.0f));
                } else {
                    paint.setShader(null);
                    paint.setAlpha(255);
                    paint.setColor(i.a(bVar.a(), cVar.f506j));
                }
                paint.setColorFilter(colorFilter);
                this.f526b.setFillType(cVar.f523c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f526b, paint);
            }
            if (cVar.f502f.e()) {
                androidx.core.content.res.b bVar2 = cVar.f502f;
                if (this.f528d == null) {
                    this.f528d = new Paint(1);
                    this.f528d.setStyle(Paint.Style.STROKE);
                }
                Paint paint2 = this.f528d;
                Paint.Join join = cVar.o;
                if (join != null) {
                    paint2.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.n;
                if (cap != null) {
                    paint2.setStrokeCap(cap);
                }
                paint2.setStrokeMiter(cVar.p);
                if (bVar2.c()) {
                    Shader b3 = bVar2.b();
                    b3.setLocalMatrix(this.f527c);
                    paint2.setShader(b3);
                    paint2.setAlpha(Math.round(cVar.f505i * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(i.a(bVar2.a(), cVar.f505i));
                }
                paint2.setColorFilter(colorFilter);
                paint2.setStrokeWidth(cVar.f503g * min * a2);
                canvas.drawPath(this.f526b, paint2);
            }
        }

        private float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float a2 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            if (max > 0.0f) {
                return Math.abs(a2) / max;
            }
            return 0.0f;
        }

        public boolean a() {
            if (this.o == null) {
                this.o = Boolean.valueOf(this.f532h.a());
            }
            return this.o.booleanValue();
        }

        public boolean a(int[] iArr) {
            return this.f532h.a(iArr);
        }
    }

    static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (Color.alpha(i2) * f2)) << 24);
    }

    private static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 != 9) {
            switch (i2) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_ATOP;
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        h hVar = this.f494f;
        g gVar = hVar.f538b;
        hVar.f540d = a(androidx.core.content.res.f.b(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList a2 = androidx.core.content.res.f.a(typedArray, xmlPullParser, theme, "tint", 1);
        if (a2 != null) {
            hVar.f539c = a2;
        }
        hVar.f541e = androidx.core.content.res.f.a(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f541e);
        gVar.f535k = androidx.core.content.res.f.a(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f535k);
        gVar.f536l = androidx.core.content.res.f.a(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f536l);
        if (gVar.f535k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (gVar.f536l > 0.0f) {
            gVar.f533i = typedArray.getDimension(3, gVar.f533i);
            gVar.f534j = typedArray.getDimension(2, gVar.f534j);
            if (gVar.f533i <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (gVar.f534j > 0.0f) {
                gVar.setAlpha(androidx.core.content.res.f.a(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    gVar.n = string;
                    gVar.p.put(string, gVar);
                    return;
                }
                return;
            }
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    private void a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        h hVar = this.f494f;
        g gVar = hVar.f538b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f532h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f510b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.p.put(cVar.getPathName(), cVar);
                    }
                    z = false;
                    hVar.f537a = cVar.f524d | hVar.f537a;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f510b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.p.put(bVar.getPathName(), bVar);
                    }
                    hVar.f537a = bVar.f524d | hVar.f537a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f510b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.p.put(dVar2.getGroupName(), dVar2);
                    }
                    hVar.f537a = dVar2.f519k | hVar.f537a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f498j = z;
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.e(this) == 1;
    }
}
