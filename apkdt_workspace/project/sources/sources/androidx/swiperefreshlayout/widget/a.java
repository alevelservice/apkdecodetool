package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleImageView.java */
/* loaded from: classes.dex */
public class a extends ImageView {

    /* renamed from: e, reason: collision with root package name */
    private Animation.AnimationListener f2878e;

    /* renamed from: f, reason: collision with root package name */
    int f2879f;

    /* compiled from: CircleImageView.java */
    /* renamed from: androidx.swiperefreshlayout.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0050a extends OvalShape {

        /* renamed from: e, reason: collision with root package name */
        private RadialGradient f2880e;

        /* renamed from: f, reason: collision with root package name */
        private Paint f2881f = new Paint();

        C0050a(int i2) {
            a.this.f2879f = i2;
            a((int) rect().width());
        }

        private void a(int i2) {
            float f2 = i2 / 2;
            this.f2880e = new RadialGradient(f2, f2, a.this.f2879f, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f2881f.setShader(this.f2880e);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = a.this.getWidth() / 2;
            float height = a.this.getHeight() / 2;
            canvas.drawCircle(width, height, width, this.f2881f);
            canvas.drawCircle(width, height, r0 - a.this.f2879f, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f2, float f3) {
            super.onResize(f2, f3);
            a((int) f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, int i2) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f2 = getContext().getResources().getDisplayMetrics().density;
        int i3 = (int) (1.75f * f2);
        int i4 = (int) (0.0f * f2);
        this.f2879f = (int) (3.5f * f2);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.a(this, f2 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C0050a(this.f2879f));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f2879f, i4, i3, 503316480);
            int i5 = this.f2879f;
            setPadding(i5, i5, i5, i5);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(i2);
        ViewCompat.a(this, shapeDrawable);
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f2878e;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f2878e;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f2879f * 2), getMeasuredHeight() + (this.f2879f * 2));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i2);
        }
    }

    public void a(Animation.AnimationListener animationListener) {
        this.f2878e = animationListener;
    }
}
