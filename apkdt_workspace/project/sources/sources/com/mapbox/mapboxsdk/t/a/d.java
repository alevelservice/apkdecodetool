package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.style.layers.CircleLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: CircleElementProvider.java */
/* loaded from: classes2.dex */
class d implements h<CircleLayer> {

    /* renamed from: c, reason: collision with root package name */
    private static final AtomicLong f16315c = new AtomicLong(0);

    /* renamed from: a, reason: collision with root package name */
    private final String f16316a;

    /* renamed from: b, reason: collision with root package name */
    private final String f16317b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d() {
        long incrementAndGet = f16315c.incrementAndGet();
        this.f16316a = String.format("mapbox-android-circle-layer-%s", Long.valueOf(incrementAndGet));
        this.f16317b = String.format("mapbox-android-circle-source-%s", Long.valueOf(incrementAndGet));
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public String a() {
        return this.f16316a;
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public GeoJsonSource a(@Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        return new GeoJsonSource(this.f16317b, aVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.mapbox.mapboxsdk.t.a.h
    public CircleLayer b() {
        return new CircleLayer(this.f16316a, this.f16317b);
    }
}
