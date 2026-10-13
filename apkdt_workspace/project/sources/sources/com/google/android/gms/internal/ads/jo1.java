package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.io1;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
public final class jo1<T extends io1> extends Handler implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final T f7537e;

    /* renamed from: f, reason: collision with root package name */
    private final go1<T> f7538f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7539g;

    /* renamed from: h, reason: collision with root package name */
    private final long f7540h;

    /* renamed from: i, reason: collision with root package name */
    private IOException f7541i;

    /* renamed from: j, reason: collision with root package name */
    private int f7542j;

    /* renamed from: k, reason: collision with root package name */
    private volatile Thread f7543k;

    /* renamed from: l, reason: collision with root package name */
    private volatile boolean f7544l;
    private final /* synthetic */ ho1 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jo1(ho1 ho1Var, Looper looper, T t, go1<T> go1Var, int i2, long j2) {
        super(looper);
        this.m = ho1Var;
        this.f7537e = t;
        this.f7538f = go1Var;
        this.f7539g = i2;
        this.f7540h = j2;
    }

    private final void b() {
        this.m.f7138b = null;
    }

    public final void a(int i2) {
        IOException iOException = this.f7541i;
        if (iOException != null && this.f7542j > i2) {
            throw iOException;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f7544l) {
            return;
        }
        int i2 = message.what;
        if (i2 == 0) {
            a();
            return;
        }
        if (i2 != 4) {
            b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = elapsedRealtime - this.f7540h;
            if (this.f7537e.c()) {
                this.f7538f.a((go1<T>) this.f7537e, elapsedRealtime, j2, false);
                return;
            }
            int i3 = message.what;
            if (i3 == 1) {
                this.f7538f.a((go1<T>) this.f7537e, elapsedRealtime, j2, false);
                return;
            }
            if (i3 == 2) {
                this.f7538f.a(this.f7537e, elapsedRealtime, j2);
                return;
            }
            if (i3 != 3) {
                return;
            }
            this.f7541i = (IOException) message.obj;
            int a2 = this.f7538f.a((go1<T>) this.f7537e, elapsedRealtime, j2, this.f7541i);
            if (a2 == 3) {
                this.m.f7139c = this.f7541i;
                return;
            } else {
                if (a2 != 2) {
                    this.f7542j = a2 == 1 ? 1 : this.f7542j + 1;
                    a(Math.min((this.f7542j - 1) * 1000, 5000));
                    return;
                }
                return;
            }
        }
        throw ((Error) message.obj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7543k = Thread.currentThread();
            if (!this.f7537e.c()) {
                String valueOf = String.valueOf(this.f7537e.getClass().getSimpleName());
                zo1.a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f7537e.a();
                    zo1.a();
                } catch (Throwable th) {
                    zo1.a();
                    throw th;
                }
            }
            if (this.f7544l) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e2) {
            if (this.f7544l) {
                return;
            }
            obtainMessage(3, e2).sendToTarget();
        } catch (OutOfMemoryError e3) {
            if (this.f7544l) {
                return;
            }
            obtainMessage(3, new lo1(e3)).sendToTarget();
        } catch (Error e4) {
            if (!this.f7544l) {
                obtainMessage(4, e4).sendToTarget();
            }
            throw e4;
        } catch (InterruptedException unused) {
            no1.b(this.f7537e.c());
            if (this.f7544l) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e5) {
            if (this.f7544l) {
                return;
            }
            obtainMessage(3, new lo1(e5)).sendToTarget();
        }
    }

    public final void a(long j2) {
        jo1 jo1Var;
        jo1Var = this.m.f7138b;
        no1.b(jo1Var == null);
        this.m.f7138b = this;
        if (j2 > 0) {
            sendEmptyMessageDelayed(0, j2);
        } else {
            a();
        }
    }

    public final void a(boolean z) {
        this.f7544l = z;
        this.f7541i = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.f7537e.b();
            if (this.f7543k != null) {
                this.f7543k.interrupt();
            }
        }
        if (z) {
            b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f7538f.a((go1<T>) this.f7537e, elapsedRealtime, elapsedRealtime - this.f7540h, true);
        }
    }

    private final void a() {
        ExecutorService executorService;
        jo1 jo1Var;
        this.f7541i = null;
        executorService = this.m.f7137a;
        jo1Var = this.m.f7138b;
        executorService.execute(jo1Var);
    }
}
