package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bn1 {

    /* renamed from: d, reason: collision with root package name */
    public static final bn1 f5807d = new bn1(new cn1[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int f5808a;

    /* renamed from: b, reason: collision with root package name */
    private final cn1[] f5809b;

    /* renamed from: c, reason: collision with root package name */
    private int f5810c;

    public bn1(cn1... cn1VarArr) {
        this.f5809b = cn1VarArr;
        this.f5808a = cn1VarArr.length;
    }

    public final cn1 a(int i2) {
        return this.f5809b[i2];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && bn1.class == obj.getClass()) {
            bn1 bn1Var = (bn1) obj;
            if (this.f5808a == bn1Var.f5808a && Arrays.equals(this.f5809b, bn1Var.f5809b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f5810c == 0) {
            this.f5810c = Arrays.hashCode(this.f5809b);
        }
        return this.f5810c;
    }

    public final int a(cn1 cn1Var) {
        for (int i2 = 0; i2 < this.f5808a; i2++) {
            if (this.f5809b[i2] == cn1Var) {
                return i2;
            }
        }
        return -1;
    }
}
