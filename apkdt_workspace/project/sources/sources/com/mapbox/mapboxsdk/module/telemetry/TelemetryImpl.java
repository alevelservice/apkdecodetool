package com.mapbox.mapboxsdk.module.telemetry;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.mapbox.android.accounts.v1.MapboxAccounts;
import com.mapbox.android.telemetry.AppUserTurnstile;
import com.mapbox.android.telemetry.d0;
import com.mapbox.android.telemetry.j0;
import com.mapbox.android.telemetry.x;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.maps.z;
import com.mapbox.mapboxsdk.offline.OfflineRegionDefinition;
import com.mapbox.mapboxsdk.offline.OfflineTilePyramidRegionDefinition;
import java.util.UUID;

/* loaded from: classes2.dex */
public class TelemetryImpl implements z {
    private final Context appContext = Mapbox.getApplicationContext();
    private final x telemetry = new x(this.appContext, Mapbox.getAccessToken(), "mapbox-maps-android/9.2.0");

    public TelemetryImpl() {
        if (j0.c.ENABLED.equals(j0.b())) {
            this.telemetry.b();
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.z
    public void disableTelemetrySession() {
        this.telemetry.a();
    }

    @Override // com.mapbox.mapboxsdk.maps.z
    public void onAppUserTurnstileEvent() {
        AppUserTurnstile appUserTurnstile = new AppUserTurnstile("mapbox-maps-android", "9.2.0");
        appUserTurnstile.setSkuId(MapboxAccounts.SKU_ID_MAPS_MAUS);
        this.telemetry.a(appUserTurnstile);
        this.telemetry.a(MapEventFactory.buildMapLoadEvent(new PhoneState(this.appContext)));
    }

    public void onCreateOfflineRegion(@NonNull OfflineRegionDefinition offlineRegionDefinition) {
        this.telemetry.a(MapEventFactory.buildOfflineDownloadStartEvent(new PhoneState(this.appContext), offlineRegionDefinition instanceof OfflineTilePyramidRegionDefinition ? "tileregion" : "shaperegion", Double.valueOf(offlineRegionDefinition.getMinZoom()), Double.valueOf(offlineRegionDefinition.getMaxZoom()), offlineRegionDefinition.getStyleURL()));
    }

    @Deprecated
    public void onGestureInteraction(String str, double d2, double d3, @FloatRange(from = 0.0d, to = 25.5d) double d4) {
    }

    public void onPerformanceEvent(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.telemetry.a(MapEventFactory.buildPerformanceEvent(new PhoneState(this.appContext), UUID.randomUUID().toString(), bundle));
    }

    public void setDebugLoggingEnabled(boolean z) {
        this.telemetry.a(z);
    }

    public boolean setSessionIdRotationInterval(int i2) {
        return this.telemetry.a(new d0(i2));
    }

    @Override // com.mapbox.mapboxsdk.maps.z
    public void setUserTelemetryRequestState(boolean z) {
        if (z) {
            j0.a(j0.c.ENABLED);
            this.telemetry.b();
        } else {
            this.telemetry.a();
            j0.a(j0.c.DISABLED);
        }
    }
}
