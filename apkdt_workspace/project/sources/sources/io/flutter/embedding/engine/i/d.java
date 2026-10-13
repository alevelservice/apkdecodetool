package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;
import g.a.c.a.p;

/* compiled from: LifecycleChannel.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.b<String> f19135a;

    public d(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19135a = new g.a.c.a.b<>(aVar, "flutter/lifecycle", p.f18240b);
    }

    public void a() {
        g.a.b.c("LifecycleChannel", "Sending AppLifecycleState.detached message.");
        this.f19135a.a((g.a.c.a.b<String>) "AppLifecycleState.detached");
    }

    public void b() {
        g.a.b.c("LifecycleChannel", "Sending AppLifecycleState.inactive message.");
        this.f19135a.a((g.a.c.a.b<String>) "AppLifecycleState.inactive");
    }

    public void c() {
        g.a.b.c("LifecycleChannel", "Sending AppLifecycleState.paused message.");
        this.f19135a.a((g.a.c.a.b<String>) "AppLifecycleState.paused");
    }

    public void d() {
        g.a.b.c("LifecycleChannel", "Sending AppLifecycleState.resumed message.");
        this.f19135a.a((g.a.c.a.b<String>) "AppLifecycleState.resumed");
    }
}
