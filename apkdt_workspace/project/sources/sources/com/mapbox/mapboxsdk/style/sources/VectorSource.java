package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.geojson.Feature;

@UiThread
/* loaded from: classes2.dex */
public class VectorSource extends Source {
    @Keep
    VectorSource(long j2) {
        super(j2);
    }

    @NonNull
    @Keep
    private native Feature[] querySourceFeatures(String[] strArr, Object[] objArr);

    @Nullable
    @Deprecated
    public String a() {
        checkThread();
        return nativeGetUrl();
    }

    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, Object obj);

    @NonNull
    @Keep
    protected native String nativeGetUrl();
}
