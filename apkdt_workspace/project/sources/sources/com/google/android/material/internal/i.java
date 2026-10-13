package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

/* compiled from: StateListAnimator.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<b> f13887a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    private b f13888b = null;

    /* renamed from: c, reason: collision with root package name */
    ValueAnimator f13889c = null;

    /* renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f13890d = new a();

    /* compiled from: StateListAnimator.java */
    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i iVar = i.this;
            if (iVar.f13889c == animator) {
                iVar.f13889c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StateListAnimator.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        final int[] f13892a;

        /* renamed from: b, reason: collision with root package name */
        final ValueAnimator f13893b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f13892a = iArr;
            this.f13893b = valueAnimator;
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.f13889c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f13889c = null;
        }
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f13890d);
        this.f13887a.add(bVar);
    }

    public void a(int[] iArr) {
        b bVar;
        int size = this.f13887a.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                bVar = null;
                break;
            }
            bVar = this.f13887a.get(i2);
            if (StateSet.stateSetMatches(bVar.f13892a, iArr)) {
                break;
            } else {
                i2++;
            }
        }
        b bVar2 = this.f13888b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.f13888b = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    private void a(b bVar) {
        this.f13889c = bVar.f13893b;
        this.f13889c.start();
    }

    public void a() {
        ValueAnimator valueAnimator = this.f13889c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f13889c = null;
        }
    }
}
