package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wb0 implements fu0<zb0, yb0> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10076a;

    /* renamed from: b, reason: collision with root package name */
    private final String f10077b;

    /* renamed from: c, reason: collision with root package name */
    private final x7 f10078c;

    /* renamed from: d, reason: collision with root package name */
    private final String f10079d;

    public wb0(Context context, String str, x7 x7Var, String str2) {
        this.f10076a = context;
        this.f10077b = str;
        this.f10078c = x7Var;
        this.f10079d = str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x0246, code lost:
    
        r2 = new java.lang.StringBuilder(46);
        r2.append("Received error HTTP response code: ");
        r2.append(r8);
        com.google.android.gms.internal.ads.qd.d(r2.toString());
        r4 = new java.lang.StringBuilder(46);
        r4.append("Received error HTTP response code: ");
        r4.append(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x026e, code lost:
    
        throw new com.google.android.gms.internal.ads.ib0(r4.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.yb0 a(java.lang.String r21, com.google.android.gms.internal.ads.l7 r22, org.json.JSONObject r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.wb0.a(java.lang.String, com.google.android.gms.internal.ads.l7, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.yb0");
    }

    @Override // com.google.android.gms.internal.ads.fu0
    public final /* synthetic */ yb0 apply(zb0 zb0Var) {
        l7 l7Var;
        l7 l7Var2;
        JSONObject jSONObject;
        zb0 zb0Var2 = zb0Var;
        l7Var = zb0Var2.f10721b;
        String b2 = l7Var.b();
        l7Var2 = zb0Var2.f10721b;
        jSONObject = zb0Var2.f10720a;
        return a(b2, l7Var2, jSONObject, this.f10079d);
    }
}
