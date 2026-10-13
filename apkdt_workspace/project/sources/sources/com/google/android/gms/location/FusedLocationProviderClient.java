package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.location.zzad;
import com.google.android.gms.internal.location.zzak;
import com.google.android.gms.internal.location.zzbd;

/* loaded from: classes.dex */
public class FusedLocationProviderClient extends com.google.android.gms.common.api.e<a.d.C0086d> {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class zza extends zzak {

        /* renamed from: e, reason: collision with root package name */
        private final e.i.b.b.d.i<Void> f12663e;

        public zza(e.i.b.b.d.i<Void> iVar) {
            this.f12663e = iVar;
        }

        @Override // com.google.android.gms.internal.location.zzaj
        public final void zza(zzad zzadVar) {
            com.google.android.gms.common.api.internal.t.a(zzadVar.i(), this.f12663e);
        }
    }

    public FusedLocationProviderClient(@NonNull Activity activity) {
        super(activity, (com.google.android.gms.common.api.a<a.d>) f.f12701c, (a.d) null, (com.google.android.gms.common.api.internal.q) new com.google.android.gms.common.api.internal.a());
    }

    public FusedLocationProviderClient(@NonNull Context context) {
        super(context, f.f12701c, (a.d) null, new com.google.android.gms.common.api.internal.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.google.android.gms.internal.location.zzaj a(e.i.b.b.d.i<Boolean> iVar) {
        return new zzp(this, iVar);
    }

    public e.i.b.b.d.h<Void> a(PendingIntent pendingIntent) {
        return com.google.android.gms.common.internal.l.a(f.f12702d.a(b(), pendingIntent));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public e.i.b.b.d.h<Void> a(LocationRequest locationRequest, PendingIntent pendingIntent) {
        return com.google.android.gms.common.internal.l.a(f.f12702d.a(b(), locationRequest, pendingIntent));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public e.i.b.b.d.h<Void> a(LocationRequest locationRequest, d dVar, @Nullable Looper looper) {
        zzbd a2 = zzbd.a(locationRequest);
        com.google.android.gms.common.api.internal.k a3 = com.google.android.gms.common.api.internal.l.a(dVar, com.google.android.gms.internal.location.p.a(looper), d.class.getSimpleName());
        return a((FusedLocationProviderClient) new e0(this, a3, a2, a3), (e0) new f0(this, a3.b()));
    }

    public e.i.b.b.d.h<Void> a(d dVar) {
        return com.google.android.gms.common.api.internal.t.a(a(com.google.android.gms.common.api.internal.l.a(dVar, d.class.getSimpleName())));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public e.i.b.b.d.h<Location> h() {
        return a(new d0(this));
    }
}
