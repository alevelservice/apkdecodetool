package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcdl extends zzaoh {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ bb0 f11093e;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzcdl(bb0 bb0Var) {
        this.f11093e = bb0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzaoe
    public final void zza(zzauw zzauwVar) {
        this.f11093e.f5741e.a(new ac(zzauwVar.f10998e, zzauwVar.f10999f));
    }

    @Override // com.google.android.gms.internal.ads.zzaoe
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.f11093e.f5741e.b(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
