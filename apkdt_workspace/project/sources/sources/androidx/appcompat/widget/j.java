package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* compiled from: AppCompatSeekBarHelper.java */
/* loaded from: classes.dex */
class j extends i {

    /* renamed from: d, reason: collision with root package name */
    private final SeekBar f1373d;

    /* renamed from: e, reason: collision with root package name */
    private Drawable f1374e;

    /* renamed from: f, reason: collision with root package name */
    private ColorStateList f1375f;

    /* renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f1376g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f1377h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f1378i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(SeekBar seekBar) {
        super(seekBar);
        this.f1375f = null;
        this.f1376g = null;
        this.f1377h = false;
        this.f1378i = false;
        this.f1373d = seekBar;
    }

    private void d() {
        if (this.f1374e != null) {
            if (this.f1377h || this.f1378i) {
                this.f1374e = androidx.core.graphics.drawable.a.i(this.f1374e.mutate());
                if (this.f1377h) {
                    androidx.core.graphics.drawable.a.a(this.f1374e, this.f1375f);
                }
                if (this.f1378i) {
                    androidx.core.graphics.drawable.a.a(this.f1374e, this.f1376g);
                }
                if (this.f1374e.isStateful()) {
                    this.f1374e.setState(this.f1373d.getDrawableState());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.i
    public void a(AttributeSet attributeSet, int i2) {
        super.a(attributeSet, i2);
        d0 a2 = d0.a(this.f1373d.getContext(), attributeSet, a.a.j.AppCompatSeekBar, i2, 0);
        SeekBar seekBar = this.f1373d;
        ViewCompat.a(seekBar, seekBar.getContext(), a.a.j.AppCompatSeekBar, attributeSet, a2.a(), i2, 0);
        Drawable c2 = a2.c(a.a.j.AppCompatSeekBar_android_thumb);
        if (c2 != null) {
            this.f1373d.setThumb(c2);
        }
        a(a2.b(a.a.j.AppCompatSeekBar_tickMark));
        if (a2.g(a.a.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1376g = p.a(a2.d(a.a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1376g);
            this.f1378i = true;
        }
        if (a2.g(a.a.j.AppCompatSeekBar_tickMarkTint)) {
            this.f1375f = a2.a(a.a.j.AppCompatSeekBar_tickMarkTint);
            this.f1377h = true;
        }
        a2.b();
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        Drawable drawable = this.f1374e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1373d.getDrawableState())) {
            this.f1373d.invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable drawable = this.f1374e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void a(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f1374e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1374e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1373d);
            androidx.core.graphics.drawable.a.a(drawable, ViewCompat.n(this.f1373d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1373d.getDrawableState());
            }
            d();
        }
        this.f1373d.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        if (this.f1374e != null) {
            int max = this.f1373d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1374e.getIntrinsicWidth();
                int intrinsicHeight = this.f1374e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i3 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1374e.setBounds(-i2, -i3, i2, i3);
                float width = ((this.f1373d.getWidth() - this.f1373d.getPaddingLeft()) - this.f1373d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f1373d.getPaddingLeft(), this.f1373d.getHeight() / 2);
                for (int i4 = 0; i4 <= max; i4++) {
                    this.f1374e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
