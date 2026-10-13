package com.mapbox.mapboxsdk.location;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import java.util.List;

/* compiled from: MapboxAnimatorSetProvider.java */
/* loaded from: classes2.dex */
class t {

    /* renamed from: a, reason: collision with root package name */
    private static t f15910a;

    private t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t a() {
        if (f15910a == null) {
            f15910a = new t();
        }
        return f15910a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull List<Animator> list, @NonNull Interpolator interpolator, long j2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(list);
        animatorSet.setInterpolator(interpolator);
        animatorSet.setDuration(j2);
        animatorSet.start();
    }
}
