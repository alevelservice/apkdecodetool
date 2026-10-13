package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

/* compiled from: AppCompatImageHelper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final ImageView f1357a;

    /* renamed from: b, reason: collision with root package name */
    private b0 f1358b;

    /* renamed from: c, reason: collision with root package name */
    private b0 f1359c;

    /* renamed from: d, reason: collision with root package name */
    private b0 f1360d;

    public h(@NonNull ImageView imageView) {
        this.f1357a = imageView;
    }

    private boolean e() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 21 ? this.f1358b != null : i2 == 21;
    }

    public void a(AttributeSet attributeSet, int i2) {
        int g2;
        d0 a2 = d0.a(this.f1357a.getContext(), attributeSet, a.a.j.AppCompatImageView, i2, 0);
        ImageView imageView = this.f1357a;
        ViewCompat.a(imageView, imageView.getContext(), a.a.j.AppCompatImageView, attributeSet, a2.a(), i2, 0);
        try {
            Drawable drawable = this.f1357a.getDrawable();
            if (drawable == null && (g2 = a2.g(a.a.j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = a.a.k.a.a.c(this.f1357a.getContext(), g2)) != null) {
                this.f1357a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                p.b(drawable);
            }
            if (a2.g(a.a.j.AppCompatImageView_tint)) {
                androidx.core.widget.e.a(this.f1357a, a2.a(a.a.j.AppCompatImageView_tint));
            }
            if (a2.g(a.a.j.AppCompatImageView_tintMode)) {
                androidx.core.widget.e.a(this.f1357a, p.a(a2.d(a.a.j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            a2.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList b() {
        b0 b0Var = this.f1359c;
        if (b0Var != null) {
            return b0Var.f1283a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        b0 b0Var = this.f1359c;
        if (b0Var != null) {
            return b0Var.f1284b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1357a.getBackground() instanceof RippleDrawable);
    }

    public void a(int i2) {
        if (i2 != 0) {
            Drawable c2 = a.a.k.a.a.c(this.f1357a.getContext(), i2);
            if (c2 != null) {
                p.b(c2);
            }
            this.f1357a.setImageDrawable(c2);
        } else {
            this.f1357a.setImageDrawable(null);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.f1359c == null) {
            this.f1359c = new b0();
        }
        b0 b0Var = this.f1359c;
        b0Var.f1283a = colorStateList;
        b0Var.f1286d = true;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.f1359c == null) {
            this.f1359c = new b0();
        }
        b0 b0Var = this.f1359c;
        b0Var.f1284b = mode;
        b0Var.f1285c = true;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Drawable drawable = this.f1357a.getDrawable();
        if (drawable != null) {
            p.b(drawable);
        }
        if (drawable != null) {
            if (e() && a(drawable)) {
                return;
            }
            b0 b0Var = this.f1359c;
            if (b0Var != null) {
                f.a(drawable, b0Var, this.f1357a.getDrawableState());
                return;
            }
            b0 b0Var2 = this.f1358b;
            if (b0Var2 != null) {
                f.a(drawable, b0Var2, this.f1357a.getDrawableState());
            }
        }
    }

    private boolean a(@NonNull Drawable drawable) {
        if (this.f1360d == null) {
            this.f1360d = new b0();
        }
        b0 b0Var = this.f1360d;
        b0Var.a();
        ColorStateList a2 = androidx.core.widget.e.a(this.f1357a);
        if (a2 != null) {
            b0Var.f1286d = true;
            b0Var.f1283a = a2;
        }
        PorterDuff.Mode b2 = androidx.core.widget.e.b(this.f1357a);
        if (b2 != null) {
            b0Var.f1285c = true;
            b0Var.f1284b = b2;
        }
        if (!b0Var.f1286d && !b0Var.f1285c) {
            return false;
        }
        f.a(drawable, b0Var, this.f1357a.getDrawableState());
        return true;
    }
}
