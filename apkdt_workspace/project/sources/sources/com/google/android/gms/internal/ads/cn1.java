package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cn1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f6073a;

    /* renamed from: b, reason: collision with root package name */
    private final zzgq[] f6074b;

    /* renamed from: c, reason: collision with root package name */
    private int f6075c;

    public cn1(zzgq... zzgqVarArr) {
        no1.b(zzgqVarArr.length > 0);
        this.f6074b = zzgqVarArr;
        this.f6073a = zzgqVarArr.length;
    }

    public final zzgq a(int i2) {
        return this.f6074b[i2];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && cn1.class == obj.getClass()) {
            cn1 cn1Var = (cn1) obj;
            if (this.f6073a == cn1Var.f6073a && Arrays.equals(this.f6074b, cn1Var.f6074b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f6075c == 0) {
            this.f6075c = Arrays.hashCode(this.f6074b) + 527;
        }
        return this.f6075c;
    }

    public final int a(zzgq zzgqVar) {
        int i2 = 0;
        while (true) {
            zzgq[] zzgqVarArr = this.f6074b;
            if (i2 >= zzgqVarArr.length) {
                return -1;
            }
            if (zzgqVar == zzgqVarArr[i2]) {
                return i2;
            }
            i2++;
        }
    }
}
