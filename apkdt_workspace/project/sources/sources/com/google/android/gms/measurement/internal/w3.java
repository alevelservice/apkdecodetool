package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzf;

/* loaded from: classes.dex */
final class w3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzf f13300e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ServiceConnection f13301f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ x3 f13302g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w3(x3 x3Var, zzf zzfVar, ServiceConnection serviceConnection) {
        this.f13302g = x3Var;
        this.f13300e = zzfVar;
        this.f13301f = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        x3 x3Var = this.f13302g;
        u3 u3Var = x3Var.f13317f;
        str = x3Var.f13316e;
        zzf zzfVar = this.f13300e;
        ServiceConnection serviceConnection = this.f13301f;
        Bundle a2 = u3Var.a(str, zzfVar);
        u3Var.f13247a.b().g();
        if (a2 != null) {
            long j2 = a2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j2 == 0) {
                u3Var.f13247a.zzab().q().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = a2.getString("install_referrer");
                if (string != null && !string.isEmpty()) {
                    u3Var.f13247a.zzab().y().a("InstallReferrer API result", string);
                    r8 D = u3Var.f13247a.D();
                    String valueOf = String.valueOf(string);
                    Bundle a3 = D.a(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (a3 == null) {
                        u3Var.f13247a.zzab().q().a("No campaign params defined in install referrer result");
                    } else {
                        String string2 = a3.getString("medium");
                        if ((string2 == null || "(not set)".equalsIgnoreCase(string2) || "organic".equalsIgnoreCase(string2)) ? false : true) {
                            long j3 = a2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j3 == 0) {
                                u3Var.f13247a.zzab().q().a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                a3.putLong("click_timestamp", j3);
                            }
                        }
                        if (j2 == u3Var.f13247a.e().f13120k.a()) {
                            u3Var.f13247a.zzae();
                            u3Var.f13247a.zzab().y().a("Campaign has already been logged");
                        } else {
                            u3Var.f13247a.e().f13120k.a(j2);
                            u3Var.f13247a.zzae();
                            u3Var.f13247a.zzab().y().a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            a3.putString("_cis", "referrer API");
                            u3Var.f13247a.v().b("auto", "_cmp", a3);
                        }
                    }
                } else {
                    u3Var.f13247a.zzab().q().a("No referrer defined in install referrer response");
                }
            }
        }
        if (serviceConnection != null) {
            com.google.android.gms.common.stats.a.a().a(u3Var.f13247a.getContext(), serviceConnection);
        }
    }
}
