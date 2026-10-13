package com.mapbox.mapboxsdk.maps;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.annotations.Marker;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MarkerContainer.java */
/* loaded from: classes2.dex */
public class o implements p {

    /* renamed from: a, reason: collision with root package name */
    private final q f16119a;

    /* renamed from: b, reason: collision with root package name */
    private final a.e.d<com.mapbox.mapboxsdk.annotations.a> f16120b;

    /* renamed from: c, reason: collision with root package name */
    private final g f16121c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(q qVar, a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar, g gVar) {
        this.f16119a = qVar;
        this.f16120b = dVar;
        this.f16121c = gVar;
    }

    @NonNull
    private List<com.mapbox.mapboxsdk.annotations.a> b() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.f16120b.b(); i2++) {
            a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar = this.f16120b;
            arrayList.add(dVar.a(dVar.a(i2)));
        }
        return arrayList;
    }

    @Override // com.mapbox.mapboxsdk.maps.p
    @NonNull
    public List<Marker> a(@NonNull RectF rectF) {
        long[] c2 = this.f16119a.c(this.f16119a.b(rectF));
        ArrayList arrayList = new ArrayList(c2.length);
        for (long j2 : c2) {
            arrayList.add(Long.valueOf(j2));
        }
        ArrayList arrayList2 = new ArrayList(c2.length);
        List<com.mapbox.mapboxsdk.annotations.a> b2 = b();
        int size = b2.size();
        for (int i2 = 0; i2 < size; i2++) {
            com.mapbox.mapboxsdk.annotations.a aVar = b2.get(i2);
            if ((aVar instanceof Marker) && arrayList.contains(Long.valueOf(aVar.a()))) {
                arrayList2.add((Marker) aVar);
            }
        }
        return new ArrayList(arrayList2);
    }

    @Override // com.mapbox.mapboxsdk.maps.p
    public void a() {
        this.f16121c.c();
        int b2 = this.f16120b.b();
        for (int i2 = 0; i2 < b2; i2++) {
            com.mapbox.mapboxsdk.annotations.a a2 = this.f16120b.a(i2);
            if (a2 instanceof Marker) {
                Marker marker = (Marker) a2;
                this.f16119a.a(a2.a());
                marker.a(this.f16119a.a(marker));
            }
        }
    }
}
