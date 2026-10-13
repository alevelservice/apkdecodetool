package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.location.LocationRequest;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private final m<zzao> f11682a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f11683b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f11684c = false;

    /* renamed from: d, reason: collision with root package name */
    private final Map<k.a<com.google.android.gms.location.e>, zzax> f11685d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private final Map<k.a<Object>, zzaw> f11686e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private final Map<k.a<com.google.android.gms.location.d>, zzat> f11687f = new HashMap();

    public e(Context context, m<zzao> mVar) {
        this.f11683b = context;
        this.f11682a = mVar;
    }

    private final zzat a(com.google.android.gms.common.api.internal.k<com.google.android.gms.location.d> kVar) {
        zzat zzatVar;
        synchronized (this.f11687f) {
            zzatVar = this.f11687f.get(kVar.b());
            if (zzatVar == null) {
                zzatVar = new zzat(kVar);
            }
            this.f11687f.put(kVar.b(), zzatVar);
        }
        return zzatVar;
    }

    public final Location a() {
        this.f11682a.a();
        return this.f11682a.b().zza(this.f11683b.getPackageName());
    }

    public final void a(PendingIntent pendingIntent, zzaj zzajVar) {
        this.f11682a.a();
        this.f11682a.b().zza(new zzbf(2, null, null, pendingIntent, null, zzajVar != null ? zzajVar.asBinder() : null));
    }

    public final void a(k.a<com.google.android.gms.location.d> aVar, zzaj zzajVar) {
        this.f11682a.a();
        com.google.android.gms.common.internal.m.a(aVar, "Invalid null listener key");
        synchronized (this.f11687f) {
            zzat remove = this.f11687f.remove(aVar);
            if (remove != null) {
                remove.release();
                this.f11682a.b().zza(zzbf.a(remove, zzajVar));
            }
        }
    }

    public final void a(zzbd zzbdVar, com.google.android.gms.common.api.internal.k<com.google.android.gms.location.d> kVar, zzaj zzajVar) {
        this.f11682a.a();
        this.f11682a.b().zza(new zzbf(1, zzbdVar, null, null, a(kVar).asBinder(), zzajVar != null ? zzajVar.asBinder() : null));
    }

    public final void a(LocationRequest locationRequest, PendingIntent pendingIntent, zzaj zzajVar) {
        this.f11682a.a();
        this.f11682a.b().zza(new zzbf(1, zzbd.a(locationRequest), null, pendingIntent, null, zzajVar != null ? zzajVar.asBinder() : null));
    }

    public final void a(boolean z) {
        this.f11682a.a();
        this.f11682a.b().zza(z);
        this.f11684c = z;
    }

    public final void b() {
        synchronized (this.f11685d) {
            for (zzax zzaxVar : this.f11685d.values()) {
                if (zzaxVar != null) {
                    this.f11682a.b().zza(zzbf.a(zzaxVar, (zzaj) null));
                }
            }
            this.f11685d.clear();
        }
        synchronized (this.f11687f) {
            for (zzat zzatVar : this.f11687f.values()) {
                if (zzatVar != null) {
                    this.f11682a.b().zza(zzbf.a(zzatVar, (zzaj) null));
                }
            }
            this.f11687f.clear();
        }
        synchronized (this.f11686e) {
            for (zzaw zzawVar : this.f11686e.values()) {
                if (zzawVar != null) {
                    this.f11682a.b().zza(new zzo(2, null, zzawVar.asBinder(), null));
                }
            }
            this.f11686e.clear();
        }
    }

    public final void c() {
        if (this.f11684c) {
            a(false);
        }
    }
}
