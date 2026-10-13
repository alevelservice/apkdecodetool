package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* compiled from: AppCompatBackgroundHelper.java */
/* loaded from: classes.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final View f1306a;

    /* renamed from: d, reason: collision with root package name */
    private b0 f1309d;

    /* renamed from: e, reason: collision with root package name */
    private b0 f1310e;

    /* renamed from: f, reason: collision with root package name */
    private b0 f1311f;

    /* renamed from: c, reason: collision with root package name */
    private int f1308c = -1;

    /* renamed from: b, reason: collision with root package name */
    private final f f1307b = f.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull View view) {
        this.f1306a = view;
    }

    private boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 21 ? this.f1309d != null : i2 == 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable AttributeSet attributeSet, int i2) {
        d0 a2 = d0.a(this.f1306a.getContext(), attributeSet, a.a.j.ViewBackgroundHelper, i2, 0);
        View view = this.f1306a;
        ViewCompat.a(view, view.getContext(), a.a.j.ViewBackgroundHelper, attributeSet, a2.a(), i2, 0);
        try {
            if (a2.g(a.a.j.ViewBackgroundHelper_android_background)) {
                this.f1308c = a2.g(a.a.j.ViewBackgroundHelper_android_background, -1);
                ColorStateList b2 = this.f1307b.b(this.f1306a.getContext(), this.f1308c);
                if (b2 != null) {
                    a(b2);
                }
            }
            if (a2.g(a.a.j.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.a(this.f1306a, a2.a(a.a.j.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.g(a.a.j.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.a(this.f1306a, p.a(a2.d(a.a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a2.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ColorStateList colorStateList) {
        if (this.f1310e == null) {
            this.f1310e = new b0();
        }
        b0 b0Var = this.f1310e;
        b0Var.f1283a = colorStateList;
        b0Var.f1286d = true;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        b0 b0Var = this.f1310e;
        if (b0Var != null) {
            return b0Var.f1284b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList b() {
        b0 b0Var = this.f1310e;
        if (b0Var != null) {
            return b0Var.f1283a;
        }
        return null;
    }

    private boolean b(@NonNull Drawable drawable) {
        if (this.f1311f == null) {
            this.f1311f = new b0();
        }
        b0 b0Var = this.f1311f;
        b0Var.a();
        ColorStateList f2 = ViewCompat.f(this.f1306a);
        if (f2 != null) {
            b0Var.f1286d = true;
            b0Var.f1283a = f2;
        }
        PorterDuff.Mode g2 = ViewCompat.g(this.f1306a);
        if (g2 != null) {
            b0Var.f1285c = true;
            b0Var.f1284b = g2;
        }
        if (!b0Var.f1286d && !b0Var.f1285c) {
            return false;
        }
        f.a(drawable, b0Var, this.f1306a.getDrawableState());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        this.f1308c = i2;
        f fVar = this.f1307b;
        a(fVar != null ? fVar.b(this.f1306a.getContext(), i2) : null);
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Drawable drawable) {
        this.f1308c = -1;
        a((ColorStateList) null);
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.f1310e == null) {
            this.f1310e = new b0();
        }
        b0 b0Var = this.f1310e;
        b0Var.f1284b = mode;
        b0Var.f1285c = true;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Drawable background = this.f1306a.getBackground();
        if (background != null) {
            if (d() && b(background)) {
                return;
            }
            b0 b0Var = this.f1310e;
            if (b0Var != null) {
                f.a(background, b0Var, this.f1306a.getDrawableState());
                return;
            }
            b0 b0Var2 = this.f1309d;
            if (b0Var2 != null) {
                f.a(background, b0Var2, this.f1306a.getDrawableState());
            }
        }
    }

    void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1309d == null) {
                this.f1309d = new b0();
            }
            b0 b0Var = this.f1309d;
            b0Var.f1283a = colorStateList;
            b0Var.f1286d = true;
        } else {
            this.f1309d = null;
        }
        a();
    }
}
