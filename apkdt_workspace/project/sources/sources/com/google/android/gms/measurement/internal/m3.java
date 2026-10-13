package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m3 extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private final g8 f13072a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f13073b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f13074c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m3(g8 g8Var) {
        com.google.android.gms.common.internal.m.a(g8Var);
        this.f13072a = g8Var;
    }

    @WorkerThread
    public final void a() {
        this.f13072a.k();
        this.f13072a.b().g();
        this.f13072a.b().g();
        if (this.f13073b) {
            this.f13072a.zzab().y().a("Unregistering connectivity change receiver");
            this.f13073b = false;
            this.f13074c = false;
            try {
                this.f13072a.getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                this.f13072a.zzab().q().a("Failed to unregister the network broadcast receiver", e2);
            }
        }
    }

    @WorkerThread
    public final void b() {
        this.f13072a.k();
        this.f13072a.b().g();
        if (this.f13073b) {
            return;
        }
        this.f13072a.getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f13074c = this.f13072a.i().s();
        this.f13072a.zzab().y().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f13074c));
        this.f13073b = true;
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public void onReceive(Context context, Intent intent) {
        this.f13072a.k();
        String action = intent.getAction();
        this.f13072a.zzab().y().a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean s = this.f13072a.i().s();
            if (this.f13074c != s) {
                this.f13074c = s;
                this.f13072a.b().a(new p3(this, s));
                return;
            }
            return;
        }
        this.f13072a.zzab().t().a("NetworkBroadcastReceiver received unknown action", action);
    }
}
