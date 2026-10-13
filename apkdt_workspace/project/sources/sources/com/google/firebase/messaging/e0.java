package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public class e0 implements Runnable {

    /* renamed from: j, reason: collision with root package name */
    private static final Object f15239j = new Object();

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")
    private static Boolean f15240k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")
    private static Boolean f15241l;

    /* renamed from: e, reason: collision with root package name */
    private final Context f15242e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.iid.r f15243f;

    /* renamed from: g, reason: collision with root package name */
    private final PowerManager.WakeLock f15244g;

    /* renamed from: h, reason: collision with root package name */
    private final d0 f15245h;

    /* renamed from: i, reason: collision with root package name */
    private final long f15246i;

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        @GuardedBy("this")
        private e0 f15247a;

        public a(e0 e0Var) {
            this.f15247a = e0Var;
        }

        public void a() {
            e0.a();
            e0.this.f15242e.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            e0 e0Var = this.f15247a;
            if (e0Var == null) {
                return;
            }
            if (e0Var.b()) {
                e0.a();
                this.f15247a.f15245h.a(this.f15247a, 0L);
                context.unregisterReceiver(this);
                this.f15247a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(d0 d0Var, Context context, com.google.firebase.iid.r rVar, long j2) {
        this.f15245h = d0Var;
        this.f15242e = context;
        this.f15246i = j2;
        this.f15243f = rVar;
        this.f15244g = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    private static String a(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        return sb.toString();
    }

    static /* synthetic */ boolean a() {
        return c();
    }

    private static boolean b(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f15239j) {
            if (f15240k == null) {
                booleanValue = a(context, "android.permission.WAKE_LOCK", f15240k);
            } else {
                booleanValue = f15240k.booleanValue();
            }
            f15240k = Boolean.valueOf(booleanValue);
            booleanValue2 = f15240k.booleanValue();
        }
        return booleanValue2;
    }

    private static boolean c() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3);
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (b(this.f15242e)) {
            this.f15244g.acquire(b.f15213a);
        }
        try {
            try {
                this.f15245h.a(true);
                if (!this.f15243f.e()) {
                    this.f15245h.a(false);
                    if (b(this.f15242e)) {
                        try {
                            this.f15244g.release();
                            return;
                        } catch (RuntimeException unused) {
                            return;
                        }
                    }
                    return;
                }
                if (a(this.f15242e) && !b()) {
                    new a(this).a();
                    if (b(this.f15242e)) {
                        try {
                            this.f15244g.release();
                            return;
                        } catch (RuntimeException unused2) {
                            return;
                        }
                    }
                    return;
                }
                if (this.f15245h.d()) {
                    this.f15245h.a(false);
                } else {
                    this.f15245h.a(this.f15246i);
                }
                if (b(this.f15242e)) {
                    try {
                        this.f15244g.release();
                    } catch (RuntimeException unused3) {
                    }
                }
            } catch (IOException e2) {
                String valueOf = String.valueOf(e2.getMessage());
                if (valueOf.length() != 0) {
                    "Failed to sync topics. Won't retry sync. ".concat(valueOf);
                } else {
                    new String("Failed to sync topics. Won't retry sync. ");
                }
                this.f15245h.a(false);
                if (b(this.f15242e)) {
                    try {
                        this.f15244g.release();
                    } catch (RuntimeException unused4) {
                    }
                }
            }
        } catch (Throwable th) {
            if (b(this.f15242e)) {
                try {
                    this.f15244g.release();
                } catch (RuntimeException unused5) {
                }
            }
            throw th;
        }
    }

    private static boolean a(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f15239j) {
            if (f15241l == null) {
                booleanValue = a(context, "android.permission.ACCESS_NETWORK_STATE", f15241l);
            } else {
                booleanValue = f15241l.booleanValue();
            }
            f15241l = Boolean.valueOf(booleanValue);
            booleanValue2 = f15241l.booleanValue();
        }
        return booleanValue2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean b() {
        boolean z;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f15242e.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        if (activeNetworkInfo != null) {
            z = activeNetworkInfo.isConnected();
        }
        return z;
    }

    private static boolean a(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = context.checkCallingOrSelfPermission(str) == 0;
        if (z || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z;
        }
        a(str);
        return false;
    }
}
