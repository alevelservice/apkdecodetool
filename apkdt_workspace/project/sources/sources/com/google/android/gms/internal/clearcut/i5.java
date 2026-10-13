package com.google.android.gms.internal.clearcut;

import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i5 extends com.google.android.gms.common.api.internal.d<Status, l5> {
    private final zze o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i5(zze zzeVar, com.google.android.gms.common.api.f fVar) {
        super(com.google.android.gms.clearcut.a.o, fVar);
        this.o = zzeVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ com.google.android.gms.common.api.m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d
    protected final /* synthetic */ void a(l5 l5Var) {
        l5 l5Var2 = l5Var;
        zzi zziVar = new zzi(this);
        try {
            zze zzeVar = this.o;
            if (zzeVar.n != null && zzeVar.m.o.length == 0) {
                zzeVar.m.o = zzeVar.n.a();
            }
            if (zzeVar.o != null && zzeVar.m.v.length == 0) {
                zzeVar.m.v = zzeVar.o.a();
            }
            j5 j5Var = zzeVar.m;
            byte[] bArr = new byte[j5Var.a()];
            u4.a(j5Var, bArr, 0, bArr.length);
            zzeVar.f4906f = bArr;
            ((zzn) l5Var2.u()).zza(zziVar, this.o);
        } catch (RuntimeException unused) {
            c(new Status(10, "MessageProducer"));
        }
    }
}
