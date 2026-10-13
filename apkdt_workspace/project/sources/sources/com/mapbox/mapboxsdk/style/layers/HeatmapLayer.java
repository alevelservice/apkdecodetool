package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class HeatmapLayer extends Layer {
    @Keep
    HeatmapLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetHeatmapColor();

    @NonNull
    @Keep
    private native Object nativeGetHeatmapIntensity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHeatmapIntensityTransition();

    @NonNull
    @Keep
    private native Object nativeGetHeatmapOpacity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHeatmapOpacityTransition();

    @NonNull
    @Keep
    private native Object nativeGetHeatmapRadius();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHeatmapRadiusTransition();

    @NonNull
    @Keep
    private native Object nativeGetHeatmapWeight();

    @Keep
    private native void nativeSetHeatmapIntensityTransition(long j2, long j3);

    @Keep
    private native void nativeSetHeatmapOpacityTransition(long j2, long j3);

    @Keep
    private native void nativeSetHeatmapRadiusTransition(long j2, long j3);

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, String str2);
}
