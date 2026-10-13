package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public final class i extends r {
    private final e B;

    public i(Context context, Looper looper, f.a aVar, f.b bVar, String str, @Nullable com.google.android.gms.common.internal.c cVar) {
        super(context, looper, aVar, bVar, str, cVar);
        this.B = new e(context, this.A);
    }

    public final Location B() {
        return this.B.a();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final void a() {
        synchronized (this.B) {
            if (f()) {
                try {
                    this.B.b();
                    this.B.c();
                } catch (Exception unused) {
                }
            }
            super.a();
        }
    }

    public final void a(PendingIntent pendingIntent, zzaj zzajVar) {
        this.B.a(pendingIntent, zzajVar);
    }

    public final void a(k.a<com.google.android.gms.location.d> aVar, zzaj zzajVar) {
        this.B.a(aVar, zzajVar);
    }

    public final void a(zzbd zzbdVar, com.google.android.gms.common.api.internal.k<com.google.android.gms.location.d> kVar, zzaj zzajVar) {
        synchronized (this.B) {
            this.B.a(zzbdVar, kVar, zzajVar);
        }
    }

    public final void a(LocationRequest locationRequest, PendingIntent pendingIntent, zzaj zzajVar) {
        this.B.a(locationRequest, pendingIntent, zzajVar);
    }

    public final void a(LocationSettingsRequest locationSettingsRequest, com.google.android.gms.common.api.internal.e<LocationSettingsResult> eVar, @Nullable String str) {
        l();
        com.google.android.gms.common.internal.m.a(locationSettingsRequest != null, "locationSettingsRequest can't be null nor empty.");
        com.google.android.gms.common.internal.m.a(eVar != null, "listener can't be null.");
        ((zzao) u()).zza(locationSettingsRequest, new zzbc(eVar), str);
    }
}
