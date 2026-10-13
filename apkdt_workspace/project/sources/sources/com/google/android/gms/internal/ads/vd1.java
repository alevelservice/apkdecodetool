package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class vd1 extends xd1 implements ci {

    /* renamed from: l, reason: collision with root package name */
    private String f9897l;
    private boolean m;

    public vd1(String str) {
        this.f9897l = str;
    }

    @Override // com.google.android.gms.internal.ads.ci
    public final void a(uk ukVar) {
    }

    @Override // com.google.android.gms.internal.ads.ci
    public final void a(zd1 zd1Var, ByteBuffer byteBuffer, long j2, bh bhVar) {
        zd1Var.position();
        byteBuffer.remaining();
        this.m = byteBuffer.remaining() == 16;
        a(zd1Var, j2, bhVar);
    }

    @Override // com.google.android.gms.internal.ads.ci
    public final String getType() {
        return this.f9897l;
    }

    @Override // com.google.android.gms.internal.ads.xd1
    public final void a(zd1 zd1Var, long j2, bh bhVar) {
        this.f10320f = zd1Var;
        this.f10322h = zd1Var.position();
        if (!this.m) {
            int i2 = ((8 + j2) > 4294967296L ? 1 : ((8 + j2) == 4294967296L ? 0 : -1));
        }
        zd1Var.g(zd1Var.position() + j2);
        this.f10323i = zd1Var.position();
        this.f10319e = bhVar;
    }
}
