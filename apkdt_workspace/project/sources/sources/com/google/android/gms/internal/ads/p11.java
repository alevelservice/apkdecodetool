package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p11 implements l01 {

    /* renamed from: c, reason: collision with root package name */
    private static final byte[] f8624c = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    private final r41 f8625a;

    /* renamed from: b, reason: collision with root package name */
    private final l01 f8626b;

    public p11(r41 r41Var, l01 l01Var) {
        this.f8625a = r41Var;
        this.f8626b = l01Var;
    }

    @Override // com.google.android.gms.internal.ads.l01
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] e2 = d11.b(this.f8625a).e();
        byte[] a2 = this.f8626b.a(e2, f8624c);
        byte[] a3 = ((l01) d11.a(this.f8625a.k(), e2, l01.class)).a(bArr, bArr2);
        return ByteBuffer.allocate(a2.length + 4 + a3.length).putInt(a2.length).put(a2).put(a3).array();
    }
}
