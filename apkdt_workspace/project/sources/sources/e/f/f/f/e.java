package e.f.f.f;

import android.annotation.SuppressLint;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* compiled from: DrawableProperties.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private int f17319a = -1;

    /* renamed from: b, reason: collision with root package name */
    private boolean f17320b = false;

    /* renamed from: c, reason: collision with root package name */
    private ColorFilter f17321c = null;

    /* renamed from: d, reason: collision with root package name */
    private int f17322d = -1;

    /* renamed from: e, reason: collision with root package name */
    private int f17323e = -1;

    public void a(int i2) {
        this.f17319a = i2;
    }

    public void b(boolean z) {
        this.f17323e = z ? 1 : 0;
    }

    public void a(ColorFilter colorFilter) {
        this.f17321c = colorFilter;
        this.f17320b = true;
    }

    public void a(boolean z) {
        this.f17322d = z ? 1 : 0;
    }

    @SuppressLint({"Range"})
    public void a(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        int i2 = this.f17319a;
        if (i2 != -1) {
            drawable.setAlpha(i2);
        }
        if (this.f17320b) {
            drawable.setColorFilter(this.f17321c);
        }
        int i3 = this.f17322d;
        if (i3 != -1) {
            drawable.setDither(i3 != 0);
        }
        int i4 = this.f17323e;
        if (i4 != -1) {
            drawable.setFilterBitmap(i4 != 0);
        }
    }
}
