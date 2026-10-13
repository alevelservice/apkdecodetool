package com.mapbox.mapboxsdk.annotations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.n;

/* compiled from: Annotation.java */
@Deprecated
/* loaded from: classes2.dex */
public abstract class a implements Comparable<a> {

    /* renamed from: e, reason: collision with root package name */
    private long f15701e = -1;

    /* renamed from: f, reason: collision with root package name */
    protected n f15702f;

    public long a() {
        return this.f15701e;
    }

    public void a(MapView mapView) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public n b() {
        return this.f15702f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && (obj instanceof a) && this.f15701e == ((a) obj).a();
    }

    public int hashCode() {
        return (int) (a() ^ (a() >>> 32));
    }

    public void a(long j2) {
        this.f15701e = j2;
    }

    public void a(n nVar) {
        this.f15702f = nVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull a aVar) {
        if (this.f15701e < aVar.a()) {
            return 1;
        }
        return this.f15701e > aVar.a() ? -1 : 0;
    }
}
