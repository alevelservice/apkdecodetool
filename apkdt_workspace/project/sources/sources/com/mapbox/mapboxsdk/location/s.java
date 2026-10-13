package com.mapbox.mapboxsdk.location;

import android.view.animation.Interpolator;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.r;

/* compiled from: MapboxAnimatorProvider.java */
/* loaded from: classes2.dex */
final class s {

    /* renamed from: a, reason: collision with root package name */
    private static s f15909a;

    private s() {
    }

    public static s a() {
        if (f15909a == null) {
            f15909a = new s();
        }
        return f15909a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v a(LatLng[] latLngArr, r.b bVar, int i2) {
        return new v(latLngArr, bVar, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u a(Float[] fArr, r.b bVar, int i2) {
        return new u(fArr, bVar, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0 a(r.b bVar, int i2, float f2, float f3, Interpolator interpolator) {
        d0 d0Var = new d0(bVar, i2, f3);
        d0Var.setDuration(f2);
        d0Var.setRepeatMode(1);
        d0Var.setRepeatCount(-1);
        d0Var.setInterpolator(interpolator);
        return d0Var;
    }
}
