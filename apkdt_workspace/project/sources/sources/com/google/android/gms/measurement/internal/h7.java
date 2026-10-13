package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzp;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f12970e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f12971f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzn f12972g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzp f12973h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ u6 f12974i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h7(u6 u6Var, String str, String str2, zzn zznVar, zzp zzpVar) {
        this.f12974i = u6Var;
        this.f12970e = str;
        this.f12971f = str2;
        this.f12972g = zznVar;
        this.f12973h = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzdxVar = this.f12974i.f13255d;
            if (zzdxVar == null) {
                this.f12974i.zzab().q().a("Failed to get conditional properties", this.f12970e, this.f12971f);
                return;
            }
            ArrayList<Bundle> b2 = r8.b(zzdxVar.zza(this.f12970e, this.f12971f, this.f12972g));
            this.f12974i.G();
            this.f12974i.j().a(this.f12973h, b2);
        } catch (RemoteException e2) {
            this.f12974i.zzab().q().a("Failed to get conditional properties", this.f12970e, this.f12971f, e2);
        } finally {
            this.f12974i.j().a(this.f12973h, arrayList);
        }
    }
}
