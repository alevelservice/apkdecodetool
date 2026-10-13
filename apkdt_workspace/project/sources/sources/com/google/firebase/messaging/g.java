package com.google.firebase.messaging;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
class g {
    private static Executor a(String str) {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.v.a("Firebase-Messaging-Trigger-Topics-Io"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService b() {
        e.i.b.b.b.b.d.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.v.a("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService c() {
        return Executors.newSingleThreadExecutor(new com.google.android.gms.common.util.v.a("Firebase-Messaging-Network-Io"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService d() {
        return new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.v.a("Firebase-Messaging-Topics-Io"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor e() {
        return a("Firebase-Messaging-Trigger-Topics-Io");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService a() {
        return new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.v.a("Firebase-Messaging-Init"));
    }
}
