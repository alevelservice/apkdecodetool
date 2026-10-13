package com.mapbox.mapboxsdk.location;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import androidx.annotation.NonNull;
import androidx.annotation.Size;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapboxAnimator.java */
/* loaded from: classes2.dex */
public abstract class r<K> extends ValueAnimator implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: e, reason: collision with root package name */
    private final b<K> f15902e;

    /* renamed from: f, reason: collision with root package name */
    private final K f15903f;

    /* renamed from: g, reason: collision with root package name */
    private K f15904g;

    /* renamed from: h, reason: collision with root package name */
    private final double f15905h;

    /* renamed from: i, reason: collision with root package name */
    private long f15906i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f15907j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxAnimator.java */
    /* loaded from: classes2.dex */
    public interface b<K> {
        void a(K k2);
    }

    /* compiled from: MapboxAnimator.java */
    /* loaded from: classes2.dex */
    private class c extends AnimatorListenerAdapter {
        private c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            r.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(@NonNull @Size(min = 2) K[] kArr, @NonNull b<K> bVar, int i2) {
        double d2 = i2;
        Double.isNaN(d2);
        this.f15905h = 1.0E9d / d2;
        setObjectValues(kArr);
        setEvaluator(c());
        this.f15902e = bVar;
        this.f15903f = kArr[kArr.length - 1];
        addUpdateListener(this);
        addListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f15907j) {
            return;
        }
        this.f15902e.a(this.f15904g);
    }

    public void b() {
        this.f15907j = true;
    }

    abstract TypeEvaluator c();

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f15904g = (K) valueAnimator.getAnimatedValue();
        long nanoTime = System.nanoTime();
        if (nanoTime - this.f15906i < this.f15905h) {
            return;
        }
        d();
        this.f15906i = nanoTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public K a() {
        return this.f15903f;
    }
}
