package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f13042e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13043f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13044g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ String f13045h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ boolean f13046i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ zzn f13047j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ u6 f13048k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k7(u6 u6Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzn zznVar) {
        this.f13048k = u6Var;
        this.f13042e = atomicReference;
        this.f13043f = str;
        this.f13044g = str2;
        this.f13045h = str3;
        this.f13046i = z;
        this.f13047j = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        synchronized (this.f13042e) {
            try {
                try {
                    zzdxVar = this.f13048k.f13255d;
                } catch (RemoteException e2) {
                    this.f13048k.zzab().q().a("Failed to get user properties", f3.a(this.f13043f), this.f13044g, e2);
                    this.f13042e.set(Collections.emptyList());
                }
                if (zzdxVar == null) {
                    this.f13048k.zzab().q().a("Failed to get user properties", f3.a(this.f13043f), this.f13044g, this.f13045h);
                    this.f13042e.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f13043f)) {
                    this.f13042e.set(zzdxVar.zza(this.f13044g, this.f13045h, this.f13046i, this.f13047j));
                } else {
                    this.f13042e.set(zzdxVar.zza(this.f13043f, this.f13044g, this.f13045h, this.f13046i));
                }
                this.f13048k.G();
                this.f13042e.notify();
            } finally {
                this.f13042e.notify();
            }
        }
    }
}
