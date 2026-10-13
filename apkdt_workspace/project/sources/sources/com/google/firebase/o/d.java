package com.google.firebase.o;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.components.d;
import com.google.firebase.components.q;
import com.google.firebase.components.w;
import com.google.firebase.o.f;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DefaultHeartBeatInfo.java */
/* loaded from: classes.dex */
public class d implements f {

    /* renamed from: b, reason: collision with root package name */
    private static final ThreadFactory f15283b = c.a();

    /* renamed from: a, reason: collision with root package name */
    private com.google.firebase.p.b<g> f15284a;

    private d(Context context, Set<e> set) {
        this(new w(a.a(context)), set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f15283b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    @VisibleForTesting
    d(com.google.firebase.p.b<g> bVar, Set<e> set, Executor executor) {
        this.f15284a = bVar;
    }

    @Override // com.google.firebase.o.f
    @NonNull
    public f.a a(@NonNull String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean a2 = this.f15284a.get().a(str, currentTimeMillis);
        boolean a3 = this.f15284a.get().a(currentTimeMillis);
        if (a2 && a3) {
            return f.a.COMBINED;
        }
        if (a3) {
            return f.a.GLOBAL;
        }
        if (a2) {
            return f.a.SDK;
        }
        return f.a.NONE;
    }

    @NonNull
    public static com.google.firebase.components.d<f> a() {
        d.b a2 = com.google.firebase.components.d.a(f.class);
        a2.a(q.c(Context.class));
        a2.a(q.d(e.class));
        a2.a(b.a());
        return a2.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ f a(com.google.firebase.components.e eVar) {
        return new d((Context) eVar.a(Context.class), eVar.d(e.class));
    }
}
