package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lc extends uq1<uo1> {
    private final he<uo1> r;
    private final kd s;

    public lc(String str, he<uo1> heVar) {
        this(str, null, heVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.uq1
    public final hw1<uo1> a(uo1 uo1Var) {
        return hw1.a(uo1Var, d8.a(uo1Var));
    }

    private lc(String str, Map<String, String> map, he<uo1> heVar) {
        super(0, str, new oc(heVar));
        this.r = heVar;
        this.s = new kd();
        this.s.a(str, "GET", null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uq1
    public final /* synthetic */ void a(uo1 uo1Var) {
        uo1 uo1Var2 = uo1Var;
        this.s.a(uo1Var2.f9786c, uo1Var2.f9784a);
        kd kdVar = this.s;
        byte[] bArr = uo1Var2.f9785b;
        if (kd.a() && bArr != null) {
            kdVar.a(bArr);
        }
        this.r.b(uo1Var2);
    }
}
