package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class BackgroundLayer extends Layer {
    @Keep
    BackgroundLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetBackgroundColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetBackgroundColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetBackgroundOpacity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetBackgroundOpacityTransition();

    @NonNull
    @Keep
    private native Object nativeGetBackgroundPattern();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetBackgroundPatternTransition();

    @Keep
    private native void nativeSetBackgroundColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetBackgroundOpacityTransition(long j2, long j3);

    @Keep
    private native void nativeSetBackgroundPatternTransition(long j2, long j3);

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str);
}
