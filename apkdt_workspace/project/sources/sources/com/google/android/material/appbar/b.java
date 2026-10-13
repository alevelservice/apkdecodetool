package com.google.android.material.appbar;

import android.R;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;
import com.google.android.material.internal.k;
import e.i.b.c.g;

/* compiled from: ViewUtilsLollipop.java */
@RequiresApi(21)
/* loaded from: classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f13634a = {R.attr.stateListAnimator};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, AttributeSet attributeSet, int i2, int i3) {
        Context context = view.getContext();
        TypedArray c2 = k.c(context, attributeSet, f13634a, i2, i3, new int[0]);
        try {
            if (c2.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, c2.getResourceId(0, 0)));
            }
        } finally {
            c2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, float f2) {
        int integer = view.getResources().getInteger(g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j2 = integer;
        stateListAnimator.addState(new int[]{R.attr.enabled, e.i.b.c.b.state_liftable, -e.i.b.c.b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j2));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f2).setDuration(j2));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
