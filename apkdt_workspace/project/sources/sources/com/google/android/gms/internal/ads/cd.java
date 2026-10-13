package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cd {

    /* renamed from: d, reason: collision with root package name */
    private boolean f5981d;

    /* renamed from: e, reason: collision with root package name */
    private Context f5982e;

    /* renamed from: c, reason: collision with root package name */
    private boolean f5980c = false;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<BroadcastReceiver, IntentFilter> f5979b = new WeakHashMap();

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final BroadcastReceiver f5978a = new fd(this);

    public final synchronized void a(Context context) {
        if (this.f5980c) {
            return;
        }
        this.f5982e = context.getApplicationContext();
        if (this.f5982e == null) {
            this.f5982e = context;
        }
        aw1.a(this.f5982e);
        this.f5981d = ((Boolean) mu1.e().a(aw1.U1)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f5982e.registerReceiver(this.f5978a, intentFilter);
        this.f5980c = true;
    }

    public final synchronized void a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.f5981d) {
            this.f5979b.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final synchronized void a(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.f5981d) {
            this.f5979b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void a(Context context, Intent intent) {
        for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f5979b.entrySet()) {
            if (entry.getValue().hasAction(intent.getAction())) {
                entry.getKey().onReceive(context, intent);
            }
        }
    }
}
