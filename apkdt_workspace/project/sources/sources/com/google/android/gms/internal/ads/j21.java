package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
class j21 implements c11<z01> {

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static class a implements z01 {

        /* renamed from: a, reason: collision with root package name */
        private final b11<z01> f7416a;

        /* renamed from: b, reason: collision with root package name */
        private final byte[] f7417b;

        private a(b11<z01> b11Var) {
            this.f7417b = new byte[]{0};
            this.f7416a = b11Var;
        }

        @Override // com.google.android.gms.internal.ads.z01
        public final byte[] a(byte[] bArr) {
            if (this.f7416a.b().c().equals(i51.LEGACY)) {
                return s51.a(this.f7416a.b().d(), this.f7416a.b().a().a(s51.a(bArr, this.f7417b)));
            }
            return s51.a(this.f7416a.b().d(), this.f7416a.b().a().a(bArr));
        }
    }

    static {
        Logger.getLogger(j21.class.getName());
    }

    @Override // com.google.android.gms.internal.ads.c11
    public final Class<z01> a() {
        return z01.class;
    }

    @Override // com.google.android.gms.internal.ads.c11
    public final /* synthetic */ z01 a(b11<z01> b11Var) {
        return new a(b11Var);
    }
}
