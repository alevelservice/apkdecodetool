package com.mapbox.android.core.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import androidx.annotation.UiThread;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class ConnectivityReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private Context f15504a;

    /* renamed from: b, reason: collision with root package name */
    private CopyOnWriteArrayList<a> f15505b = new CopyOnWriteArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    private Boolean f15506c = null;

    /* renamed from: d, reason: collision with root package name */
    private int f15507d;

    public ConnectivityReceiver(Context context) {
        this.f15504a = context;
    }

    private static boolean a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            return connectivityManager.getActiveNetworkInfo().isConnectedOrConnecting();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isConnected(Context context) {
        return a(context);
    }

    public void addConnectivityListener(a aVar) {
        if (this.f15505b.contains(aVar)) {
            return;
        }
        this.f15505b.add(aVar);
    }

    public Boolean getConnectedFlag() {
        return this.f15506c;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean a2 = a();
        Iterator<a> it = this.f15505b.iterator();
        while (it.hasNext()) {
            it.next().a(a2);
        }
    }

    public boolean removeConnectivityListener(a aVar) {
        return this.f15505b.remove(aVar);
    }

    @UiThread
    public void removeConnectivityUpdates() {
        this.f15507d--;
        if (this.f15507d == 0) {
            this.f15504a.unregisterReceiver(this);
        }
    }

    @UiThread
    public void requestConnectivityUpdates() {
        if (this.f15507d == 0) {
            this.f15504a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        this.f15507d++;
    }

    public void setConnectedFlag(Boolean bool) {
        this.f15506c = bool;
    }

    public boolean isConnected() {
        return a();
    }

    private boolean a() {
        Boolean bool = this.f15506c;
        if (bool == null) {
            return a(this.f15504a);
        }
        return bool.booleanValue();
    }
}
