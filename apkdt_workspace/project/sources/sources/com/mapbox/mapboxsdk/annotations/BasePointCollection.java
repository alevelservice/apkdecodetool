package com.mapbox.mapboxsdk.annotations;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes2.dex */
public abstract class BasePointCollection extends a {

    @Keep
    private float alpha = 1.0f;

    @Keep
    private List<LatLng> points = new ArrayList();

    public void a(LatLng latLng) {
        this.points.add(latLng);
        e();
    }

    public float c() {
        return this.alpha;
    }

    @NonNull
    public List<LatLng> d() {
        return new ArrayList(this.points);
    }

    abstract void e();

    public void a(float f2) {
        this.alpha = f2;
        e();
    }
}
