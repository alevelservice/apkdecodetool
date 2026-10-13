package com.mapbox.mapboxsdk.style.light;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.utils.g;

@UiThread
/* loaded from: classes2.dex */
public class Light {

    @Keep
    private long nativePtr;

    @Keep
    Light(long j2) {
        a();
        this.nativePtr = j2;
    }

    private void a() {
        g.a("Mbgl-Light");
    }

    @NonNull
    @Keep
    private native String nativeGetAnchor();

    @NonNull
    @Keep
    private native String nativeGetColor();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetColorTransition();

    @NonNull
    @Keep
    private native float nativeGetIntensity();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetIntensityTransition();

    @NonNull
    @Keep
    private native Position nativeGetPosition();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetPositionTransition();

    @Keep
    private native void nativeSetAnchor(String str);

    @Keep
    private native void nativeSetColor(String str);

    @Keep
    private native void nativeSetColorTransition(long j2, long j3);

    @Keep
    private native void nativeSetIntensity(float f2);

    @Keep
    private native void nativeSetIntensityTransition(long j2, long j3);

    @Keep
    private native void nativeSetPosition(Position position);

    @Keep
    private native void nativeSetPositionTransition(long j2, long j3);
}
