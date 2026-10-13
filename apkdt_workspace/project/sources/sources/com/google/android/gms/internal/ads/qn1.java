package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qn1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f8984a;

    /* renamed from: b, reason: collision with root package name */
    private final on1[] f8985b;

    /* renamed from: c, reason: collision with root package name */
    private int f8986c;

    public qn1(on1... on1VarArr) {
        this.f8985b = on1VarArr;
        this.f8984a = on1VarArr.length;
    }

    public final on1 a(int i2) {
        return this.f8985b[i2];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qn1.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f8985b, ((qn1) obj).f8985b);
    }

    public final int hashCode() {
        if (this.f8986c == 0) {
            this.f8986c = Arrays.hashCode(this.f8985b) + 527;
        }
        return this.f8986c;
    }

    public final on1[] a() {
        return (on1[]) this.f8985b.clone();
    }
}
