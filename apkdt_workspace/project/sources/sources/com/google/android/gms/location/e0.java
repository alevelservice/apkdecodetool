package com.google.android.gms.location;

import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.location.FusedLocationProviderClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e0 extends com.google.android.gms.common.api.internal.n<com.google.android.gms.internal.location.i, d> {

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ zzbd f12697d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.internal.k f12698e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(FusedLocationProviderClient fusedLocationProviderClient, com.google.android.gms.common.api.internal.k kVar, zzbd zzbdVar, com.google.android.gms.common.api.internal.k kVar2) {
        super(kVar);
        this.f12697d = zzbdVar;
        this.f12698e = kVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.n
    public final /* synthetic */ void a(com.google.android.gms.internal.location.i iVar, e.i.b.b.d.i iVar2) {
        iVar.a(this.f12697d, this.f12698e, new FusedLocationProviderClient.zza(iVar2));
    }
}
