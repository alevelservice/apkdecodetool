package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f13022e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13023f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ boolean f13024g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzn f13025h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzp f13026i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ u6 f13027j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j7(u6 u6Var, String str, String str2, boolean z, zzn zznVar, zzp zzpVar) {
        this.f13027j = u6Var;
        this.f13022e = str;
        this.f13023f = str2;
        this.f13024g = z;
        this.f13025h = zznVar;
        this.f13026i = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        Bundle bundle = new Bundle();
        try {
            zzdxVar = this.f13027j.f13255d;
            if (zzdxVar == null) {
                this.f13027j.zzab().q().a("Failed to get user properties", this.f13022e, this.f13023f);
                return;
            }
            Bundle a2 = r8.a(zzdxVar.zza(this.f13022e, this.f13023f, this.f13024g, this.f13025h));
            this.f13027j.G();
            this.f13027j.j().a(this.f13026i, a2);
        } catch (RemoteException e2) {
            this.f13027j.zzab().q().a("Failed to get user properties", this.f13022e, e2);
        } finally {
            this.f13027j.j().a(this.f13026i, bundle);
        }
    }
}
