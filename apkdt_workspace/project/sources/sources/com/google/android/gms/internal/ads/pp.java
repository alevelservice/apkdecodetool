package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pp implements oe1<ox<wv>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<kv> f8743a;

    public pp(yo yoVar, af1<kv> af1Var) {
        this.f8743a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        final kv kvVar = this.f8743a.get();
        ox oxVar = new ox(new wv(kvVar) { // from class: com.google.android.gms.internal.ads.ap

            /* renamed from: e, reason: collision with root package name */
            private final kv f5637e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5637e = kvVar;
            }

            @Override // com.google.android.gms.internal.ads.wv
            public final void c() {
                this.f5637e.g();
            }
        }, yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
