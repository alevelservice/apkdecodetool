package io.flutter.embedding.android;

import android.util.LongSparseArray;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MotionEventTracker.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    private static f f18983c;

    /* renamed from: a, reason: collision with root package name */
    private final LongSparseArray<MotionEvent> f18984a = new LongSparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    private final PriorityQueue<Long> f18985b = new PriorityQueue<>();

    /* compiled from: MotionEventTracker.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: b, reason: collision with root package name */
        private static final AtomicLong f18986b = new AtomicLong(0);

        /* renamed from: a, reason: collision with root package name */
        private final long f18987a;

        private a(long j2) {
            this.f18987a = j2;
        }

        public static a b() {
            return a(f18986b.incrementAndGet());
        }

        public static a a(long j2) {
            return new a(j2);
        }

        public long a() {
            return this.f18987a;
        }
    }

    private f() {
    }

    public static f a() {
        if (f18983c == null) {
            f18983c = new f();
        }
        return f18983c;
    }

    public a a(MotionEvent motionEvent) {
        a b2 = a.b();
        this.f18984a.put(b2.f18987a, MotionEvent.obtain(motionEvent));
        this.f18985b.add(Long.valueOf(b2.f18987a));
        return b2;
    }

    @Nullable
    public MotionEvent a(a aVar) {
        while (!this.f18985b.isEmpty() && this.f18985b.peek().longValue() < aVar.f18987a) {
            this.f18984a.remove(this.f18985b.poll().longValue());
        }
        if (!this.f18985b.isEmpty() && this.f18985b.peek().longValue() == aVar.f18987a) {
            this.f18985b.poll();
        }
        MotionEvent motionEvent = this.f18984a.get(aVar.f18987a);
        this.f18984a.remove(aVar.f18987a);
        return motionEvent;
    }
}
