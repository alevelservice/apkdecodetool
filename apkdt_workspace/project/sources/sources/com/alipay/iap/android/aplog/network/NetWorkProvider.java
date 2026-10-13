package com.alipay.iap.android.aplog.network;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class NetWorkProvider {

    /* renamed from: c, reason: collision with root package name */
    public static NetWorkProvider f3334c = null;

    /* renamed from: d, reason: collision with root package name */
    private static long f3335d = 0;

    /* renamed from: e, reason: collision with root package name */
    private static int f3336e = -1;

    /* renamed from: a, reason: collision with root package name */
    private Context f3337a;

    /* renamed from: b, reason: collision with root package name */
    private LogNetworkConnReceiver f3338b;

    /* loaded from: classes.dex */
    public class LogNetworkConnReceiver extends RigorousNetworkConnReceiver {
        public LogNetworkConnReceiver(Context context) {
            super(context);
        }

        @Override // com.alipay.iap.android.aplog.network.RigorousNetworkConnReceiver
        protected void onReceivee(Context context, Intent intent) {
            NetWorkProvider.this.c(context);
        }
    }

    public NetWorkProvider(Context context) {
        this.f3337a = context;
        a(this.f3337a);
    }

    public static synchronized NetWorkProvider b(Context context) {
        NetWorkProvider netWorkProvider;
        synchronized (NetWorkProvider.class) {
            if (f3334c == null) {
                f3334c = new NetWorkProvider(context);
            }
            netWorkProvider = f3334c;
        }
        return netWorkProvider;
    }

    public static synchronized NetWorkProvider c() {
        NetWorkProvider netWorkProvider;
        synchronized (NetWorkProvider.class) {
            if (f3334c != null) {
                netWorkProvider = f3334c;
            } else {
                throw new IllegalStateException("need createInstance before use");
            }
        }
        return netWorkProvider;
    }

    public void a(Context context) {
        this.f3338b = new LogNetworkConnReceiver(context);
        this.f3338b.register();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(Context context) {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - f3335d > 2000) {
            f3336e = a.a(context);
            f3335d = uptimeMillis;
        }
        return f3336e;
    }

    public String a() {
        int b2 = b();
        return b2 != 1 ? b2 != 2 ? b2 != 3 ? b2 != 4 ? "unknown" : "4g" : "wifi" : "3g" : "2g";
    }

    public int b() {
        int i2 = f3336e;
        if (i2 == -1 || i2 == 0) {
            c(this.f3337a);
        }
        return f3336e;
    }
}
