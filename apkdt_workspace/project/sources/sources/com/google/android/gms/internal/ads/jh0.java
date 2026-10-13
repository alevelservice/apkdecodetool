package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class jh0 implements mu {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ he f7496a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bd0 f7497b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jh0(ih0 ih0Var, he heVar, bd0 bd0Var) {
        this.f7496a = heVar;
        this.f7497b = bd0Var;
    }

    @Override // com.google.android.gms.internal.ads.mu
    public final synchronized void onAdFailedToLoad(int i2) {
        if (((Boolean) mu1.e().a(aw1.V2)).booleanValue()) {
            i2 = 3;
        }
        he heVar = this.f7496a;
        String str = this.f7497b.f5764a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("adapter ");
        sb.append(str);
        sb.append(" failed to load");
        heVar.a(new bg0(sb.toString(), i2));
    }

    @Override // com.google.android.gms.internal.ads.mu
    public final synchronized void onAdLoaded() {
        this.f7496a.b(null);
    }
}
