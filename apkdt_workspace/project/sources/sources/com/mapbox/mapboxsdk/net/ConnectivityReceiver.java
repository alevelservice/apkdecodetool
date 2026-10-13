package com.mapbox.mapboxsdk.net;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class ConnectivityReceiver extends BroadcastReceiver {

    /* renamed from: e, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static ConnectivityReceiver f16165e;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private List<a> f16166a = new CopyOnWriteArrayList();

    /* renamed from: b, reason: collision with root package name */
    private Context f16167b;

    /* renamed from: c, reason: collision with root package name */
    private int f16168c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private Boolean f16169d;

    private ConnectivityReceiver(@NonNull Context context) {
        this.f16167b = context;
    }

    private void a(boolean z) {
        Logger.v("Mbgl-ConnectivityReceiver", z ? "connected - true" : "connected - false");
        Iterator<a> it = this.f16166a.iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }

    public static synchronized ConnectivityReceiver instance(@NonNull Context context) {
        ConnectivityReceiver connectivityReceiver;
        synchronized (ConnectivityReceiver.class) {
            if (f16165e == null) {
                f16165e = new ConnectivityReceiver(context.getApplicationContext());
                f16165e.addListener(new NativeConnectivityListener());
            }
            connectivityReceiver = f16165e;
        }
        return connectivityReceiver;
    }

    @UiThread
    public void activate() {
        if (this.f16168c == 0) {
            this.f16167b.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        this.f16168c++;
    }

    public void addListener(@NonNull a aVar) {
        this.f16166a.add(aVar);
    }

    @UiThread
    public void deactivate() {
        this.f16168c--;
        if (this.f16168c == 0) {
            this.f16167b.unregisterReceiver(f16165e);
        }
    }

    public boolean isConnected() {
        Boolean bool = this.f16169d;
        return bool != null ? bool.booleanValue() : a();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull Context context, Intent intent) {
        if (this.f16169d != null) {
            return;
        }
        a(a());
    }

    public void removeListener(@NonNull a aVar) {
        this.f16166a.remove(aVar);
    }

    public void setConnected(Boolean bool) {
        boolean a2;
        this.f16169d = bool;
        if (bool != null) {
            a2 = bool.booleanValue();
        } else {
            a2 = a();
        }
        a(a2);
    }

    private boolean a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f16167b.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
