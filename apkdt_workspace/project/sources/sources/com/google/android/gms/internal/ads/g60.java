package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g60 implements com.google.android.gms.ads.internal.i {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ d60 f6816e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g60(d60 d60Var) {
        this.f6816e = d60Var;
    }

    @Override // com.google.android.gms.ads.internal.i
    public final void zzju() {
        kv kvVar;
        kvVar = this.f6816e.f6171f;
        kvVar.onPause();
    }

    @Override // com.google.android.gms.ads.internal.i
    public final void zzjv() {
        kv kvVar;
        kvVar = this.f6816e.f6171f;
        kvVar.onResume();
    }
}
