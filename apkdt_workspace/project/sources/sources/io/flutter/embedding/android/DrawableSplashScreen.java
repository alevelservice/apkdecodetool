package io.flutter.embedding.android;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class DrawableSplashScreen implements i {

    /* renamed from: a, reason: collision with root package name */
    private final Drawable f18887a;

    /* renamed from: b, reason: collision with root package name */
    private final ImageView.ScaleType f18888b;

    /* renamed from: c, reason: collision with root package name */
    private final long f18889c;

    /* renamed from: d, reason: collision with root package name */
    private DrawableSplashScreenView f18890d;

    /* loaded from: classes2.dex */
    public static class DrawableSplashScreenView extends ImageView {
        public DrawableSplashScreenView(@NonNull Context context) {
            this(context, null, 0);
        }

        public void setSplashDrawable(@Nullable Drawable drawable) {
            setSplashDrawable(drawable, ImageView.ScaleType.FIT_XY);
        }

        public DrawableSplashScreenView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public void setSplashDrawable(@Nullable Drawable drawable, @NonNull ImageView.ScaleType scaleType) {
            setScaleType(scaleType);
            setImageDrawable(drawable);
        }

        public DrawableSplashScreenView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
        }
    }

    /* loaded from: classes2.dex */
    class a implements Animator.AnimatorListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Runnable f18891e;

        a(DrawableSplashScreen drawableSplashScreen, Runnable runnable) {
            this.f18891e = runnable;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f18891e.run();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f18891e.run();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public DrawableSplashScreen(@NonNull Drawable drawable) {
        this(drawable, ImageView.ScaleType.FIT_XY, 500L);
    }

    @Override // io.flutter.embedding.android.i
    @Nullable
    public View a(@NonNull Context context, @Nullable Bundle bundle) {
        this.f18890d = new DrawableSplashScreenView(context);
        this.f18890d.setSplashDrawable(this.f18887a, this.f18888b);
        return this.f18890d;
    }

    @Override // io.flutter.embedding.android.i
    @SuppressLint({"NewApi"})
    public /* synthetic */ boolean a() {
        return h.a(this);
    }

    @Override // io.flutter.embedding.android.i
    @Nullable
    @SuppressLint({"NewApi"})
    public /* synthetic */ Bundle b() {
        return h.b(this);
    }

    public DrawableSplashScreen(@NonNull Drawable drawable, @NonNull ImageView.ScaleType scaleType, long j2) {
        this.f18887a = drawable;
        this.f18888b = scaleType;
        this.f18889c = j2;
    }

    @Override // io.flutter.embedding.android.i
    public void a(@NonNull Runnable runnable) {
        DrawableSplashScreenView drawableSplashScreenView = this.f18890d;
        if (drawableSplashScreenView == null) {
            runnable.run();
        } else {
            drawableSplashScreenView.animate().alpha(0.0f).setDuration(this.f18889c).setListener(new a(this, runnable));
        }
    }
}
