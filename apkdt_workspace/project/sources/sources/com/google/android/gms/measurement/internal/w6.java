package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f13308e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzn f13309f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ u6 f13310g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w6(u6 u6Var, AtomicReference atomicReference, zzn zznVar) {
        this.f13310g = u6Var;
        this.f13308e = atomicReference;
        this.f13309f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        synchronized (this.f13308e) {
            try {
                try {
                    zzdxVar = this.f13310g.f13255d;
                } catch (RemoteException e2) {
                    this.f13310g.zzab().q().a("Failed to get app instance id", e2);
                }
                if (zzdxVar == null) {
                    this.f13310g.zzab().q().a("Failed to get app instance id");
                    return;
                }
                this.f13308e.set(zzdxVar.zzc(this.f13309f));
                String str = (String) this.f13308e.get();
                if (str != null) {
                    this.f13310g.m().a(str);
                    this.f13310g.c().f13121l.a(str);
                }
                this.f13310g.G();
                this.f13308e.notify();
            } finally {
                this.f13308e.notify();
            }
        }
    }
}
