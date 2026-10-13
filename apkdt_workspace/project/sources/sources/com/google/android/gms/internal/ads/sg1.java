package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class sg1 implements Callable {

    /* renamed from: e, reason: collision with root package name */
    protected final cf1 f9345e;

    /* renamed from: f, reason: collision with root package name */
    private final String f9346f;

    /* renamed from: g, reason: collision with root package name */
    private final String f9347g;

    /* renamed from: h, reason: collision with root package name */
    protected final ev.b f9348h;

    /* renamed from: i, reason: collision with root package name */
    protected Method f9349i;

    /* renamed from: j, reason: collision with root package name */
    private final int f9350j;

    /* renamed from: k, reason: collision with root package name */
    private final int f9351k;

    public sg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        getClass().getSimpleName();
        this.f9345e = cf1Var;
        this.f9346f = str;
        this.f9347g = str2;
        this.f9348h = bVar;
        this.f9350j = i2;
        this.f9351k = i3;
    }

    protected abstract void a();

    @Override // java.util.concurrent.Callable
    /* renamed from: b */
    public Void call() {
        long nanoTime;
        try {
            nanoTime = System.nanoTime();
            this.f9349i = this.f9345e.a(this.f9346f, this.f9347g);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        if (this.f9349i == null) {
            return null;
        }
        a();
        ax0 i2 = this.f9345e.i();
        if (i2 != null && this.f9350j != Integer.MIN_VALUE) {
            i2.a(this.f9351k, this.f9350j, (System.nanoTime() - nanoTime) / 1000);
        }
        return null;
    }
}
