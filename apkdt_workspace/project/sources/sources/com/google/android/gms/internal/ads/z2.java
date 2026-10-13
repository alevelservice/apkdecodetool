package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z2 implements o0<p3> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ t11 f10676a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ h2 f10677b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ yc f10678c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ q2 f10679d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z2(q2 q2Var, t11 t11Var, h2 h2Var, yc ycVar) {
        this.f10679d = q2Var;
        this.f10676a = t11Var;
        this.f10677b = h2Var;
        this.f10678c = ycVar;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(p3 p3Var, Map map) {
        Object obj;
        int i2;
        obj = this.f10679d.f8828a;
        synchronized (obj) {
            qd.c("JS Engine is requesting an update");
            i2 = this.f10679d.f8835h;
            if (i2 == 0) {
                qd.c("Starting reload.");
                this.f10679d.f8835h = 2;
                this.f10679d.a(this.f10676a);
            }
            this.f10677b.zzb("/requestReload", (o0<? super p3>) this.f10678c.a());
        }
    }
}
