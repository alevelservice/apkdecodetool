package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.interfaces.ECPublicKey;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z51 implements s01 {

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f10697f = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    private final b61 f10698a;

    /* renamed from: b, reason: collision with root package name */
    private final String f10699b;

    /* renamed from: c, reason: collision with root package name */
    private final byte[] f10700c;

    /* renamed from: d, reason: collision with root package name */
    private final i61 f10701d;

    /* renamed from: e, reason: collision with root package name */
    private final y51 f10702e;

    public z51(ECPublicKey eCPublicKey, byte[] bArr, String str, i61 i61Var, y51 y51Var) {
        f61.a(eCPublicKey);
        this.f10698a = new b61(eCPublicKey);
        this.f10700c = bArr;
        this.f10699b = str;
        this.f10701d = i61Var;
        this.f10702e = y51Var;
    }

    @Override // com.google.android.gms.internal.ads.s01
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        d61 a2 = this.f10698a.a(this.f10699b, this.f10700c, bArr2, this.f10702e.a(), this.f10701d);
        byte[] a3 = this.f10702e.a(a2.b()).a(bArr, f10697f);
        byte[] a4 = a2.a();
        return ByteBuffer.allocate(a4.length + a3.length).put(a4).put(a3).array();
    }
}
