package com.alipay.iap.android.aplog.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import e.b.b.a.a.d.d.b;
import e.b.b.a.a.d.i;

/* loaded from: classes.dex */
public abstract class RigorousNetworkConnReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private int f3339a;

    /* renamed from: b, reason: collision with root package name */
    private int f3340b;

    /* renamed from: c, reason: collision with root package name */
    private Boolean f3341c;

    /* renamed from: d, reason: collision with root package name */
    private Context f3342d;

    public RigorousNetworkConnReceiver(Context context) {
        this.f3339a = -1;
        this.f3340b = -1;
        this.f3341c = null;
        this.f3342d = context;
        this.f3341c = null;
        this.f3339a = -1;
        this.f3340b = -1;
    }

    private int a(Context context) {
        NetworkInfo networkInfo;
        Boolean bool;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            i.c().a("NetworkConnReceiver", "getActiveNetworkInfo exception. " + th.toString());
            networkInfo = null;
        }
        if (networkInfo == null) {
            i.c().c("NetworkConnReceiver", "No network now!");
            this.f3341c = false;
            return 0;
        }
        boolean isAvailable = networkInfo.isAvailable();
        boolean isConnected = networkInfo.isConnected();
        int type = networkInfo.getType();
        int subtype = networkInfo.getSubtype();
        String extraInfo = networkInfo.getExtraInfo();
        if (this.f3339a != -1 && this.f3340b != -1 && (bool = this.f3341c) != null) {
            if (bool.booleanValue() == isConnected && this.f3339a == type && this.f3340b == subtype) {
                i.c().c("NetworkConnReceiver", " Old contivity broadcast!");
                return 2;
            }
        } else {
            i.c().c("NetworkConnReceiver", " New contivity broadcast!");
        }
        this.f3341c = Boolean.valueOf(isConnected);
        this.f3339a = type;
        this.f3340b = subtype;
        i.c().c("NetworkConnReceiver", " type=[" + type + "] subType=[" + subtype + "]  available=[" + isAvailable + "] connected=[" + isConnected + "] detailedState=[" + networkInfo.getDetailedState() + "] extraInfo=[" + extraInfo + "]");
        b c2 = i.c();
        StringBuilder sb = new StringBuilder();
        sb.append(" activeNetworkInfo hashcode=");
        sb.append(networkInfo.hashCode());
        sb.append("  activeNetworkInfo = [");
        sb.append(networkInfo.toString());
        sb.append("]\n\n\n");
        c2.c("NetworkConnReceiver", sb.toString());
        return !this.f3341c.booleanValue() ? 0 : 1;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            i.c().e("monitor", "onReceive at: " + getClass().getName() + ", Intent: " + intent);
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                int a2 = a(context);
                if (a2 == 0) {
                    i.c().c("NetworkConnReceiver", "NetworkConnectivityReceiver#onReceive network is not available");
                    onReceivee(context, intent);
                } else if (a2 == 1) {
                    i.c().c("NetworkConnReceiver", "NetworkConnectivityReceiver#onReceive network is changed");
                    onReceivee(context, intent);
                }
            }
        } catch (Throwable th) {
            i.c().a("NetworkConnReceiver", th.toString());
        }
    }

    protected abstract void onReceivee(Context context, Intent intent);

    public void register() {
        try {
            this.f3342d.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e2) {
            i.c().b("NetworkConnReceiver", e2.toString());
        }
    }

    public void unregister() {
        try {
            this.f3342d.unregisterReceiver(this);
        } catch (Exception e2) {
            i.c().b("NetworkConnReceiver", e2.toString());
        }
    }
}
