package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.util.List;
import java.util.Map;

@WorkerThread
/* loaded from: classes.dex */
final class k3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final l3 f13033e;

    /* renamed from: f, reason: collision with root package name */
    private final int f13034f;

    /* renamed from: g, reason: collision with root package name */
    private final Throwable f13035g;

    /* renamed from: h, reason: collision with root package name */
    private final byte[] f13036h;

    /* renamed from: i, reason: collision with root package name */
    private final String f13037i;

    /* renamed from: j, reason: collision with root package name */
    private final Map<String, List<String>> f13038j;

    private k3(String str, l3 l3Var, int i2, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        com.google.android.gms.common.internal.m.a(l3Var);
        this.f13033e = l3Var;
        this.f13034f = i2;
        this.f13035g = th;
        this.f13036h = bArr;
        this.f13037i = str;
        this.f13038j = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13033e.a(this.f13037i, this.f13034f, this.f13035g, this.f13036h, this.f13038j);
    }
}
