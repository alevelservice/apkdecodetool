package com.mapbox.mapboxsdk.style.sources;

import android.graphics.Bitmap;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.geometry.LatLngQuad;

@UiThread
/* loaded from: classes2.dex */
public class ImageSource extends Source {
    @Keep
    ImageSource(long j2) {
        super(j2);
    }

    public void a(@NonNull Bitmap bitmap) {
        checkThread();
        nativeSetImage(bitmap);
    }

    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, LatLngQuad latLngQuad);

    @NonNull
    @Keep
    protected native String nativeGetUrl();

    @Keep
    protected native void nativeSetCoordinates(LatLngQuad latLngQuad);

    @Keep
    protected native void nativeSetImage(Bitmap bitmap);

    @Keep
    protected native void nativeSetUrl(String str);

    public ImageSource(String str, LatLngQuad latLngQuad, @NonNull Bitmap bitmap) {
        initialize(str, latLngQuad);
        a(bitmap);
    }
}
