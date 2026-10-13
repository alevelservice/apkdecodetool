package com.mapbox.mapboxsdk.location;

import android.animation.TypeEvaluator;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.r;

/* compiled from: MapboxLatLngAnimator.java */
/* loaded from: classes2.dex */
class v extends r<LatLng> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public v(@NonNull LatLng[] latLngArr, @NonNull r.b bVar, int i2) {
        super(latLngArr, bVar, i2);
    }

    @Override // com.mapbox.mapboxsdk.location.r
    @NonNull
    TypeEvaluator c() {
        return new e();
    }
}
