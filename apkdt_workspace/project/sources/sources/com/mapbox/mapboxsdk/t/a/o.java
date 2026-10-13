package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.style.layers.LineLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: LineElementProvider.java */
/* loaded from: classes2.dex */
class o implements h<LineLayer> {

    /* renamed from: c, reason: collision with root package name */
    private static final AtomicLong f16353c = new AtomicLong(0);

    /* renamed from: a, reason: collision with root package name */
    private final String f16354a;

    /* renamed from: b, reason: collision with root package name */
    private final String f16355b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o() {
        long incrementAndGet = f16353c.incrementAndGet();
        this.f16354a = String.format("mapbox-android-line-layer-%s", Long.valueOf(incrementAndGet));
        this.f16355b = String.format("mapbox-android-line-source-%s", Long.valueOf(incrementAndGet));
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public String a() {
        return this.f16354a;
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public GeoJsonSource a(@Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        return new GeoJsonSource(this.f16355b, aVar);
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public LineLayer b() {
        return new LineLayer(this.f16354a, this.f16355b);
    }
}
