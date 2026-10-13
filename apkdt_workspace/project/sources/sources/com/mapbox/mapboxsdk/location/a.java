package com.mapbox.mapboxsdk.location;

import com.mapbox.mapboxsdk.location.r;

/* compiled from: AnimatorListenerHolder.java */
/* loaded from: classes2.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private final int f15787a;

    /* renamed from: b, reason: collision with root package name */
    private final r.b f15788b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i2, r.b bVar) {
        this.f15787a = i2;
        this.f15788b = bVar;
    }

    public int a() {
        return this.f15787a;
    }

    public r.b b() {
        return this.f15788b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f15787a != aVar.f15787a) {
            return false;
        }
        r.b bVar = this.f15788b;
        r.b bVar2 = aVar.f15788b;
        return bVar != null ? bVar.equals(bVar2) : bVar2 == null;
    }

    public int hashCode() {
        int i2 = this.f15787a * 31;
        r.b bVar = this.f15788b;
        return i2 + (bVar != null ? bVar.hashCode() : 0);
    }
}
