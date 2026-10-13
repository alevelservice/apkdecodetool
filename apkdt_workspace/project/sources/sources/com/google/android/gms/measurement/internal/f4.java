package com.google.android.gms.measurement.internal;

import java.lang.Thread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final String f12906a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ d4 f12907b;

    public f4(d4 d4Var, String str) {
        this.f12907b = d4Var;
        com.google.android.gms.common.internal.m.a(str);
        this.f12906a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f12907b.zzab().q().a(this.f12906a, th);
    }
}
