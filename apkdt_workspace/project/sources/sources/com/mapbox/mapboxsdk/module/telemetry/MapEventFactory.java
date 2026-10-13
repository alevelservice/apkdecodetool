package com.mapbox.mapboxsdk.module.telemetry;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.mapbox.android.telemetry.l0;

/* loaded from: classes2.dex */
class MapEventFactory {
    MapEventFactory() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MapLoadEvent buildMapLoadEvent(@NonNull PhoneState phoneState) {
        return new MapLoadEvent(l0.c(), phoneState);
    }

    static OfflineDownloadEndEvent buildOfflineDownloadCompleteEvent(PhoneState phoneState, String str, @FloatRange(from = 0.0d, to = 25.5d) Double d2, @FloatRange(from = 0.0d, to = 25.5d) Double d3, String str2, long j2, long j3, int i2) {
        OfflineDownloadEndEvent offlineDownloadEndEvent = new OfflineDownloadEndEvent(phoneState, str, d2, d3);
        offlineDownloadEndEvent.setStyleURL(str2);
        offlineDownloadEndEvent.setSizeOfResourcesCompleted(j2);
        offlineDownloadEndEvent.setNumberOfTilesCompleted(j3);
        offlineDownloadEndEvent.setState(i2);
        return offlineDownloadEndEvent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OfflineDownloadStartEvent buildOfflineDownloadStartEvent(PhoneState phoneState, String str, @FloatRange(from = 0.0d, to = 25.5d) Double d2, @FloatRange(from = 0.0d, to = 25.5d) Double d3, String str2) {
        OfflineDownloadStartEvent offlineDownloadStartEvent = new OfflineDownloadStartEvent(phoneState, str, d2, d3);
        offlineDownloadStartEvent.setStyleURL(str2);
        return offlineDownloadStartEvent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PerformanceEvent buildPerformanceEvent(@NonNull PhoneState phoneState, @NonNull String str, @NonNull Bundle bundle) {
        return new PerformanceEvent(phoneState, str, bundle);
    }
}
