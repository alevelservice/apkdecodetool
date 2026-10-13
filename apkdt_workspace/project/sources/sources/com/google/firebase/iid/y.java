package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.iid.x;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
public class y implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final long f15037e;

    /* renamed from: g, reason: collision with root package name */
    private final FirebaseInstanceId f15039g;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    ExecutorService f15040h = h.b();

    /* renamed from: f, reason: collision with root package name */
    private final PowerManager.WakeLock f15038f = ((PowerManager) a().getSystemService("power")).newWakeLock(1, "fiid-sync");

    /* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        private y f15041a;

        public a(y yVar) {
            this.f15041a = yVar;
        }

        public void a() {
            FirebaseInstanceId.m();
            this.f15041a.a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            y yVar = this.f15041a;
            if (yVar != null && yVar.b()) {
                FirebaseInstanceId.m();
                this.f15041a.f15039g.a(this.f15041a, 0L);
                this.f15041a.a().unregisterReceiver(this);
                this.f15041a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public y(FirebaseInstanceId firebaseInstanceId, long j2) {
        this.f15039g = firebaseInstanceId;
        this.f15037e = j2;
        this.f15038f.setReferenceCounted(false);
    }

    Context a() {
        return this.f15039g.b().b();
    }

    boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @VisibleForTesting
    boolean c() {
        x.a g2 = this.f15039g.g();
        if (!this.f15039g.a(g2)) {
            return true;
        }
        try {
            String a2 = this.f15039g.a();
            if (a2 == null) {
                return false;
            }
            Log.isLoggable("FirebaseInstanceId", 3);
            if (g2 == null || !a2.equals(g2.f15034a)) {
                a(a2);
            }
            return true;
        } catch (IOException e2) {
            if (o.a(e2.getMessage())) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
                sb.append("Token retrieval failed: ");
                sb.append(message);
                sb.append(". Will retry token retrieval");
                sb.toString();
                return false;
            }
            if (e2.getMessage() == null) {
                return false;
            }
            throw e2;
        } catch (SecurityException unused) {
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (w.b().b(a())) {
            this.f15038f.acquire();
        }
        try {
            try {
                this.f15039g.a(true);
                if (!this.f15039g.h()) {
                    this.f15039g.a(false);
                    if (!w.b().b(a())) {
                        return;
                    }
                } else if (w.b().a(a()) && !b()) {
                    new a(this).a();
                    if (!w.b().b(a())) {
                        return;
                    }
                } else {
                    if (c()) {
                        this.f15039g.a(false);
                    } else {
                        this.f15039g.a(this.f15037e);
                    }
                    if (!w.b().b(a())) {
                        return;
                    }
                }
            } catch (IOException e2) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                sb.toString();
                this.f15039g.a(false);
                if (!w.b().b(a())) {
                    return;
                }
            }
            this.f15038f.release();
        } catch (Throwable th) {
            if (w.b().b(a())) {
                this.f15038f.release();
            }
            throw th;
        }
    }

    private void a(String str) {
        if ("[DEFAULT]".equals(this.f15039g.b().c())) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(this.f15039g.b().c());
                if (valueOf.length() != 0) {
                    "Invoking onNewToken for app: ".concat(valueOf);
                } else {
                    new String("Invoking onNewToken for app: ");
                }
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new f(a(), this.f15040h).a(intent);
        }
    }
}
