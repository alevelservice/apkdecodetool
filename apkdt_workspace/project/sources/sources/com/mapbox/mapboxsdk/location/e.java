package com.mapbox.mapboxsdk.location;

import android.animation.TypeEvaluator;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* compiled from: LatLngEvaluator.java */
/* loaded from: classes2.dex */
class e implements TypeEvaluator<LatLng> {

    /* renamed from: a, reason: collision with root package name */
    private final LatLng f15795a = new LatLng();

    @Override // android.animation.TypeEvaluator
    @NonNull
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public LatLng evaluate(float f2, @NonNull LatLng latLng, @NonNull LatLng latLng2) {
        LatLng latLng3 = this.f15795a;
        double a2 = latLng.a();
        double a3 = latLng2.a() - latLng.a();
        double d2 = f2;
        Double.isNaN(d2);
        latLng3.b(a2 + (a3 * d2));
        LatLng latLng4 = this.f15795a;
        double b2 = latLng.b();
        double b3 = latLng2.b() - latLng.b();
        Double.isNaN(d2);
        latLng4.c(b2 + (b3 * d2));
        return this.f15795a;
    }
}
