package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h4<V> extends FutureTask<V> implements Comparable<h4> {

    /* renamed from: e, reason: collision with root package name */
    private final long f12966e;

    /* renamed from: f, reason: collision with root package name */
    final boolean f12967f;

    /* renamed from: g, reason: collision with root package name */
    private final String f12968g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ d4 f12969h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h4(d4 d4Var, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f12969h = d4Var;
        com.google.android.gms.common.internal.m.a(str);
        atomicLong = d4.f12826l;
        this.f12966e = atomicLong.getAndIncrement();
        this.f12968g = str;
        this.f12967f = z;
        if (this.f12966e == Long.MAX_VALUE) {
            d4Var.zzab().q().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull h4 h4Var) {
        h4 h4Var2 = h4Var;
        boolean z = this.f12967f;
        if (z != h4Var2.f12967f) {
            return z ? -1 : 1;
        }
        long j2 = this.f12966e;
        long j3 = h4Var2.f12966e;
        if (j2 < j3) {
            return -1;
        }
        if (j2 > j3) {
            return 1;
        }
        this.f12969h.zzab().r().a("Two tasks share the same index. index", Long.valueOf(this.f12966e));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f12969h.zzab().q().a(this.f12968g, th);
        super.setException(th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h4(d4 d4Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f12969h = d4Var;
        com.google.android.gms.common.internal.m.a(str);
        atomicLong = d4.f12826l;
        this.f12966e = atomicLong.getAndIncrement();
        this.f12968g = str;
        this.f12967f = false;
        if (this.f12966e == Long.MAX_VALUE) {
            d4Var.zzab().q().a("Tasks index overflow");
        }
    }
}
