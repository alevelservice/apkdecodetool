package com.google.android.gms.common.images;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final int f5214a;

    /* renamed from: b, reason: collision with root package name */
    private final int f5215b;

    public a(int i2, int i3) {
        this.f5214a = i2;
        this.f5215b = i3;
    }

    public final int a() {
        return this.f5215b;
    }

    public final int b() {
        return this.f5214a;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f5214a == aVar.f5214a && this.f5215b == aVar.f5215b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f5215b;
        int i3 = this.f5214a;
        return i2 ^ ((i3 >>> 16) | (i3 << 16));
    }

    public final String toString() {
        int i2 = this.f5214a;
        int i3 = this.f5215b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i2);
        sb.append("x");
        sb.append(i3);
        return sb.toString();
    }
}
