package com.google.firebase.crashlytics.d.h;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final /* synthetic */ class k0 implements e.i.b.b.d.a {

    /* renamed from: a, reason: collision with root package name */
    private final CountDownLatch f14520a;

    private k0(CountDownLatch countDownLatch) {
        this.f14520a = countDownLatch;
    }

    public static e.i.b.b.d.a a(CountDownLatch countDownLatch) {
        return new k0(countDownLatch);
    }

    @Override // e.i.b.b.d.a
    public Object a(e.i.b.b.d.h hVar) {
        return l0.a(this.f14520a, hVar);
    }
}
