package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class op1 implements Handler.Callback, Choreographer.FrameCallback {

    /* renamed from: j, reason: collision with root package name */
    private static final op1 f8574j = new op1();

    /* renamed from: e, reason: collision with root package name */
    public volatile long f8575e;

    /* renamed from: f, reason: collision with root package name */
    private final Handler f8576f;

    /* renamed from: g, reason: collision with root package name */
    private final HandlerThread f8577g = new HandlerThread("ChoreographerOwner:Handler");

    /* renamed from: h, reason: collision with root package name */
    private Choreographer f8578h;

    /* renamed from: i, reason: collision with root package name */
    private int f8579i;

    private op1() {
        this.f8577g.start();
        this.f8576f = new Handler(this.f8577g.getLooper(), this);
        this.f8576f.sendEmptyMessage(0);
    }

    public static op1 c() {
        return f8574j;
    }

    public final void a() {
        this.f8576f.sendEmptyMessage(1);
    }

    public final void b() {
        this.f8576f.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        this.f8575e = j2;
        this.f8578h.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            this.f8578h = Choreographer.getInstance();
            return true;
        }
        if (i2 == 1) {
            this.f8579i++;
            if (this.f8579i == 1) {
                this.f8578h.postFrameCallback(this);
            }
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        this.f8579i--;
        if (this.f8579i == 0) {
            this.f8578h.removeFrameCallback(this);
            this.f8575e = 0L;
        }
        return true;
    }
}
