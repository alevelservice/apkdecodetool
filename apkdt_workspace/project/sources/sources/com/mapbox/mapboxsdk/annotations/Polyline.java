package com.mapbox.mapboxsdk.annotations;

import androidx.annotation.Keep;
import com.mapbox.mapboxsdk.maps.n;

@Deprecated
/* loaded from: classes2.dex */
public final class Polyline extends BasePointCollection {

    @Keep
    private int color = -16777216;

    @Keep
    private float width = 10.0f;

    public void a(int i2) {
        this.color = i2;
        e();
    }

    public void b(float f2) {
        this.width = f2;
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
        return this.color;
    }

    public float g() {
        return this.width;
    }
}
