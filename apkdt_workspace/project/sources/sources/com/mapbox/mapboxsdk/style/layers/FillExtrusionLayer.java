package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class FillExtrusionLayer extends Layer {
    @Keep
    FillExtrusionLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionBase();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillExtrusionBaseTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillExtrusionColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionHeight();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillExtrusionHeightTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionOpacity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillExtrusionOpacityTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionPattern();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillExtrusionPatternTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionTranslate();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionTranslateAnchor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillExtrusionTranslateTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillExtrusionVerticalGradient();

    @Keep
    private native void nativeSetFillExtrusionBaseTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillExtrusionColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillExtrusionHeightTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillExtrusionOpacityTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillExtrusionPatternTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillExtrusionTranslateTransition(long j2, long j3);

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, String str2);
}
