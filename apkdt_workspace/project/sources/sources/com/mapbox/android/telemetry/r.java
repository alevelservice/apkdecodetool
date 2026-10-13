package com.mapbox.android.telemetry;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: EventsQueue.java */
/* loaded from: classes2.dex */
class r {

    /* renamed from: a, reason: collision with root package name */
    private final u f15643a;

    /* renamed from: b, reason: collision with root package name */
    private final l<Event> f15644b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f15645c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventsQueue.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ List f15646e;

        a(List list) {
            this.f15646e = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                r.this.f15643a.a(this.f15646e);
            } catch (Throwable th) {
                th.toString();
            }
        }
    }

    @VisibleForTesting
    r(@NonNull l<Event> lVar, @NonNull u uVar, @NonNull ExecutorService executorService) {
        this.f15644b = lVar;
        this.f15643a = uVar;
        this.f15645c = executorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized r a(@NonNull u uVar, @NonNull ExecutorService executorService) {
        r rVar;
        synchronized (r.class) {
            if (uVar != null && executorService != null) {
                rVar = new r(new l(), uVar, executorService);
            } else {
                throw new IllegalArgumentException("Callback or executor can't be null");
            }
        }
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Event event) {
        boolean a2;
        synchronized (this) {
            if (this.f15644b.b() >= 180) {
                a(this.f15644b.a());
            }
            a2 = this.f15644b.a(event);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Event> a() {
        List<Event> a2;
        synchronized (this) {
            a2 = this.f15644b.a();
        }
        return a2;
    }

    private void a(List<Event> list) {
        try {
            this.f15645c.execute(new a(list));
        } catch (RejectedExecutionException e2) {
            e2.toString();
        }
    }
}
