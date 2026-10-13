package com.mapbox.mapboxsdk.maps;

import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.annotations.Polyline;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PolylineContainer.java */
/* loaded from: classes2.dex */
public class u implements v {

    /* renamed from: a, reason: collision with root package name */
    private final q f16153a;

    /* renamed from: b, reason: collision with root package name */
    private final a.e.d<com.mapbox.mapboxsdk.annotations.a> f16154b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(q qVar, a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar) {
        this.f16153a = qVar;
        this.f16154b = dVar;
    }

    @Override // com.mapbox.mapboxsdk.maps.v
    public void a(@NonNull Polyline polyline) {
        this.f16153a.a(polyline);
        a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar = this.f16154b;
        dVar.a(dVar.b(polyline.a()), (int) polyline);
    }
}
