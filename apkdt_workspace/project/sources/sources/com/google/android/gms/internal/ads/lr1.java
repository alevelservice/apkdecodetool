package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lr1 implements Comparator<zq1> {
    public lr1(mr1 mr1Var) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zq1 zq1Var, zq1 zq1Var2) {
        zq1 zq1Var3 = zq1Var;
        zq1 zq1Var4 = zq1Var2;
        if (zq1Var3.b() < zq1Var4.b()) {
            return -1;
        }
        if (zq1Var3.b() > zq1Var4.b()) {
            return 1;
        }
        if (zq1Var3.a() < zq1Var4.a()) {
            return -1;
        }
        if (zq1Var3.a() > zq1Var4.a()) {
            return 1;
        }
        float d2 = (zq1Var3.d() - zq1Var3.b()) * (zq1Var3.c() - zq1Var3.a());
        float d3 = (zq1Var4.d() - zq1Var4.b()) * (zq1Var4.c() - zq1Var4.a());
        if (d2 > d3) {
            return -1;
        }
        return d2 < d3 ? 1 : 0;
    }
}
