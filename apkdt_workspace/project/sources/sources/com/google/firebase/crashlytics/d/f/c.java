package com.google.firebase.crashlytics.d.f;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: BlockingAnalyticsEventLogger.java */
/* loaded from: classes.dex */
public class c implements b, a {

    /* renamed from: a, reason: collision with root package name */
    private final e f14389a;

    /* renamed from: b, reason: collision with root package name */
    private final int f14390b;

    /* renamed from: c, reason: collision with root package name */
    private final TimeUnit f14391c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f14392d = new Object();

    /* renamed from: e, reason: collision with root package name */
    private CountDownLatch f14393e;

    public c(@NonNull e eVar, int i2, TimeUnit timeUnit) {
        this.f14389a = eVar;
        this.f14390b = i2;
        this.f14391c = timeUnit;
    }

    @Override // com.google.firebase.crashlytics.d.f.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.f14392d) {
            com.google.firebase.crashlytics.d.b.a().a("Logging Crashlytics event to Firebase");
            this.f14393e = new CountDownLatch(1);
            this.f14389a.a(str, bundle);
            com.google.firebase.crashlytics.d.b.a().a("Awaiting app exception callback from FA...");
            try {
                if (this.f14393e.await(this.f14390b, this.f14391c)) {
                    com.google.firebase.crashlytics.d.b.a().a("App exception callback received from FA listener.");
                } else {
                    com.google.firebase.crashlytics.d.b.a().a("Timeout exceeded while awaiting app exception callback from FA listener.");
                }
            } catch (InterruptedException unused) {
                com.google.firebase.crashlytics.d.b.a().a("Interrupted while awaiting app exception callback from FA listener.");
            }
            this.f14393e = null;
        }
    }
}
