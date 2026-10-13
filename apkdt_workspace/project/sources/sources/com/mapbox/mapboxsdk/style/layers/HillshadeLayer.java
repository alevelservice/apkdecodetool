package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class HillshadeLayer extends Layer {
    @Keep
    HillshadeLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetHillshadeAccentColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHillshadeAccentColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetHillshadeExaggeration();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHillshadeExaggerationTransition();

    @NonNull
    @Keep
    private native Object nativeGetHillshadeHighlightColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHillshadeHighlightColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetHillshadeIlluminationAnchor();

    @NonNull
    @Keep
    private native Object nativeGetHillshadeIlluminationDirection();

    @NonNull
    @Keep
    private native Object nativeGetHillshadeShadowColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetHillshadeShadowColorTransition();

    @Keep
    private native void nativeSetHillshadeAccentColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetHillshadeExaggerationTransition(long j2, long j3);

    @Keep
    private native void nativeSetHillshadeHighlightColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetHillshadeShadowColorTransition(long j2, long j3);

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, String str2);
}
