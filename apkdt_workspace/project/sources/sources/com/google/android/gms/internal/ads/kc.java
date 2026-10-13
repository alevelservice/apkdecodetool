package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kc extends bc {
    private final /* synthetic */ byte[] t;
    private final /* synthetic */ Map u;
    private final /* synthetic */ kd v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kc(gc gcVar, int i2, String str, k kVar, iv1 iv1Var, byte[] bArr, Map map, kd kdVar) {
        super(i2, str, kVar, iv1Var);
        this.t = bArr;
        this.u = map;
        this.v = kdVar;
    }

    @Override // com.google.android.gms.internal.ads.uq1
    public final Map<String, String> a() {
        Map<String, String> map = this.u;
        return map == null ? super.a() : map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uq1
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void a(String str) {
        this.v.a(str);
        super.a(str);
    }

    @Override // com.google.android.gms.internal.ads.uq1
    public final byte[] g() {
        byte[] bArr = this.t;
        return bArr == null ? super.g() : bArr;
    }
}
