package com.mapbox.mapboxsdk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.maps.z;
import com.mapbox.mapboxsdk.module.telemetry.TelemetryImpl;

/* compiled from: ModuleProviderImpl.java */
/* loaded from: classes2.dex */
public class g implements f {
    @Override // com.mapbox.mapboxsdk.f
    @Nullable
    public z a() {
        return new TelemetryImpl();
    }

    @Override // com.mapbox.mapboxsdk.f
    @NonNull
    public com.mapbox.mapboxsdk.http.c b() {
        return new com.mapbox.mapboxsdk.s.a.a();
    }

    @Override // com.mapbox.mapboxsdk.f
    @NonNull
    public c c() {
        return new com.mapbox.mapboxsdk.s.b.a();
    }
}
