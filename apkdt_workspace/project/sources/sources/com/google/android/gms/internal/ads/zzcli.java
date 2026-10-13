package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcli extends zzva {

    /* renamed from: e, reason: collision with root package name */
    private final Context f11133e;

    /* renamed from: f, reason: collision with root package name */
    private final mk f11134f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private final ys0 f11135g = new ys0();

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    private final z10 f11136h = new z10();

    /* renamed from: i, reason: collision with root package name */
    private zzur f11137i;

    public zzcli(mk mkVar, Context context, String str) {
        this.f11134f = mkVar;
        this.f11135g.a(str);
        this.f11133e = context;
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzabs zzabsVar) {
        this.f11136h.a(zzabsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zzb(zzur zzurVar) {
        this.f11137i = zzurVar;
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final zzuw zzon() {
        x10 a2 = this.f11136h.a();
        this.f11135g.a(a2.f());
        this.f11135g.b(a2.g());
        ys0 ys0Var = this.f11135g;
        if (ys0Var.d() == null) {
            ys0Var.a(zztw.a(this.f11133e));
        }
        return new zzclh(this.f11133e, this.f11134f, this.f11135g, a2, this.f11137i);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzacf zzacfVar) {
        this.f11136h.a(zzacfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zzb(zzvs zzvsVar) {
        this.f11135g.a(zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzabt zzabtVar) {
        this.f11136h.a(zzabtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(String str, zzabz zzabzVar, zzaby zzabyVar) {
        this.f11136h.a(str, zzabzVar, zzabyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzaai zzaaiVar) {
        this.f11135g.a(zzaaiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzafj zzafjVar) {
        this.f11135g.a(zzafjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzafp zzafpVar) {
        this.f11136h.a(zzafpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(zzace zzaceVar, zztw zztwVar) {
        this.f11136h.a(zzaceVar);
        this.f11135g.a(zztwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.f11135g.a(publisherAdViewOptions);
    }
}
