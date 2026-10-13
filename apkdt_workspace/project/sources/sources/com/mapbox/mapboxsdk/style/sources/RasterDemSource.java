package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class RasterDemSource extends Source {
    @Keep
    RasterDemSource(long j2) {
        super(j2);
    }

    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, Object obj, int i2);

    @NonNull
    @Keep
    protected native String nativeGetUrl();
}
