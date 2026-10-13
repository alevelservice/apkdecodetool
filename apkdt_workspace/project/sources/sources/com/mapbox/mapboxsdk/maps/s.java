package com.mapbox.mapboxsdk.maps;

import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.annotations.Polygon;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PolygonContainer.java */
/* loaded from: classes2.dex */
public class s implements t {

    /* renamed from: a, reason: collision with root package name */
    private final q f16151a;

    /* renamed from: b, reason: collision with root package name */
    private final a.e.d<com.mapbox.mapboxsdk.annotations.a> f16152b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(q qVar, a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar) {
        this.f16151a = qVar;
        this.f16152b = dVar;
    }

    @Override // com.mapbox.mapboxsdk.maps.t
    public void a(@NonNull Polygon polygon) {
        this.f16151a.a(polygon);
        a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar = this.f16152b;
        dVar.a(dVar.b(polygon.a()), (int) polygon);
    }
}
