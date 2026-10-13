package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.fy0;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class mz0<V> implements qz0<V> {

    /* renamed from: e, reason: collision with root package name */
    private static final Logger f8256e = Logger.getLogger(mz0.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a<V> extends mz0<V> {

        /* renamed from: g, reason: collision with root package name */
        static final a<Object> f8257g = new a<>(null);

        /* renamed from: f, reason: collision with root package name */
        @NullableDecl
        private final V f8258f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(@NullableDecl V v) {
            this.f8258f = v;
        }

        @Override // com.google.android.gms.internal.ads.mz0, java.util.concurrent.Future
        public final V get() {
            return this.f8258f;
        }

        public final String toString() {
            String obj = super.toString();
            String valueOf = String.valueOf(this.f8258f);
            StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 27 + String.valueOf(valueOf).length());
            sb.append(obj);
            sb.append("[status=SUCCESS, result=[");
            sb.append(valueOf);
            sb.append("]]");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class b<V> extends fy0.k<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Throwable th) {
            a(th);
        }
    }

    mz0() {
    }

    @Override // com.google.android.gms.internal.ads.qz0
    public void a(Runnable runnable, Executor executor) {
        uw0.a(runnable, "Runnable was null.");
        uw0.a(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = f8256e;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb.toString(), (Throwable) e2);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public abstract V get();

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) {
        uw0.a(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }
}
