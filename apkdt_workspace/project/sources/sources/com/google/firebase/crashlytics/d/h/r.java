package com.google.firebase.crashlytics.d.h;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: CrashlyticsUncaughtExceptionHandler.java */
/* loaded from: classes.dex */
class r implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final a f14553a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.o.e f14554b;

    /* renamed from: c, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f14555c;

    /* renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f14556d = new AtomicBoolean(false);

    /* compiled from: CrashlyticsUncaughtExceptionHandler.java */
    /* loaded from: classes.dex */
    interface a {
        void a(com.google.firebase.crashlytics.d.o.e eVar, Thread thread, Throwable th);
    }

    public r(a aVar, com.google.firebase.crashlytics.d.o.e eVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f14553a = aVar;
        this.f14554b = eVar;
        this.f14555c = uncaughtExceptionHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f14556d.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Thread$UncaughtExceptionHandler] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Thread$UncaughtExceptionHandler] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.firebase.crashlytics.d.b] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Thread] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Thread] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.concurrent.atomic.AtomicBoolean] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.f14556d.set(true);
        ?? r1 = "Crashlytics completed exception processing. Invoking default exception handler.";
        try {
            try {
                if (thread == 0) {
                    com.google.firebase.crashlytics.d.b.a().b("Could not handle uncaught exception; null thread");
                } else if (th == null) {
                    com.google.firebase.crashlytics.d.b.a().b("Could not handle uncaught exception; null throwable");
                } else {
                    this.f14553a.a(this.f14554b, thread, th);
                }
            } catch (Exception e2) {
                com.google.firebase.crashlytics.d.b.a().b("An error occurred in the uncaught exception handler", e2);
            }
            com.google.firebase.crashlytics.d.b.a().a("Crashlytics completed exception processing. Invoking default exception handler.");
            r1 = this.f14555c;
            r1.uncaughtException(thread, th);
            thread = this.f14556d;
            thread.set(false);
        } catch (Throwable th2) {
            com.google.firebase.crashlytics.d.b.a().a(r1);
            this.f14555c.uncaughtException(thread, th);
            this.f14556d.set(false);
            throw th2;
        }
    }
}
