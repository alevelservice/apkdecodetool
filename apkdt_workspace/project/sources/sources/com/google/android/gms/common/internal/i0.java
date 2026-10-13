package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.internal.h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class i0 implements ServiceConnection {

    /* renamed from: e, reason: collision with root package name */
    private final Map<ServiceConnection, ServiceConnection> f5309e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private int f5310f = 2;

    /* renamed from: g, reason: collision with root package name */
    private boolean f5311g;

    /* renamed from: h, reason: collision with root package name */
    private IBinder f5312h;

    /* renamed from: i, reason: collision with root package name */
    private final h.a f5313i;

    /* renamed from: j, reason: collision with root package name */
    private ComponentName f5314j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ g0 f5315k;

    public i0(g0 g0Var, h.a aVar) {
        this.f5315k = g0Var;
        this.f5313i = aVar;
    }

    public final void a(String str) {
        com.google.android.gms.common.stats.a aVar;
        Context context;
        Context context2;
        com.google.android.gms.common.stats.a aVar2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j2;
        this.f5310f = 3;
        aVar = this.f5315k.f5298j;
        context = this.f5315k.f5296h;
        h.a aVar3 = this.f5313i;
        context2 = this.f5315k.f5296h;
        this.f5311g = aVar.a(context, str, aVar3.a(context2), this, this.f5313i.c());
        if (!this.f5311g) {
            this.f5310f = 2;
            try {
                aVar2 = this.f5315k.f5298j;
                context3 = this.f5315k.f5296h;
                aVar2.a(context3, this);
                return;
            } catch (IllegalArgumentException unused) {
                return;
            }
        }
        handler = this.f5315k.f5297i;
        Message obtainMessage = handler.obtainMessage(1, this.f5313i);
        handler2 = this.f5315k.f5297i;
        j2 = this.f5315k.f5300l;
        handler2.sendMessageDelayed(obtainMessage, j2);
    }

    public final void b(String str) {
        Handler handler;
        com.google.android.gms.common.stats.a aVar;
        Context context;
        handler = this.f5315k.f5297i;
        handler.removeMessages(1, this.f5313i);
        aVar = this.f5315k.f5298j;
        context = this.f5315k.f5296h;
        aVar.a(context, this);
        this.f5311g = false;
        this.f5310f = 2;
    }

    public final int c() {
        return this.f5310f;
    }

    public final boolean d() {
        return this.f5311g;
    }

    public final boolean e() {
        return this.f5309e.isEmpty();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f5315k.f5295g;
        synchronized (hashMap) {
            handler = this.f5315k.f5297i;
            handler.removeMessages(1, this.f5313i);
            this.f5312h = iBinder;
            this.f5314j = componentName;
            Iterator<ServiceConnection> it = this.f5309e.values().iterator();
            while (it.hasNext()) {
                it.next().onServiceConnected(componentName, iBinder);
            }
            this.f5310f = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f5315k.f5295g;
        synchronized (hashMap) {
            handler = this.f5315k.f5297i;
            handler.removeMessages(1, this.f5313i);
            this.f5312h = null;
            this.f5314j = componentName;
            Iterator<ServiceConnection> it = this.f5309e.values().iterator();
            while (it.hasNext()) {
                it.next().onServiceDisconnected(componentName);
            }
            this.f5310f = 2;
        }
    }

    public final ComponentName b() {
        return this.f5314j;
    }

    public final void a(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        Context context;
        com.google.android.gms.common.stats.a unused;
        Context unused2;
        unused = this.f5315k.f5298j;
        unused2 = this.f5315k.f5296h;
        h.a aVar = this.f5313i;
        context = this.f5315k.f5296h;
        aVar.a(context);
        this.f5309e.put(serviceConnection, serviceConnection2);
    }

    public final void a(ServiceConnection serviceConnection, String str) {
        com.google.android.gms.common.stats.a unused;
        Context unused2;
        unused = this.f5315k.f5298j;
        unused2 = this.f5315k.f5296h;
        this.f5309e.remove(serviceConnection);
    }

    public final boolean a(ServiceConnection serviceConnection) {
        return this.f5309e.containsKey(serviceConnection);
    }

    public final IBinder a() {
        return this.f5312h;
    }
}
