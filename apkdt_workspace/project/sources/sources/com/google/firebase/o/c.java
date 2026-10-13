package com.google.firebase.o;

import java.util.concurrent.ThreadFactory;

/* compiled from: DefaultHeartBeatInfo.java */
/* loaded from: classes.dex */
final /* synthetic */ class c implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private static final c f15282e = new c();

    private c() {
    }

    public static ThreadFactory a() {
        return f15282e;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return d.a(runnable);
    }
}
