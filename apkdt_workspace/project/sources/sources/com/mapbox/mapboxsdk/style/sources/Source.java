package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.utils.g;

/* loaded from: classes2.dex */
public abstract class Source {
    private static final String TAG = "Mbgl-Source";
    protected boolean detached;

    @Keep
    private long nativePtr;

    static {
        com.mapbox.mapboxsdk.b.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Keep
    public Source(long j2) {
        checkThread();
        this.nativePtr = j2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkThread() {
        g.a(TAG);
    }

    @NonNull
    public String getAttribution() {
        checkThread();
        return nativeGetAttribution();
    }

    @NonNull
    public String getId() {
        checkThread();
        return nativeGetId();
    }

    @Nullable
    public Integer getMaxOverscaleFactorForParentTiles() {
        return nativeGetMaxOverscaleFactorForParentTiles();
    }

    @NonNull
    public Long getMinimumTileUpdateInterval() {
        return nativeGetMinimumTileUpdateInterval();
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    @Nullable
    public Integer getPrefetchZoomDelta() {
        return nativeGetPrefetchZoomDelta();
    }

    @NonNull
    public Boolean isVolatile() {
        return nativeIsVolatile();
    }

    @NonNull
    @Keep
    protected native String nativeGetAttribution();

    @NonNull
    @Keep
    protected native String nativeGetId();

    @NonNull
    @Keep
    protected native Integer nativeGetMaxOverscaleFactorForParentTiles();

    @NonNull
    @Keep
    protected native Long nativeGetMinimumTileUpdateInterval();

    @NonNull
    @Keep
    protected native Integer nativeGetPrefetchZoomDelta();

    @NonNull
    @Keep
    protected native Boolean nativeIsVolatile();

    @NonNull
    @Keep
    protected native void nativeSetMaxOverscaleFactorForParentTiles(Integer num);

    @NonNull
    @Keep
    protected native void nativeSetMinimumTileUpdateInterval(Long l2);

    @NonNull
    @Keep
    protected native void nativeSetPrefetchZoomDelta(Integer num);

    @NonNull
    @Keep
    protected native void nativeSetVolatile(Boolean bool);

    public void setDetached() {
        this.detached = true;
    }

    public void setMaxOverscaleFactorForParentTiles(@Nullable Integer num) {
        nativeSetMaxOverscaleFactorForParentTiles(num);
    }

    public void setMinimumTileUpdateInterval(Long l2) {
        nativeSetMinimumTileUpdateInterval(l2);
    }

    public void setPrefetchZoomDelta(@Nullable Integer num) {
        nativeSetPrefetchZoomDelta(num);
    }

    public void setVolatile(Boolean bool) {
        nativeSetVolatile(bool);
    }

    public Source() {
        checkThread();
    }
}
