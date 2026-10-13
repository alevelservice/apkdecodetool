package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.b;

/* compiled from: CircularRevealCompat.java */
/* loaded from: classes.dex */
public final class a {

    /* compiled from: CircularRevealCompat.java */
    /* renamed from: com.google.android.material.circularreveal.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0100a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ b f13781e;

        C0100a(b bVar) {
            this.f13781e = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13781e.destroyCircularRevealCache();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f13781e.buildCircularRevealCache();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Animator a(b bVar, float f2, float f3, float f4) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(bVar, (Property<b, V>) b.c.f13784a, (TypeEvaluator) b.C0101b.f13782b, (Object[]) new b.e[]{new b.e(f2, f3, f4)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        b.e revealInfo = bVar.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) bVar, (int) f2, (int) f3, revealInfo.f13788c, f4);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }

    public static Animator.AnimatorListener a(b bVar) {
        return new C0100a(bVar);
    }
}
