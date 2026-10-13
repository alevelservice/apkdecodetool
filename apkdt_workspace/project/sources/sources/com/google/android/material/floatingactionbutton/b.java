package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.internal.VisibilityAwareImageButton;
import java.util.ArrayList;

/* compiled from: FloatingActionButtonImplLollipop.java */
@RequiresApi(21)
/* loaded from: classes.dex */
class b extends com.google.android.material.floatingactionbutton.a {
    private InsetDrawable I;

    /* compiled from: FloatingActionButtonImplLollipop.java */
    /* loaded from: classes.dex */
    static class a extends GradientDrawable {
        a() {
        }

        @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(VisibilityAwareImageButton visibilityAwareImageButton, e.i.b.c.s.b bVar) {
        super(visibilityAwareImageButton, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.a
    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        Drawable drawable;
        this.f13812j = androidx.core.graphics.drawable.a.i(a());
        androidx.core.graphics.drawable.a.a(this.f13812j, colorStateList);
        if (mode != null) {
            androidx.core.graphics.drawable.a.a(this.f13812j, mode);
        }
        if (i2 > 0) {
            this.f13814l = a(i2, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{this.f13814l, this.f13812j});
        } else {
            this.f13814l = null;
            drawable = this.f13812j;
        }
        this.f13813k = new RippleDrawable(e.i.b.c.r.a.a(colorStateList2), drawable, null);
        Drawable drawable2 = this.f13813k;
        this.m = drawable2;
        this.v.a(drawable2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.a
    public void b(ColorStateList colorStateList) {
        Drawable drawable = this.f13813k;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(e.i.b.c.r.a.a(colorStateList));
        } else {
            super.b(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    public float c() {
        return this.u.getElevation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.a
    public void j() {
    }

    @Override // com.google.android.material.floatingactionbutton.a
    com.google.android.material.internal.a k() {
        return new com.google.android.material.internal.b();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    GradientDrawable l() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.a
    public void n() {
        s();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    boolean q() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void b(Rect rect) {
        if (this.v.a()) {
            this.I = new InsetDrawable(this.f13813k, rect.left, rect.top, rect.right, rect.bottom);
            this.v.a(this.I);
        } else {
            this.v.a(this.f13813k);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void a(float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT == 21) {
            this.u.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.C, a(f2, f4));
            stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.D, a(f2, f3));
            stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.E, a(f2, f3));
            stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.F, a(f2, f3));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.u, "elevation", f2).setDuration(0L));
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 22 && i2 <= 24) {
                VisibilityAwareImageButton visibilityAwareImageButton = this.u;
                arrayList.add(ObjectAnimator.ofFloat(visibilityAwareImageButton, (Property<VisibilityAwareImageButton, Float>) View.TRANSLATION_Z, visibilityAwareImageButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.u, (Property<VisibilityAwareImageButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(com.google.android.material.floatingactionbutton.a.B);
            stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.G, animatorSet);
            stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.H, a(0.0f, 0.0f));
            this.u.setStateListAnimator(stateListAnimator);
        }
        if (this.v.a()) {
            s();
        }
    }

    @NonNull
    private Animator a(float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.u, "elevation", f2).setDuration(0L)).with(ObjectAnimator.ofFloat(this.u, (Property<VisibilityAwareImageButton, Float>) View.TRANSLATION_Z, f3).setDuration(100L));
        animatorSet.setInterpolator(com.google.android.material.floatingactionbutton.a.B);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.a
    public void a(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.u.isEnabled()) {
                this.u.setElevation(this.n);
                if (this.u.isPressed()) {
                    this.u.setTranslationZ(this.p);
                    return;
                } else if (!this.u.isFocused() && !this.u.isHovered()) {
                    this.u.setTranslationZ(0.0f);
                    return;
                } else {
                    this.u.setTranslationZ(this.o);
                    return;
                }
            }
            this.u.setElevation(0.0f);
            this.u.setTranslationZ(0.0f);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void a(Rect rect) {
        if (this.v.a()) {
            float b2 = this.v.b();
            float c2 = c() + this.p;
            int ceil = (int) Math.ceil(e.i.b.c.s.a.a(c2, b2, false));
            int ceil2 = (int) Math.ceil(e.i.b.c.s.a.b(c2, b2, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
