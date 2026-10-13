package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;

/* compiled from: CutoutDrawable.java */
/* loaded from: classes.dex */
class a extends GradientDrawable {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f13986a = new Paint(1);

    /* renamed from: b, reason: collision with root package name */
    private final RectF f13987b;

    /* renamed from: c, reason: collision with root package name */
    private int f13988c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        c();
        this.f13987b = new RectF();
    }

    private void c() {
        this.f13986a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f13986a.setColor(-1);
        this.f13986a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return !this.f13987b.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        b(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f13987b, this.f13986a);
        a(canvas);
    }

    private void b(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (a(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            c(canvas);
        }
    }

    void a(float f2, float f3, float f4, float f5) {
        RectF rectF = this.f13987b;
        if (f2 == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        this.f13987b.set(f2, f3, f4, f5);
        invalidateSelf();
    }

    private void c(@NonNull Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f13988c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f13988c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RectF rectF) {
        a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    private void a(@NonNull Canvas canvas) {
        if (a(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.f13988c);
    }

    private boolean a(Drawable.Callback callback) {
        return callback instanceof View;
    }
}
