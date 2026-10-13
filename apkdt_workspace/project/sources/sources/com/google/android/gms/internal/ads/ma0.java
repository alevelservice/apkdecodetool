package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class ma0 implements qy0<zzaok, vs0> {

    /* renamed from: a, reason: collision with root package name */
    private final rv f8070a;

    public ma0(rv rvVar) {
        this.f8070a = rvVar;
    }

    protected abstract qz0<vs0> a(zzaok zzaokVar);

    @Override // com.google.android.gms.internal.ads.qy0
    public final /* synthetic */ qz0<vs0> b(zzaok zzaokVar) {
        zzaok zzaokVar2 = zzaokVar;
        this.f8070a.a(zzaokVar2);
        qz0<vs0> a2 = a(zzaokVar2);
        gz0.a(a2, new qa0(this), yd.f10544e);
        return a2;
    }
}
