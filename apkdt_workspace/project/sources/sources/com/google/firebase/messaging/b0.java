package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("TopicsStore.class")
    private static WeakReference<b0> f15214d;

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f15215a;

    /* renamed from: b, reason: collision with root package name */
    private z f15216b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f15217c;

    private b0(SharedPreferences sharedPreferences, Executor executor) {
        this.f15217c = executor;
        this.f15215a = sharedPreferences;
    }

    @WorkerThread
    private synchronized void b() {
        this.f15216b = z.a(this.f15215a, "topic_operation_queue", ",", this.f15217c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(a0 a0Var) {
        return this.f15216b.a(a0Var.c());
    }

    @WorkerThread
    public static synchronized b0 a(Context context, Executor executor) {
        synchronized (b0.class) {
            b0 b0Var = f15214d != null ? f15214d.get() : null;
            if (b0Var != null) {
                return b0Var;
            }
            b0 b0Var2 = new b0(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
            b0Var2.b();
            f15214d = new WeakReference<>(b0Var2);
            return b0Var2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean b(a0 a0Var) {
        return this.f15216b.a((Object) a0Var.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public synchronized a0 a() {
        return a0.a(this.f15216b.b());
    }
}
