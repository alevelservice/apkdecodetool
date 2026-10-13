package com.mapbox.mapboxsdk.location;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import com.mapbox.mapboxsdk.location.r;

/* compiled from: MapboxFloatAnimator.java */
/* loaded from: classes2.dex */
class u extends r<Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u(@NonNull @Size(min = 2) Float[] fArr, @NonNull r.b bVar, int i2) {
        super(fArr, bVar, i2);
    }

    @Override // com.mapbox.mapboxsdk.location.r
    @NonNull
    TypeEvaluator c() {
        return new FloatEvaluator();
    }
}
