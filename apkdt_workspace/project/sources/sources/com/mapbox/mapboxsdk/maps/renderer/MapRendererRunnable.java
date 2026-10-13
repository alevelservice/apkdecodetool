package com.mapbox.mapboxsdk.maps.renderer;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes2.dex */
class MapRendererRunnable implements Runnable {
    private final long nativePtr;

    MapRendererRunnable(long j2) {
        this.nativePtr = j2;
    }

    private native void nativeInitialize();

    protected native void finalize();

    @Override // java.lang.Runnable
    public native void run();
}
