package com.google.firebase.crashlytics.d.p;

/* compiled from: TrimmedThrowableData.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f14739a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14740b;

    /* renamed from: c, reason: collision with root package name */
    public final StackTraceElement[] f14741c;

    /* renamed from: d, reason: collision with root package name */
    public final e f14742d;

    public e(Throwable th, d dVar) {
        this.f14739a = th.getLocalizedMessage();
        this.f14740b = th.getClass().getName();
        this.f14741c = dVar.a(th.getStackTrace());
        Throwable cause = th.getCause();
        this.f14742d = cause != null ? new e(cause, dVar) : null;
    }
}
