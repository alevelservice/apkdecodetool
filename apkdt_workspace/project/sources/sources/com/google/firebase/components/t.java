package com.google.firebase.components;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventBus.java */
/* loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final Map.Entry f14350e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.n.a f14351f;

    private t(Map.Entry entry, com.google.firebase.n.a aVar) {
        this.f14350e = entry;
        this.f14351f = aVar;
    }

    public static Runnable a(Map.Entry entry, com.google.firebase.n.a aVar) {
        return new t(entry, aVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((com.google.firebase.n.b) this.f14350e.getKey()).a(this.f14351f);
    }
}
