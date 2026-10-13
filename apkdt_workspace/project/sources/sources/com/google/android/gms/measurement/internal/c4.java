package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;

/* loaded from: classes.dex */
final class c4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ j4 f12795e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f12796f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ Bundle f12797g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ Context f12798h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ f3 f12799i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ BroadcastReceiver.PendingResult f12800j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c4(z3 z3Var, j4 j4Var, long j2, Bundle bundle, Context context, f3 f3Var, BroadcastReceiver.PendingResult pendingResult) {
        this.f12795e = j4Var;
        this.f12796f = j2;
        this.f12797g = bundle;
        this.f12798h = context;
        this.f12799i = f3Var;
        this.f12800j = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long a2 = this.f12795e.e().f13119j.a();
        long j2 = this.f12796f;
        if (a2 > 0 && (j2 >= a2 || j2 <= 0)) {
            j2 = a2 - 1;
        }
        if (j2 > 0) {
            this.f12797g.putLong("click_timestamp", j2);
        }
        this.f12797g.putString("_cis", "referrer broadcast");
        j4.a(this.f12798h, (zzx) null).v().b("auto", "_cmp", this.f12797g);
        this.f12799i.y().a("Install campaign recorded");
        BroadcastReceiver.PendingResult pendingResult = this.f12800j;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
