package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.k;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 extends com.google.android.gms.common.api.internal.u<com.google.android.gms.internal.location.i, d> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ FusedLocationProviderClient f12704b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(FusedLocationProviderClient fusedLocationProviderClient, k.a aVar) {
        super(aVar);
        this.f12704b = fusedLocationProviderClient;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.u
    public final /* synthetic */ void a(com.google.android.gms.internal.location.i iVar, e.i.b.b.d.i iVar2) {
        com.google.android.gms.internal.location.zzaj a2;
        com.google.android.gms.internal.location.i iVar3 = iVar;
        a2 = this.f12704b.a((e.i.b.b.d.i<Boolean>) iVar2);
        try {
            iVar3.a(a(), a2);
        } catch (RuntimeException e2) {
            iVar2.b((Exception) e2);
        }
    }
}
