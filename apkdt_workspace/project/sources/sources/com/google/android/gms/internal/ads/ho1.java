package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ho1 {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f7137a;

    /* renamed from: b, reason: collision with root package name */
    private jo1<? extends io1> f7138b;

    /* renamed from: c, reason: collision with root package name */
    private IOException f7139c;

    public ho1(String str) {
        this.f7137a = cp1.a(str);
    }

    public final <T extends io1> long a(T t, go1<T> go1Var, int i2) {
        Looper myLooper = Looper.myLooper();
        no1.b(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new jo1(this, myLooper, t, go1Var, i2, elapsedRealtime).a(0L);
        return elapsedRealtime;
    }

    public final void b() {
        this.f7138b.a(false);
    }

    public final boolean a() {
        return this.f7138b != null;
    }

    public final void a(Runnable runnable) {
        jo1<? extends io1> jo1Var = this.f7138b;
        if (jo1Var != null) {
            jo1Var.a(true);
        }
        this.f7137a.execute(runnable);
        this.f7137a.shutdown();
    }

    public final void a(int i2) {
        IOException iOException = this.f7139c;
        if (iOException == null) {
            jo1<? extends io1> jo1Var = this.f7138b;
            if (jo1Var != null) {
                jo1Var.a(jo1Var.f7539g);
                return;
            }
            return;
        }
        throw iOException;
    }
}
