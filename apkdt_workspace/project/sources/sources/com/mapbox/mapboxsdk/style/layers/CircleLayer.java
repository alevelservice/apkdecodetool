package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class CircleLayer extends Layer {
    @Keep
    CircleLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetCircleBlur();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleBlurTransition();

    @NonNull
    @Keep
    private native Object nativeGetCircleColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetCircleOpacity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleOpacityTransition();

    @NonNull
    @Keep
    private native Object nativeGetCirclePitchAlignment();

    @NonNull
    @Keep
    private native Object nativeGetCirclePitchScale();

    @NonNull
    @Keep
    private native Object nativeGetCircleRadius();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleRadiusTransition();

    @NonNull
    @Keep
    private native Object nativeGetCircleSortKey();

    @NonNull
    @Keep
    private native Object nativeGetCircleStrokeColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleStrokeColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetCircleStrokeOpacity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleStrokeOpacityTransition();

    @NonNull
    @Keep
    private native Object nativeGetCircleStrokeWidth();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleStrokeWidthTransition();

    @NonNull
    @Keep
    private native Object nativeGetCircleTranslate();

    @NonNull
    @Keep
    private native Object nativeGetCircleTranslateAnchor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetCircleTranslateTransition();

    @Keep
    private native void nativeSetCircleBlurTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleOpacityTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleRadiusTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleStrokeColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleStrokeOpacityTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleStrokeWidthTransition(long j2, long j3);

    @Keep
    private native void nativeSetCircleTranslateTransition(long j2, long j3);

    public void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar) {
        a();
        nativeSetFilter(aVar.b());
    }

    @NonNull
    public CircleLayer b(@NonNull d<?>... dVarArr) {
        a(dVarArr);
        return this;
    }

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, String str2);

    public CircleLayer(String str, String str2) {
        initialize(str, str2);
    }
}
