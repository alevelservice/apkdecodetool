package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;

/* loaded from: classes2.dex */
public class CustomLayer extends Layer {
    @Keep
    CustomLayer(long j2) {
        super(j2);
    }

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, long j2);

    @Keep
    @Deprecated
    public void update() {
    }
}
