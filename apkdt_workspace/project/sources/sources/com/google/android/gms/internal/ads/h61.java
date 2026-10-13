package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h61 implements l01 {

    /* renamed from: a, reason: collision with root package name */
    private final t61 f7015a;

    /* renamed from: b, reason: collision with root package name */
    private final z01 f7016b;

    public h61(t61 t61Var, z01 z01Var, int i2) {
        this.f7015a = t61Var;
        this.f7016b = z01Var;
    }

    @Override // com.google.android.gms.internal.ads.l01
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] a2 = this.f7015a.a(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return s51.a(a2, this.f7016b.a(s51.a(bArr2, a2, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))));
    }
}
