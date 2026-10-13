package io.flutter.embedding.engine.i;

import androidx.annotation.NonNull;

/* compiled from: NavigationChannel.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g.a.c.a.k f19141a;

    public g(@NonNull io.flutter.embedding.engine.e.a aVar) {
        this.f19141a = new g.a.c.a.k(aVar, "flutter/navigation", g.a.c.a.g.f18222a);
    }

    public void a(@NonNull String str) {
        g.a.b.c("NavigationChannel", "Sending message to push route '" + str + "'");
        this.f19141a.a("pushRoute", str);
    }

    public void b(@NonNull String str) {
        g.a.b.c("NavigationChannel", "Sending message to set initial route to '" + str + "'");
        this.f19141a.a("setInitialRoute", str);
    }

    public void a() {
        g.a.b.c("NavigationChannel", "Sending message to pop route.");
        this.f19141a.a("popRoute", null);
    }
}
