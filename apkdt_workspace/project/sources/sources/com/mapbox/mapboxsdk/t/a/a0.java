package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: SymbolElementProvider.java */
/* loaded from: classes2.dex */
class a0 implements h<SymbolLayer> {

    /* renamed from: c, reason: collision with root package name */
    private static final AtomicLong f16282c = new AtomicLong(0);

    /* renamed from: a, reason: collision with root package name */
    private final String f16283a;

    /* renamed from: b, reason: collision with root package name */
    private final String f16284b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0() {
        long incrementAndGet = f16282c.incrementAndGet();
        this.f16283a = String.format("mapbox-android-symbol-layer-%s", Long.valueOf(incrementAndGet));
        this.f16284b = String.format("mapbox-android-symbol-source-%s", Long.valueOf(incrementAndGet));
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public String a() {
        return this.f16283a;
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public GeoJsonSource a(@Nullable com.mapbox.mapboxsdk.style.sources.a aVar) {
        return new GeoJsonSource(this.f16284b, aVar);
    }

    @Override // com.mapbox.mapboxsdk.t.a.h
    public SymbolLayer b() {
        return new SymbolLayer(this.f16283a, this.f16284b);
    }
}
