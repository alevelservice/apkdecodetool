package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f12984e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f12985f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f12986g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ String f12987h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzn f12988i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ u6 f12989j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i7(u6 u6Var, AtomicReference atomicReference, String str, String str2, String str3, zzn zznVar) {
        this.f12989j = u6Var;
        this.f12984e = atomicReference;
        this.f12985f = str;
        this.f12986g = str2;
        this.f12987h = str3;
        this.f12988i = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        synchronized (this.f12984e) {
            try {
                try {
                    zzdxVar = this.f12989j.f13255d;
                } catch (RemoteException e2) {
                    this.f12989j.zzab().q().a("Failed to get conditional properties", f3.a(this.f12985f), this.f12986g, e2);
                    this.f12984e.set(Collections.emptyList());
                }
                if (zzdxVar == null) {
                    this.f12989j.zzab().q().a("Failed to get conditional properties", f3.a(this.f12985f), this.f12986g, this.f12987h);
                    this.f12984e.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f12985f)) {
                    this.f12984e.set(zzdxVar.zza(this.f12986g, this.f12987h, this.f12988i));
                } else {
                    this.f12984e.set(zzdxVar.zzc(this.f12985f, this.f12986g, this.f12987h));
                }
                this.f12989j.G();
                this.f12984e.notify();
            } finally {
                this.f12984e.notify();
            }
        }
    }
}
