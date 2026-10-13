package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e31;
import com.google.android.gms.internal.ads.g41;
import com.google.android.gms.internal.ads.n21;
import com.google.android.gms.internal.ads.r21;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class g21 implements y51 {

    /* renamed from: a, reason: collision with root package name */
    private final String f6784a;

    /* renamed from: b, reason: collision with root package name */
    private final int f6785b;

    /* renamed from: c, reason: collision with root package name */
    private e31 f6786c;

    /* renamed from: d, reason: collision with root package name */
    private n21 f6787d;

    /* renamed from: e, reason: collision with root package name */
    private int f6788e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g21(r41 r41Var) {
        this.f6784a = r41Var.k();
        if (this.f6784a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                f31 a2 = f31.a(r41Var.m());
                this.f6786c = (e31) d11.b(r41Var);
                this.f6785b = a2.k();
                return;
            } catch (o91 e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e2);
            }
        }
        if (this.f6784a.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                o21 a3 = o21.a(r41Var.m());
                this.f6787d = (n21) d11.b(r41Var);
                this.f6788e = a3.k().k();
                this.f6785b = this.f6788e + a3.m().k();
                return;
            } catch (o91 e3) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
            }
        }
        String valueOf = String.valueOf(this.f6784a);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
    }

    @Override // com.google.android.gms.internal.ads.y51
    public final int a() {
        return this.f6785b;
    }

    @Override // com.google.android.gms.internal.ads.y51
    public final l01 a(byte[] bArr) {
        if (bArr.length == this.f6785b) {
            if (this.f6784a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                e31.a n = e31.n();
                n.a((e31.a) this.f6786c);
                e31.a aVar = n;
                aVar.a(t71.zzh(bArr, 0, this.f6785b));
                return (l01) d11.a(this.f6784a, (e31) aVar.s(), l01.class);
            }
            if (this.f6784a.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f6788e);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f6788e, this.f6785b);
                r21.a o = r21.o();
                o.a((r21.a) this.f6787d.m());
                r21.a aVar2 = o;
                aVar2.a(t71.zzy(copyOfRange));
                r21 r21Var = (r21) aVar2.s();
                g41.a o2 = g41.o();
                o2.a((g41.a) this.f6787d.n());
                g41.a aVar3 = o2;
                aVar3.a(t71.zzy(copyOfRange2));
                g41 g41Var = (g41) aVar3.s();
                n21.a o3 = n21.o();
                o3.a(this.f6787d.k());
                o3.a(r21Var);
                o3.a(g41Var);
                return (l01) d11.a(this.f6784a, (n21) o3.s(), l01.class);
            }
            throw new GeneralSecurityException("unknown DEM key type");
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }
}
