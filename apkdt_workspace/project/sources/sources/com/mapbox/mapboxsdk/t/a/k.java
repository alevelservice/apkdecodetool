package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.style.layers.FillLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FillElementProvider.java */
/* loaded from: classes2.dex */
class k implements h<FillLayer> {

    /* renamed from: c, reason: collision with root package name */
    private static final AtomicLong f16342c = new AtomicLong(0);

    /* renamed from: a, reason: collision with root package name */
    private final String f16343a;

    /* renamed from: b, reason: collision with root package name */
    private final String f16344b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k() {
        long incrementAndGet = f16342c.incrementAndGet();
        this.f16343a = String.format("mapbox-android-fill-layer-%s", Long.valueOf(incrementAndGet));
        this.f16344b = String.format("mapbox-android-fill-source-%s", Long.valueOf(incrementAndGet));
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public String a() {
        return this.f16343a;
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public GeoJsonSource a(@Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        return new GeoJsonSource(this.f16344b, aVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.mapbox.mapboxsdk.t.a.h
    public FillLayer b() {
        return new FillLayer(this.f16343a, this.f16344b);
    }
}
