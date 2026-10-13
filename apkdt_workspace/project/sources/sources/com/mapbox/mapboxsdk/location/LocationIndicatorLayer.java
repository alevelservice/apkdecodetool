package com.mapbox.mapboxsdk.location;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;

@UiThread
/* loaded from: classes2.dex */
class LocationIndicatorLayer extends Layer {
    @Keep
    LocationIndicatorLayer(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Object nativeGetAccuracyRadius();

    @NonNull
    @Keep
    private native Object nativeGetAccuracyRadiusBorderColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetAccuracyRadiusBorderColorTransition();

    @NonNull
    @Keep
    private native Object nativeGetAccuracyRadiusColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetAccuracyRadiusColorTransition();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetAccuracyRadiusTransition();

    @NonNull
    @Keep
    private native Object nativeGetBearing();

    @NonNull
    @Keep
    private native Object nativeGetBearingImage();

    @NonNull
    @Keep
    private native Object nativeGetBearingImageSize();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetBearingImageSizeTransition();

    @NonNull
    @Keep
    private native Object nativeGetImageTiltDisplacement();

    @NonNull
    @Keep
    private native Object nativeGetLocation();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetLocationTransition();

    @NonNull
    @Keep
    private native Object nativeGetPerspectiveCompensation();

    @NonNull
    @Keep
    private native Object nativeGetShadowImage();

    @NonNull
    @Keep
    private native Object nativeGetShadowImageSize();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetShadowImageSizeTransition();

    @NonNull
    @Keep
    private native Object nativeGetTopImage();

    @NonNull
    @Keep
    private native Object nativeGetTopImageSize();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetTopImageSizeTransition();

    @Keep
    private native void nativeSetAccuracyRadiusBorderColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetAccuracyRadiusColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetAccuracyRadiusTransition(long j2, long j3);

    @Keep
    private native void nativeSetBearingImageSizeTransition(long j2, long j3);

    @Keep
    private native void nativeSetLocationTransition(long j2, long j3);

    @Keep
    private native void nativeSetShadowImageSizeTransition(long j2, long j3);

    @Keep
    private native void nativeSetTopImageSizeTransition(long j2, long j3);

    public void a(@NonNull TransitionOptions transitionOptions) {
        a();
        nativeSetLocationTransition(transitionOptions.b(), transitionOptions.a());
    }

    @Override // com.mapbox.mapboxsdk.style.layers.Layer
    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str);

    public LocationIndicatorLayer(String str) {
        initialize(str);
    }
}
