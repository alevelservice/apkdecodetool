package com.mapbox.mapboxsdk.annotations;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* compiled from: Bubble.java */
@Deprecated
/* loaded from: classes2.dex */
class c extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    private RectF f15704a;

    /* renamed from: b, reason: collision with root package name */
    private float f15705b;

    /* renamed from: c, reason: collision with root package name */
    private float f15706c;

    /* renamed from: d, reason: collision with root package name */
    private float f15707d;

    /* renamed from: e, reason: collision with root package name */
    private float f15708e;

    /* renamed from: g, reason: collision with root package name */
    private float f15710g;

    /* renamed from: h, reason: collision with root package name */
    private Paint f15711h;

    /* renamed from: i, reason: collision with root package name */
    private Path f15712i;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private Paint f15709f = new Paint(1);

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    private Path f15713j = new Path();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull RectF rectF, @NonNull b bVar, float f2, float f3, float f4, float f5, int i2, float f6, int i3) {
        this.f15704a = rectF;
        this.f15705b = f2;
        this.f15706c = f3;
        this.f15707d = f4;
        this.f15708e = f5;
        this.f15709f.setColor(i2);
        this.f15710g = f6;
        if (f6 > 0.0f) {
            this.f15711h = new Paint(1);
            this.f15711h.setColor(i3);
            this.f15712i = new Path();
            a(bVar, this.f15713j, f6);
            a(bVar, this.f15712i, 0.0f);
            return;
        }
        a(bVar, this.f15713j, 0.0f);
    }

    private void a(@NonNull b bVar, @NonNull Path path, float f2) {
        int a2 = bVar.a();
        if (a2 == 0) {
            float f3 = this.f15708e;
            if (f3 <= 0.0f) {
                d(this.f15704a, path, f2);
                return;
            } else if (f2 > 0.0f && f2 > f3) {
                d(this.f15704a, path, f2);
                return;
            } else {
                c(this.f15704a, path, f2);
                return;
            }
        }
        if (a2 == 1) {
            float f4 = this.f15708e;
            if (f4 <= 0.0f) {
                f(this.f15704a, path, f2);
                return;
            } else if (f2 > 0.0f && f2 > f4) {
                f(this.f15704a, path, f2);
                return;
            } else {
                e(this.f15704a, path, f2);
                return;
            }
        }
        if (a2 == 2) {
            float f5 = this.f15708e;
            if (f5 <= 0.0f) {
                h(this.f15704a, path, f2);
                return;
            } else if (f2 > 0.0f && f2 > f5) {
                h(this.f15704a, path, f2);
                return;
            } else {
                g(this.f15704a, path, f2);
                return;
            }
        }
        if (a2 != 3) {
            return;
        }
        float f6 = this.f15708e;
        if (f6 <= 0.0f) {
            b(this.f15704a, path, f2);
        } else if (f2 > 0.0f && f2 > f6) {
            b(this.f15704a, path, f2);
        } else {
            a(this.f15704a, path, f2);
        }
    }

    private void b(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(rectF.left + f2, rectF.top + f2);
        path.lineTo(rectF.right - f2, rectF.top + f2);
        path.lineTo(rectF.right - f2, (rectF.bottom - this.f15706c) - f2);
        float f3 = f2 / 2.0f;
        path.lineTo(((rectF.left + this.f15705b) + this.f15707d) - f3, (rectF.bottom - this.f15706c) - f2);
        path.lineTo(rectF.left + this.f15707d + (this.f15705b / 2.0f), (rectF.bottom - f2) - f2);
        path.lineTo(rectF.left + this.f15707d + f3, (rectF.bottom - this.f15706c) - f2);
        path.lineTo(rectF.left + this.f15707d + f2, (rectF.bottom - this.f15706c) - f2);
        path.lineTo(rectF.left + f2, (rectF.bottom - this.f15706c) - f2);
        path.lineTo(rectF.left + f2, rectF.top + f2);
        path.close();
    }

    private void c(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(this.f15705b + rectF.left + this.f15708e + f2, rectF.top + f2);
        path.lineTo((rectF.width() - this.f15708e) - f2, rectF.top + f2);
        float f3 = rectF.right;
        float f4 = this.f15708e;
        float f5 = rectF.top;
        path.arcTo(new RectF(f3 - f4, f5 + f2, f3 - f2, f4 + f5), 270.0f, 90.0f);
        path.lineTo(rectF.right - f2, (rectF.bottom - this.f15708e) - f2);
        float f6 = rectF.right;
        float f7 = this.f15708e;
        float f8 = rectF.bottom;
        path.arcTo(new RectF(f6 - f7, f8 - f7, f6 - f2, f8 - f2), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f15705b + this.f15708e + f2, rectF.bottom - f2);
        float f9 = rectF.left;
        float f10 = this.f15705b;
        float f11 = rectF.bottom;
        float f12 = this.f15708e;
        path.arcTo(new RectF(f9 + f10 + f2, f11 - f12, f12 + f9 + f10, f11 - f2), 90.0f, 90.0f);
        float f13 = f2 / 2.0f;
        path.lineTo(rectF.left + this.f15705b + f2, (this.f15706c + this.f15707d) - f13);
        path.lineTo(rectF.left + f2 + f2, this.f15707d + (this.f15706c / 2.0f));
        path.lineTo(rectF.left + this.f15705b + f2, this.f15707d + f13);
        path.lineTo(rectF.left + this.f15705b + f2, rectF.top + this.f15708e + f2);
        float f14 = rectF.left;
        float f15 = this.f15705b;
        float f16 = rectF.top;
        float f17 = this.f15708e;
        path.arcTo(new RectF(f14 + f15 + f2, f2 + f16, f14 + f17 + f15, f17 + f16), 180.0f, 90.0f);
        path.close();
    }

    private void d(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(this.f15705b + rectF.left + f2, rectF.top + f2);
        path.lineTo(rectF.width() - f2, rectF.top + f2);
        path.lineTo(rectF.right - f2, rectF.bottom - f2);
        path.lineTo(rectF.left + this.f15705b + f2, rectF.bottom - f2);
        float f3 = f2 / 2.0f;
        path.lineTo(rectF.left + this.f15705b + f2, (this.f15706c + this.f15707d) - f3);
        path.lineTo(rectF.left + f2 + f2, this.f15707d + (this.f15706c / 2.0f));
        path.lineTo(rectF.left + this.f15705b + f2, this.f15707d + f3);
        path.lineTo(rectF.left + this.f15705b + f2, rectF.top + f2);
        path.close();
    }

    private void e(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(rectF.left + this.f15708e + f2, rectF.top + f2);
        path.lineTo(((rectF.width() - this.f15708e) - this.f15705b) - f2, rectF.top + f2);
        float f3 = rectF.right;
        float f4 = this.f15708e;
        float f5 = this.f15705b;
        float f6 = rectF.top;
        path.arcTo(new RectF((f3 - f4) - f5, f6 + f2, (f3 - f5) - f2, f4 + f6), 270.0f, 90.0f);
        float f7 = f2 / 2.0f;
        path.lineTo((rectF.right - this.f15705b) - f2, this.f15707d + f7);
        path.lineTo((rectF.right - f2) - f2, this.f15707d + (this.f15706c / 2.0f));
        path.lineTo((rectF.right - this.f15705b) - f2, (this.f15707d + this.f15706c) - f7);
        path.lineTo((rectF.right - this.f15705b) - f2, (rectF.bottom - this.f15708e) - f2);
        float f8 = rectF.right;
        float f9 = this.f15708e;
        float f10 = this.f15705b;
        float f11 = rectF.bottom;
        path.arcTo(new RectF((f8 - f9) - f10, f11 - f9, (f8 - f10) - f2, f11 - f2), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f15705b + f2, rectF.bottom - f2);
        float f12 = rectF.left;
        float f13 = rectF.bottom;
        float f14 = this.f15708e;
        path.arcTo(new RectF(f12 + f2, f13 - f14, f14 + f12, f13 - f2), 90.0f, 90.0f);
        float f15 = rectF.left;
        float f16 = rectF.top;
        float f17 = this.f15708e;
        path.arcTo(new RectF(f15 + f2, f2 + f16, f15 + f17, f17 + f16), 180.0f, 90.0f);
        path.close();
    }

    private void f(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(rectF.left + f2, rectF.top + f2);
        path.lineTo((rectF.width() - this.f15705b) - f2, rectF.top + f2);
        float f3 = f2 / 2.0f;
        path.lineTo((rectF.right - this.f15705b) - f2, this.f15707d + f3);
        path.lineTo((rectF.right - f2) - f2, this.f15707d + (this.f15706c / 2.0f));
        path.lineTo((rectF.right - this.f15705b) - f2, (this.f15707d + this.f15706c) - f3);
        path.lineTo((rectF.right - this.f15705b) - f2, rectF.bottom - f2);
        path.lineTo(rectF.left + f2, rectF.bottom - f2);
        path.lineTo(rectF.left + f2, rectF.top + f2);
        path.close();
    }

    private void g(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(rectF.left + Math.min(this.f15707d, this.f15708e) + f2, rectF.top + this.f15706c + f2);
        float f3 = f2 / 2.0f;
        path.lineTo(rectF.left + this.f15707d + f3, rectF.top + this.f15706c + f2);
        path.lineTo(rectF.left + (this.f15705b / 2.0f) + this.f15707d, rectF.top + f2 + f2);
        path.lineTo(((rectF.left + this.f15705b) + this.f15707d) - f3, rectF.top + this.f15706c + f2);
        path.lineTo((rectF.right - this.f15708e) - f2, rectF.top + this.f15706c + f2);
        float f4 = rectF.right;
        float f5 = this.f15708e;
        float f6 = rectF.top;
        float f7 = this.f15706c;
        path.arcTo(new RectF(f4 - f5, f6 + f7 + f2, f4 - f2, f5 + f6 + f7), 270.0f, 90.0f);
        path.lineTo(rectF.right - f2, (rectF.bottom - this.f15708e) - f2);
        float f8 = rectF.right;
        float f9 = this.f15708e;
        float f10 = rectF.bottom;
        path.arcTo(new RectF(f8 - f9, f10 - f9, f8 - f2, f10 - f2), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f15708e + f2, rectF.bottom - f2);
        float f11 = rectF.left;
        float f12 = rectF.bottom;
        float f13 = this.f15708e;
        path.arcTo(new RectF(f11 + f2, f12 - f13, f13 + f11, f12 - f2), 90.0f, 90.0f);
        path.lineTo(rectF.left + f2, rectF.top + this.f15706c + this.f15708e + f2);
        float f14 = rectF.left;
        float f15 = f14 + f2;
        float f16 = rectF.top;
        float f17 = this.f15706c;
        float f18 = f16 + f17 + f2;
        float f19 = this.f15708e;
        path.arcTo(new RectF(f15, f18, f14 + f19, f19 + f16 + f17), 180.0f, 90.0f);
        path.close();
    }

    private void h(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(rectF.left + this.f15707d + f2, rectF.top + this.f15706c + f2);
        float f3 = f2 / 2.0f;
        path.lineTo(rectF.left + this.f15707d + f3, rectF.top + this.f15706c + f2);
        path.lineTo(rectF.left + (this.f15705b / 2.0f) + this.f15707d, rectF.top + f2 + f2);
        path.lineTo(((rectF.left + this.f15705b) + this.f15707d) - f3, rectF.top + this.f15706c + f2);
        path.lineTo(rectF.right - f2, rectF.top + this.f15706c + f2);
        path.lineTo(rectF.right - f2, rectF.bottom - f2);
        path.lineTo(rectF.left + f2, rectF.bottom - f2);
        path.lineTo(rectF.left + f2, rectF.top + this.f15706c + f2);
        path.lineTo(rectF.left + this.f15707d + f2, rectF.top + this.f15706c + f2);
        path.close();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f15710g > 0.0f) {
            canvas.drawPath(this.f15712i, this.f15711h);
        }
        canvas.drawPath(this.f15713j, this.f15709f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f15704a.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f15704a.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f15709f.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f15709f.setColorFilter(colorFilter);
    }

    private void a(@NonNull RectF rectF, @NonNull Path path, float f2) {
        path.moveTo(rectF.left + this.f15708e + f2, rectF.top + f2);
        path.lineTo((rectF.width() - this.f15708e) - f2, rectF.top + f2);
        float f3 = rectF.right;
        float f4 = this.f15708e;
        float f5 = rectF.top;
        path.arcTo(new RectF(f3 - f4, f5 + f2, f3 - f2, f4 + f5), 270.0f, 90.0f);
        path.lineTo(rectF.right - f2, ((rectF.bottom - this.f15706c) - this.f15708e) - f2);
        float f6 = rectF.right;
        float f7 = this.f15708e;
        float f8 = rectF.bottom;
        float f9 = this.f15706c;
        path.arcTo(new RectF(f6 - f7, (f8 - f7) - f9, f6 - f2, (f8 - f9) - f2), 0.0f, 90.0f);
        float f10 = f2 / 2.0f;
        path.lineTo(((rectF.left + this.f15705b) + this.f15707d) - f10, (rectF.bottom - this.f15706c) - f2);
        path.lineTo(rectF.left + this.f15707d + (this.f15705b / 2.0f), (rectF.bottom - f2) - f2);
        path.lineTo(rectF.left + this.f15707d + f10, (rectF.bottom - this.f15706c) - f2);
        path.lineTo(rectF.left + Math.min(this.f15708e, this.f15707d) + f2, (rectF.bottom - this.f15706c) - f2);
        float f11 = rectF.left;
        float f12 = rectF.bottom;
        float f13 = this.f15708e;
        float f14 = this.f15706c;
        path.arcTo(new RectF(f11 + f2, (f12 - f13) - f14, f13 + f11, (f12 - f14) - f2), 90.0f, 90.0f);
        path.lineTo(rectF.left + f2, rectF.top + this.f15708e + f2);
        float f15 = rectF.left;
        float f16 = rectF.top;
        float f17 = this.f15708e;
        path.arcTo(new RectF(f15 + f2, f2 + f16, f15 + f17, f17 + f16), 180.0f, 90.0f);
        path.close();
    }
}
