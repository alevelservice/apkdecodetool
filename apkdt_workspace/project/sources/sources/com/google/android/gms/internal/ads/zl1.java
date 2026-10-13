package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zl1 implements xm1 {

    /* renamed from: e, reason: collision with root package name */
    private final xm1[] f10800e;

    public zl1(xm1[] xm1VarArr) {
        this.f10800e = xm1VarArr;
    }

    @Override // com.google.android.gms.internal.ads.xm1
    public final long Y() {
        long j2 = Long.MAX_VALUE;
        for (xm1 xm1Var : this.f10800e) {
            long Y = xm1Var.Y();
            if (Y != Long.MIN_VALUE) {
                j2 = Math.min(j2, Y);
            }
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.xm1
    public final boolean a(long j2) {
        boolean z;
        boolean z2 = false;
        do {
            long Y = Y();
            if (Y == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (xm1 xm1Var : this.f10800e) {
                if (xm1Var.Y() == Y) {
                    z |= xm1Var.a(j2);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }
}
