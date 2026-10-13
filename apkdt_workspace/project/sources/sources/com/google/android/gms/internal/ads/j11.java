package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
class j11 implements c11<l01> {

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static class a implements l01 {

        /* renamed from: a, reason: collision with root package name */
        private final b11<l01> f7407a;

        private a(b11<l01> b11Var) {
            this.f7407a = b11Var;
        }

        @Override // com.google.android.gms.internal.ads.l01
        public final byte[] a(byte[] bArr, byte[] bArr2) {
            return s51.a(this.f7407a.b().d(), this.f7407a.b().a().a(bArr, bArr2));
        }
    }

    static {
        Logger.getLogger(j11.class.getName());
    }

    @Override // com.google.android.gms.internal.ads.c11
    public final Class<l01> a() {
        return l01.class;
    }

    @Override // com.google.android.gms.internal.ads.c11
    public final /* synthetic */ l01 a(b11<l01> b11Var) {
        return new a(b11Var);
    }
}
