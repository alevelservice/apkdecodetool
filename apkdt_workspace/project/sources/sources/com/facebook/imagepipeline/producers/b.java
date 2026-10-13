package com.facebook.imagepipeline.producers;

import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: BaseConsumer.java */
@ThreadSafe
/* loaded from: classes.dex */
public abstract class b<T> implements Consumer<T> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f3900a = false;

    public static int a(boolean z) {
        return z ? 1 : 0;
    }

    public static boolean a(int i2) {
        return (i2 & 1) == 1;
    }

    public static boolean a(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    public static boolean b(int i2) {
        return !a(i2);
    }

    public static boolean b(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    public static int c(int i2, int i3) {
        return i2 & (i3 ^ (-1));
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void a(@Nullable T t, int i2) {
        if (this.f3900a) {
            return;
        }
        this.f3900a = a(i2);
        try {
            b((b<T>) t, i2);
        } catch (Exception e2) {
            a(e2);
        }
    }

    protected abstract void b();

    protected abstract void b(float f2);

    protected abstract void b(T t, int i2);

    protected abstract void b(Throwable th);

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void a(Throwable th) {
        if (this.f3900a) {
            return;
        }
        this.f3900a = true;
        try {
            b(th);
        } catch (Exception e2) {
            a(e2);
        }
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void a() {
        if (this.f3900a) {
            return;
        }
        this.f3900a = true;
        try {
            b();
        } catch (Exception e2) {
            a(e2);
        }
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void a(float f2) {
        if (this.f3900a) {
            return;
        }
        try {
            b(f2);
        } catch (Exception e2) {
            a(e2);
        }
    }

    protected void a(Exception exc) {
        e.f.c.d.a.c(getClass(), "unhandled exception", exc);
    }
}
