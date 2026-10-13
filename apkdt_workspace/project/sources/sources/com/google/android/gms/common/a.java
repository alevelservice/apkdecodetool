package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.m;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class a implements ServiceConnection {

    /* renamed from: e, reason: collision with root package name */
    private boolean f4983e = false;

    /* renamed from: f, reason: collision with root package name */
    private final BlockingQueue<IBinder> f4984f = new LinkedBlockingQueue();

    @KeepForSdk
    public IBinder a(long j2, TimeUnit timeUnit) {
        m.c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f4983e) {
            this.f4983e = true;
            IBinder poll = this.f4984f.poll(j2, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f4984f.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
