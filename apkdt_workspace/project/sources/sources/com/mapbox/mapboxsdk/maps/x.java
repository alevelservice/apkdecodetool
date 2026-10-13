package com.mapbox.mapboxsdk.maps;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeAnnotationContainer.java */
/* loaded from: classes2.dex */
public class x implements y {

    /* renamed from: a, reason: collision with root package name */
    private final q f16163a;

    /* renamed from: b, reason: collision with root package name */
    private final a.e.d<com.mapbox.mapboxsdk.annotations.a> f16164b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(q qVar, a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar) {
        this.f16163a = qVar;
        this.f16164b = dVar;
    }

    @Override // com.mapbox.mapboxsdk.maps.y
    @NonNull
    public List<com.mapbox.mapboxsdk.annotations.a> a(@NonNull RectF rectF) {
        return a(this.f16163a.a(this.f16163a.b(rectF)));
    }

    @NonNull
    private List<com.mapbox.mapboxsdk.annotations.a> a(long[] jArr) {
        ArrayList arrayList = new ArrayList();
        for (long j2 : jArr) {
            com.mapbox.mapboxsdk.annotations.a a2 = this.f16164b.a(j2);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }
}
