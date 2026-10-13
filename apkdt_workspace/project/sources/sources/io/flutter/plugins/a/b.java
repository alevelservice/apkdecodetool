package io.flutter.plugins.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RequiresApi;
import g.a.c.a.d;

/* compiled from: ConnectivityBroadcastReceiver.java */
/* loaded from: classes2.dex */
class b extends BroadcastReceiver implements d.InterfaceC0212d {

    /* renamed from: e, reason: collision with root package name */
    private Context f19332e;

    /* renamed from: f, reason: collision with root package name */
    private io.flutter.plugins.a.a f19333f;

    /* renamed from: g, reason: collision with root package name */
    private d.b f19334g;

    /* renamed from: h, reason: collision with root package name */
    private Handler f19335h = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConnectivityBroadcastReceiver.java */
    /* loaded from: classes2.dex */
    public class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            b.this.b();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            b.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConnectivityBroadcastReceiver.java */
    /* renamed from: io.flutter.plugins.a.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0243b implements Runnable {
        RunnableC0243b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f19334g.a(b.this.f19333f.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, io.flutter.plugins.a.a aVar) {
        this.f19332e = context;
        this.f19333f = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        d.b bVar = this.f19334g;
        if (bVar != null) {
            bVar.a(this.f19333f.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f19335h.post(new RunnableC0243b());
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj, d.b bVar) {
        this.f19334g = bVar;
        if (Build.VERSION.SDK_INT >= 24) {
            this.f19333f.a().registerDefaultNetworkCallback(a());
        } else {
            this.f19332e.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f19333f.a().unregisterNetworkCallback(a());
        } else {
            this.f19332e.unregisterReceiver(this);
        }
    }

    @RequiresApi(api = 24)
    ConnectivityManager.NetworkCallback a() {
        return new a();
    }
}
