package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class Fade extends Visibility {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends i {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f2915e;

        a(Fade fade, View view) {
            this.f2915e = view;
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
            x.a(this.f2915e, 1.0f);
            x.a(this.f2915e);
            transition.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        private final View f2916e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f2917f = false;

        b(View view) {
            this.f2916e = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.a(this.f2916e, 1.0f);
            if (this.f2917f) {
                this.f2916e.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.z(this.f2916e) && this.f2916e.getLayerType() == 0) {
                this.f2917f = true;
                this.f2916e.setLayerType(2, null);
            }
        }
    }

    public Fade(int i2) {
        a(i2);
    }

    private Animator a(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        x.a(view, f2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, x.f3006d, f3);
        ofFloat.addListener(new b(view));
        a(new a(this, view));
        return ofFloat;
    }

    @Override // androidx.transition.Visibility
    public Animator b(ViewGroup viewGroup, View view, m mVar, m mVar2) {
        x.e(view);
        return a(view, a(mVar, 1.0f), 0.0f);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void c(@NonNull m mVar) {
        super.c(mVar);
        mVar.f2982a.put("android:fade:transitionAlpha", Float.valueOf(x.c(mVar.f2983b)));
    }

    @Override // androidx.transition.Visibility
    public Animator a(ViewGroup viewGroup, View view, m mVar, m mVar2) {
        float a2 = a(mVar, 0.0f);
        return a(view, a2 != 1.0f ? a2 : 0.0f, 1.0f);
    }

    private static float a(m mVar, float f2) {
        Float f3;
        return (mVar == null || (f3 = (Float) mVar.f2982a.get("android:fade:transitionAlpha")) == null) ? f2 : f3.floatValue();
    }
}
