package com.mapbox.mapboxsdk.annotations;

import androidx.annotation.Keep;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.n;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes2.dex */
public final class Polygon extends BasePointCollection {

    @Keep
    private int fillColor = -16777216;

    @Keep
    private int strokeColor = -16777216;

    @Keep
    private List<List<LatLng>> holes = new ArrayList();

    public void a(int i2) {
        this.fillColor = i2;
        e();
    }

    public void b(int i2) {
        this.strokeColor = i2;
        e();
    }

    @Override // com.mapbox.mapboxsdk.annotations.BasePointCollection
    void e() {
        n b2 = b();
        if (b2 != null) {
            b2.a(this);
        }
    }

    public int f() {
        return this.fillColor;
    }

    public List<List<LatLng>> g() {
        return new ArrayList(this.holes);
    }

    public int h() {
        return this.strokeColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<LatLng> list) {
        this.holes.add(list);
        e();
    }
}
