package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.m;
import java.util.Map;

/* compiled from: TextScale.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class j extends Transition {

    /* compiled from: TextScale.java */
    /* loaded from: classes.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f13894e;

        a(j jVar, TextView textView) {
            this.f13894e = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f13894e.setScaleX(floatValue);
            this.f13894e.setScaleY(floatValue);
        }
    }

    private void d(m mVar) {
        View view = mVar.f2983b;
        if (view instanceof TextView) {
            mVar.f2982a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public void a(m mVar) {
        d(mVar);
    }

    @Override // androidx.transition.Transition
    public void c(m mVar) {
        d(mVar);
    }

    @Override // androidx.transition.Transition
    public Animator a(ViewGroup viewGroup, m mVar, m mVar2) {
        if (mVar == null || mVar2 == null || !(mVar.f2983b instanceof TextView)) {
            return null;
        }
        View view = mVar2.f2983b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        Map<String, Object> map = mVar.f2982a;
        Map<String, Object> map2 = mVar2.f2982a;
        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float floatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (floatValue == floatValue2) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, floatValue2);
        ofFloat.addUpdateListener(new a(this, textView));
        return ofFloat;
    }
}
