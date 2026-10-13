package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class pz0<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private static final Runnable f8821e = new rz0();

    /* renamed from: f, reason: collision with root package name */
    private static final Runnable f8822f = new rz0();

    /* renamed from: g, reason: collision with root package name */
    private static final Runnable f8823g = new rz0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void interruptTask() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f8822f)) {
            try {
                ((Thread) runnable).interrupt();
            } finally {
                if (getAndSet(f8821e) == f8823g) {
                    LockSupport.unpark((Thread) runnable);
                }
            }
        }
    }

    abstract boolean isDone();

    @Override // java.lang.Runnable
    public final void run() {
        T zzapb;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !isDone();
            if (z) {
                try {
                    zzapb = zzapb();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, f8821e)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i2 = 0;
                        while (true) {
                            if (runnable != f8822f && runnable != f8823g) {
                                break;
                            }
                            i2++;
                            if (i2 > 1000) {
                                Runnable runnable2 = f8823g;
                                if (runnable == runnable2 || compareAndSet(f8822f, runnable2)) {
                                    boolean z3 = Thread.interrupted() || z2;
                                    LockSupport.park(this);
                                    z2 = z3;
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable = get();
                        }
                        if (z2) {
                            currentThread.interrupt();
                        }
                    }
                    if (z) {
                        zzb(null, th);
                        return;
                    }
                    return;
                }
            } else {
                zzapb = null;
            }
            if (!compareAndSet(currentThread, f8821e)) {
                Runnable runnable3 = get();
                boolean z4 = false;
                int i3 = 0;
                while (true) {
                    if (runnable3 != f8822f && runnable3 != f8823g) {
                        break;
                    }
                    i3++;
                    if (i3 > 1000) {
                        Runnable runnable4 = f8823g;
                        if (runnable3 == runnable4 || compareAndSet(f8822f, runnable4)) {
                            boolean z5 = Thread.interrupted() || z4;
                            LockSupport.park(this);
                            z4 = z5;
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable3 = get();
                }
                if (z4) {
                    currentThread.interrupt();
                }
            }
            if (z) {
                zzb(zzapb, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f8821e) {
            str = "running=[DONE]";
        } else if (runnable == f8822f) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            str = sb.toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String zzapc = zzapc();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(zzapc).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(zzapc);
        return sb2.toString();
    }

    abstract T zzapb();

    abstract String zzapc();

    abstract void zzb(@NullableDecl T t, @NullableDecl Throwable th);
}
