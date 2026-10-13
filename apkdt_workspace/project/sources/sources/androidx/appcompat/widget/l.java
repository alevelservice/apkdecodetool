package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.e;
import java.lang.ref.WeakReference;

/* compiled from: AppCompatTextHelper.java */
/* loaded from: classes.dex */
class l {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final TextView f1382a;

    /* renamed from: b, reason: collision with root package name */
    private b0 f1383b;

    /* renamed from: c, reason: collision with root package name */
    private b0 f1384c;

    /* renamed from: d, reason: collision with root package name */
    private b0 f1385d;

    /* renamed from: e, reason: collision with root package name */
    private b0 f1386e;

    /* renamed from: f, reason: collision with root package name */
    private b0 f1387f;

    /* renamed from: g, reason: collision with root package name */
    private b0 f1388g;

    /* renamed from: h, reason: collision with root package name */
    private b0 f1389h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    private final m f1390i;

    /* renamed from: j, reason: collision with root package name */
    private int f1391j = 0;

    /* renamed from: k, reason: collision with root package name */
    private int f1392k = -1;

    /* renamed from: l, reason: collision with root package name */
    private Typeface f1393l;
    private boolean m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppCompatTextHelper.java */
    /* loaded from: classes.dex */
    public class a extends e.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1394a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1395b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ WeakReference f1396c;

        a(int i2, int i3, WeakReference weakReference) {
            this.f1394a = i2;
            this.f1395b = i3;
            this.f1396c = weakReference;
        }

        @Override // androidx.core.content.res.e.a
        public void a(int i2) {
        }

        @Override // androidx.core.content.res.e.a
        public void a(@NonNull Typeface typeface) {
            int i2;
            if (Build.VERSION.SDK_INT >= 28 && (i2 = this.f1394a) != -1) {
                typeface = Typeface.create(typeface, i2, (this.f1395b & 2) != 0);
            }
            l.this.a(this.f1396c, typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(@NonNull TextView textView) {
        this.f1382a = textView;
        this.f1390i = new m(this.f1382a);
    }

    private void l() {
        b0 b0Var = this.f1389h;
        this.f1383b = b0Var;
        this.f1384c = b0Var;
        this.f1385d = b0Var;
        this.f1386e = b0Var;
        this.f1387f = b0Var;
        this.f1388g = b0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:157:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0124  */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(@androidx.annotation.Nullable android.util.AttributeSet r19, int r20) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.l.a(android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void b() {
        this.f1390i.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f1390i.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f1390i.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f1390i.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] f() {
        return this.f1390i.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f1390i.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList h() {
        b0 b0Var = this.f1389h;
        if (b0Var != null) {
            return b0Var.f1283a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public PorterDuff.Mode i() {
        b0 b0Var = this.f1389h;
        if (b0Var != null) {
            return b0Var.f1284b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean j() {
        return this.f1390i.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        a();
    }

    private void b(int i2, float f2) {
        this.f1390i.a(i2, f2);
    }

    private void a(Context context, d0 d0Var) {
        int i2;
        String d2;
        this.f1391j = d0Var.d(a.a.j.TextAppearance_android_textStyle, this.f1391j);
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1392k = d0Var.d(a.a.j.TextAppearance_android_textFontWeight, -1);
            if (this.f1392k != -1) {
                this.f1391j = (this.f1391j & 2) | 0;
            }
        }
        if (!d0Var.g(a.a.j.TextAppearance_android_fontFamily) && !d0Var.g(a.a.j.TextAppearance_fontFamily)) {
            if (d0Var.g(a.a.j.TextAppearance_android_typeface)) {
                this.m = false;
                int d3 = d0Var.d(a.a.j.TextAppearance_android_typeface, 1);
                if (d3 == 1) {
                    this.f1393l = Typeface.SANS_SERIF;
                    return;
                } else if (d3 == 2) {
                    this.f1393l = Typeface.SERIF;
                    return;
                } else {
                    if (d3 != 3) {
                        return;
                    }
                    this.f1393l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1393l = null;
        if (d0Var.g(a.a.j.TextAppearance_fontFamily)) {
            i2 = a.a.j.TextAppearance_fontFamily;
        } else {
            i2 = a.a.j.TextAppearance_android_fontFamily;
        }
        int i3 = this.f1392k;
        int i4 = this.f1391j;
        if (!context.isRestricted()) {
            try {
                Typeface a2 = d0Var.a(i2, this.f1391j, new a(i3, i4, new WeakReference(this.f1382a)));
                if (a2 != null) {
                    if (Build.VERSION.SDK_INT >= 28 && this.f1392k != -1) {
                        this.f1393l = Typeface.create(Typeface.create(a2, 0), this.f1392k, (this.f1391j & 2) != 0);
                    } else {
                        this.f1393l = a2;
                    }
                }
                this.m = this.f1393l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1393l != null || (d2 = d0Var.d(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28 && this.f1392k != -1) {
            this.f1393l = Typeface.create(Typeface.create(d2, 0), this.f1392k, (this.f1391j & 2) != 0);
        } else {
            this.f1393l = Typeface.create(d2, this.f1391j);
        }
    }

    void a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.m) {
            this.f1393l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f1391j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i2) {
        String d2;
        ColorStateList a2;
        d0 a3 = d0.a(context, i2, a.a.j.TextAppearance);
        if (a3.g(a.a.j.TextAppearance_textAllCaps)) {
            a(a3.a(a.a.j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a3.g(a.a.j.TextAppearance_android_textColor) && (a2 = a3.a(a.a.j.TextAppearance_android_textColor)) != null) {
            this.f1382a.setTextColor(a2);
        }
        if (a3.g(a.a.j.TextAppearance_android_textSize) && a3.c(a.a.j.TextAppearance_android_textSize, -1) == 0) {
            this.f1382a.setTextSize(0, 0.0f);
        }
        a(context, a3);
        if (Build.VERSION.SDK_INT >= 26 && a3.g(a.a.j.TextAppearance_fontVariationSettings) && (d2 = a3.d(a.a.j.TextAppearance_fontVariationSettings)) != null) {
            this.f1382a.setFontVariationSettings(d2);
        }
        a3.b();
        Typeface typeface = this.f1393l;
        if (typeface != null) {
            this.f1382a.setTypeface(typeface, this.f1391j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f1382a.setAllCaps(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f1383b != null || this.f1384c != null || this.f1385d != null || this.f1386e != null) {
            Drawable[] compoundDrawables = this.f1382a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1383b);
            a(compoundDrawables[1], this.f1384c);
            a(compoundDrawables[2], this.f1385d);
            a(compoundDrawables[3], this.f1386e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1387f == null && this.f1388g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1382a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f1387f);
            a(compoundDrawablesRelative[2], this.f1388g);
        }
    }

    private void a(Drawable drawable, b0 b0Var) {
        if (drawable == null || b0Var == null) {
            return;
        }
        f.a(drawable, b0Var, this.f1382a.getDrawableState());
    }

    private static b0 a(Context context, f fVar, int i2) {
        ColorStateList b2 = fVar.b(context, i2);
        if (b2 == null) {
            return null;
        }
        b0 b0Var = new b0();
        b0Var.f1286d = true;
        b0Var.f1283a = b2;
        return b0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(boolean z, int i2, int i3, int i4, int i5) {
        if (androidx.core.widget.b.f2035a) {
            return;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(int i2, float f2) {
        if (androidx.core.widget.b.f2035a || j()) {
            return;
        }
        b(i2, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.f1390i.b(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, int i3, int i4, int i5) {
        this.f1390i.a(i2, i3, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull int[] iArr, int i2) {
        this.f1390i.a(iArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable ColorStateList colorStateList) {
        if (this.f1389h == null) {
            this.f1389h = new b0();
        }
        b0 b0Var = this.f1389h;
        b0Var.f1283a = colorStateList;
        b0Var.f1286d = colorStateList != null;
        l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable PorterDuff.Mode mode) {
        if (this.f1389h == null) {
            this.f1389h = new b0();
        }
        b0 b0Var = this.f1389h;
        b0Var.f1284b = mode;
        b0Var.f1285c = mode != null;
        l();
    }

    private void a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1382a.getCompoundDrawablesRelative();
            TextView textView = this.f1382a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative2 = this.f1382a.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                TextView textView2 = this.f1382a;
                Drawable drawable7 = compoundDrawablesRelative2[0];
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable8 = compoundDrawablesRelative2[2];
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative2[3];
                }
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.f1382a.getCompoundDrawables();
        TextView textView3 = this.f1382a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }
}
