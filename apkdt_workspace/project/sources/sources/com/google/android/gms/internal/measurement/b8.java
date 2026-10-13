package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* loaded from: classes.dex */
final class b8 {

    /* renamed from: a, reason: collision with root package name */
    final int f11777a;

    /* renamed from: b, reason: collision with root package name */
    final byte[] f11778b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b8(int i2, byte[] bArr) {
        this.f11777a = i2;
        this.f11778b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b8)) {
            return false;
        }
        b8 b8Var = (b8) obj;
        return this.f11777a == b8Var.f11777a && Arrays.equals(this.f11778b, b8Var.f11778b);
    }

    public final int hashCode() {
        return ((this.f11777a + 527) * 31) + Arrays.hashCode(this.f11778b);
    }
}
