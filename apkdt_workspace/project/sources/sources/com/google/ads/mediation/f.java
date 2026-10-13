package com.google.ads.mediation;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class f extends com.google.android.gms.ads.o.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AbstractAdViewAdapter f4232a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f4232a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.o.a
    public final void a() {
        com.google.android.gms.ads.f fVar;
        com.google.android.gms.ads.reward.mediation.a aVar;
        com.google.android.gms.ads.f fVar2;
        com.google.android.gms.ads.reward.mediation.a aVar2;
        fVar = this.f4232a.f4217e;
        if (fVar != null) {
            aVar = this.f4232a.f4218f;
            if (aVar != null) {
                fVar2 = this.f4232a.f4217e;
                Bundle a2 = fVar2.a();
                aVar2 = this.f4232a.f4218f;
                aVar2.zzb(a2);
            }
        }
    }
}
