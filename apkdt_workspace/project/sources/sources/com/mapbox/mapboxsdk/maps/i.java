package com.mapbox.mapboxsdk.maps;

/* compiled from: ImageStretches.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private final float f16042a;

    /* renamed from: b, reason: collision with root package name */
    private final float f16043b;

    public float a() {
        return this.f16042a;
    }

    public float b() {
        return this.f16043b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f16042a == iVar.f16042a && this.f16043b == iVar.f16043b;
    }

    public int hashCode() {
        float f2 = this.f16042a;
        int floatToIntBits = (f2 != 0.0f ? Float.floatToIntBits(f2) : 0) * 31;
        float f3 = this.f16043b;
        return floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
    }

    public String toString() {
        return "[ first: " + this.f16042a + ", second: " + this.f16043b + " ]";
    }
}
