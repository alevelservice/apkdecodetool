package com.google.android.gms.internal.ads;

import com.ap.zoloz.hummer.biz.HummerConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzccc extends zzafc {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Object f11088e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f11089f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f11090g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ he f11091h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ e90 f11092i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzccc(e90 e90Var, Object obj, String str, long j2, he heVar) {
        this.f11092i = e90Var;
        this.f11088e = obj;
        this.f11089f = str;
        this.f11090g = j2;
        this.f11091h = heVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaez
    public final void onInitializationFailed(String str) {
        n80 n80Var;
        synchronized (this.f11088e) {
            this.f11092i.a(this.f11089f, false, str, (int) (com.google.android.gms.ads.internal.n.j().c() - this.f11090g));
            n80Var = this.f11092i.f6367k;
            n80Var.a(this.f11089f, HummerConstants.HUMMER_ERROR);
            this.f11091h.b(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaez
    public final void onInitializationSucceeded() {
        n80 n80Var;
        synchronized (this.f11088e) {
            this.f11092i.a(this.f11089f, true, "", (int) (com.google.android.gms.ads.internal.n.j().c() - this.f11090g));
            n80Var = this.f11092i.f6367k;
            n80Var.b(this.f11089f);
            this.f11091h.b(true);
        }
    }
}
