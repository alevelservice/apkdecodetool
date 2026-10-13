package com.mapbox.mapboxsdk.offline;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.b;
import com.mapbox.mapboxsdk.storage.FileSource;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class OfflineRegion {

    @Keep
    private long nativePtr;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DownloadState {
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface OfflineRegionDeleteCallback {
        void onDelete();

        void onError(String str);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface OfflineRegionInvalidateCallback {
        void onError(String str);

        void onInvalidate();
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface OfflineRegionObserver {
        void mapboxTileCountLimitExceeded(long j2);

        void onError(OfflineRegionError offlineRegionError);

        void onStatusChanged(OfflineRegionStatus offlineRegionStatus);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface OfflineRegionStatusCallback {
        void onError(String str);

        void onStatus(OfflineRegionStatus offlineRegionStatus);
    }

    @Keep
    /* loaded from: classes2.dex */
    public interface OfflineRegionUpdateMetadataCallback {
        void onError(String str);

        void onUpdate(byte[] bArr);
    }

    static {
        b.a();
    }

    @Keep
    private OfflineRegion(long j2, FileSource fileSource, long j3, OfflineRegionDefinition offlineRegionDefinition, byte[] bArr) {
        new Handler(Looper.getMainLooper());
        Mapbox.getApplicationContext();
        initialize(j2, fileSource);
    }

    @Keep
    private native void deleteOfflineRegion(OfflineRegionDeleteCallback offlineRegionDeleteCallback);

    @Keep
    private native void getOfflineRegionStatus(OfflineRegionStatusCallback offlineRegionStatusCallback);

    @Keep
    private native void initialize(long j2, FileSource fileSource);

    @Keep
    private native void invalidateOfflineRegion(OfflineRegionInvalidateCallback offlineRegionInvalidateCallback);

    @Keep
    private native void setOfflineRegionDownloadState(int i2);

    @Keep
    private native void setOfflineRegionObserver(OfflineRegionObserver offlineRegionObserver);

    @Keep
    private native void updateOfflineRegionMetadata(byte[] bArr, OfflineRegionUpdateMetadataCallback offlineRegionUpdateMetadataCallback);

    @Keep
    protected native void finalize();
}
