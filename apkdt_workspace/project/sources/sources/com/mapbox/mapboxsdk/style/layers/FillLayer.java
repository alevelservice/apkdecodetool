package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes2.dex */
public class FillLayer extends Layer {
    @Keep
    FillLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetFillAntialias();

    @NonNull
    @Keep
    private native Object nativeGetFillColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillOpacity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillOpacityTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillOutlineColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillOutlineColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillPattern();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillPatternTransition();

    @NonNull
    @Keep
    private native Object nativeGetFillSortKey();

    @NonNull
    @Keep
    private native Object nativeGetFillTranslate();

    @NonNull
    @Keep
    private native Object nativeGetFillTranslateAnchor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetFillTranslateTransition();

    @Keep
    private native void nativeSetFillColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillOpacityTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillOutlineColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillPatternTransition(long j2, long j3);

    @Keep
    private native void nativeSetFillTranslateTransition(long j2, long j3);

    public void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar) {
        a();
        nativeSetFilter(aVar.b());
    }

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, String str2);

    public FillLayer(String str, String str2) {
        initialize(str, str2);
    }
}
