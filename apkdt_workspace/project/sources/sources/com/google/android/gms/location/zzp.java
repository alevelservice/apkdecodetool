package com.google.android.gms.location;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.location.zzad;
import com.google.android.gms.internal.location.zzak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzp extends zzak {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ e.i.b.b.d.i f12724e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(FusedLocationProviderClient fusedLocationProviderClient, e.i.b.b.d.i iVar) {
        this.f12724e = iVar;
    }

    @Override // com.google.android.gms.internal.location.zzaj
    public final void zza(zzad zzadVar) {
        Status i2 = zzadVar.i();
        if (i2 == null) {
            this.f12724e.b((Exception) new com.google.android.gms.common.api.b(new Status(8, "Got null status from location service")));
        } else if (i2.k() == 0) {
            this.f12724e.a((e.i.b.b.d.i) true);
        } else {
            this.f12724e.b((Exception) com.google.android.gms.common.internal.a.a(i2));
        }
    }
}
