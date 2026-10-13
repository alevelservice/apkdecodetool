package com.google.firebase.iid;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final Executor f14991a = g.f14990e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a() {
        return f14991a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.v.a("firebase-iid-executor"));
    }
}
