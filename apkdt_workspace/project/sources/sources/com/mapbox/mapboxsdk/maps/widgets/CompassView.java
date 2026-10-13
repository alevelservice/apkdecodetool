package com.mapbox.mapboxsdk.maps.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.a0;
import androidx.core.view.c0;
import com.mapbox.mapboxsdk.maps.n;

/* loaded from: classes2.dex */
public final class CompassView extends ImageView implements Runnable {
    public static final long TIME_MAP_NORTH_ANIMATION = 150;
    public static final long TIME_WAIT_IDLE = 500;

    /* renamed from: e, reason: collision with root package name */
    private float f16157e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f16158f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private a0 f16159g;

    /* renamed from: h, reason: collision with root package name */
    private n.g f16160h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f16161i;

    /* loaded from: classes2.dex */
    class a extends c0 {
        a() {
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            CompassView.this.setLayerType(0, null);
            CompassView.this.setVisibility(4);
            CompassView.this.resetAnimation();
        }
    }

    public CompassView(@NonNull Context context) {
        super(context);
        this.f16157e = 0.0f;
        this.f16158f = true;
        this.f16161i = false;
        a(context);
    }

    private void a(Context context) {
        setEnabled(false);
        int i2 = (int) (context.getResources().getDisplayMetrics().density * 48.0f);
        setLayoutParams(new ViewGroup.LayoutParams(i2, i2));
    }

    public void fadeCompassViewFacingNorth(boolean z) {
        this.f16158f = z;
    }

    public Drawable getCompassImage() {
        return getDrawable();
    }

    public void injectCompassAnimationListener(@NonNull n.g gVar) {
        this.f16160h = gVar;
    }

    public void isAnimating(boolean z) {
        this.f16161i = z;
    }

    public boolean isFacingNorth() {
        return ((double) Math.abs(this.f16157e)) >= 359.0d || ((double) Math.abs(this.f16157e)) <= 1.0d;
    }

    public boolean isFadeCompassViewFacingNorth() {
        return this.f16158f;
    }

    public boolean isHidden() {
        return this.f16158f && isFacingNorth();
    }

    public void resetAnimation() {
        a0 a0Var = this.f16159g;
        if (a0Var != null) {
            a0Var.a();
        }
        this.f16159g = null;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isHidden()) {
            this.f16160h.a();
            resetAnimation();
            setLayerType(2, null);
            a0 a2 = ViewCompat.a(this);
            a2.a(0.0f);
            a2.a(500L);
            this.f16159g = a2;
            this.f16159g.a(new a());
        }
    }

    public void setCompassImage(Drawable drawable) {
        setImageDrawable(drawable);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z && !isHidden()) {
            resetAnimation();
            setAlpha(1.0f);
            setVisibility(0);
            update(this.f16157e);
            return;
        }
        resetAnimation();
        setAlpha(0.0f);
        setVisibility(4);
    }

    public void update(double d2) {
        this.f16157e = (float) d2;
        if (isEnabled()) {
            if (isHidden()) {
                if (getVisibility() == 4 || this.f16159g != null) {
                    return;
                }
                postDelayed(this, 500L);
                return;
            }
            resetAnimation();
            setAlpha(1.0f);
            setVisibility(0);
            a();
            setRotation(this.f16157e);
        }
    }

    private void a() {
        if (this.f16161i) {
            this.f16160h.b();
        }
    }

    public CompassView(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16157e = 0.0f;
        this.f16158f = true;
        this.f16161i = false;
        a(context);
    }

    public CompassView(@NonNull Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f16157e = 0.0f;
        this.f16158f = true;
        this.f16161i = false;
        a(context);
    }
}
