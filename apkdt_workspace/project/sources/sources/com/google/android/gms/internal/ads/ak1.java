package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ak1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f5590a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5591b;

    public ak1(int i2, byte[] bArr) {
        this.f5591b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ak1.class == obj.getClass()) {
            ak1 ak1Var = (ak1) obj;
            if (this.f5590a == ak1Var.f5590a && Arrays.equals(this.f5591b, ak1Var.f5591b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f5590a * 31) + Arrays.hashCode(this.f5591b);
    }
}
