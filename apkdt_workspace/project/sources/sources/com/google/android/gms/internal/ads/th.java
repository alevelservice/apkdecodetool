package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class th extends jh {
    public th(tf tfVar) {
        super(tfVar);
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final boolean a(String str) {
        tf tfVar = this.f7495g.get();
        if (tfVar != null) {
            tfVar.zza(b(str), this);
        }
        qd.d("VideoStreamNoopCache is doing nothing.");
        a(str, b(str), "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void b() {
    }
}
