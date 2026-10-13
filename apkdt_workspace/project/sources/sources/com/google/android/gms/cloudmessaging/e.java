package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: e */
    @Nullable
    @GuardedBy("MessengerIpcClient.class")
    private static e f4931e;

    /* renamed from: a */
    private final Context f4932a;

    /* renamed from: b */
    private final ScheduledExecutorService f4933b;

    /* renamed from: c */
    @GuardedBy("this")
    private f f4934c = new f(this);

    /* renamed from: d */
    @GuardedBy("this")
    private int f4935d = 1;

    @VisibleForTesting
    private e(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f4933b = scheduledExecutorService;
        this.f4932a = context.getApplicationContext();
    }

    public static synchronized e a(Context context) {
        e eVar;
        synchronized (e.class) {
            if (f4931e == null) {
                f4931e = new e(context, e.i.b.b.b.a.a.a().a(1, new com.google.android.gms.common.util.v.a("MessengerIpcClient"), e.i.b.b.b.a.f.f17814b));
            }
            eVar = f4931e;
        }
        return eVar;
    }

    public final e.i.b.b.d.h<Bundle> b(int i2, Bundle bundle) {
        return a(new s(a(), 1, bundle));
    }

    public static /* synthetic */ ScheduledExecutorService b(e eVar) {
        return eVar.f4933b;
    }

    public final e.i.b.b.d.h<Void> a(int i2, Bundle bundle) {
        return a(new n(a(), 2, bundle));
    }

    private final synchronized <T> e.i.b.b.d.h<T> a(q<T> qVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(qVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
            sb.append("Queueing ");
            sb.append(valueOf);
            sb.toString();
        }
        if (!this.f4934c.a((q<?>) qVar)) {
            this.f4934c = new f(this);
            this.f4934c.a((q<?>) qVar);
        }
        return qVar.f4953b.a();
    }

    private final synchronized int a() {
        int i2;
        i2 = this.f4935d;
        this.f4935d = i2 + 1;
        return i2;
    }

    public static /* synthetic */ Context a(e eVar) {
        return eVar.f4932a;
    }
}
