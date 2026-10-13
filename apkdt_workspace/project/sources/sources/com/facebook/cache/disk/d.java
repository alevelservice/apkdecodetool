package com.facebook.cache.disk;

import android.content.Context;
import com.facebook.cache.disk.c;
import com.facebook.common.internal.VisibleForTesting;
import e.f.b.a.a;
import e.f.b.a.c;
import e.f.b.a.j;
import e.f.c.h.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: DiskStorageCache.java */
@ThreadSafe
/* loaded from: classes.dex */
public class d implements h, e.f.c.a.a {
    private static final Class<?> q = d.class;
    private static final long r = TimeUnit.HOURS.toMillis(2);
    private static final long s = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a, reason: collision with root package name */
    private final long f3498a;

    /* renamed from: b, reason: collision with root package name */
    private final long f3499b;

    /* renamed from: c, reason: collision with root package name */
    private final CountDownLatch f3500c;

    /* renamed from: d, reason: collision with root package name */
    private long f3501d;

    /* renamed from: e, reason: collision with root package name */
    private final e.f.b.a.c f3502e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("mLock")
    final Set<String> f3503f;

    /* renamed from: g, reason: collision with root package name */
    private long f3504g;

    /* renamed from: h, reason: collision with root package name */
    private final e.f.c.h.a f3505h;

    /* renamed from: i, reason: collision with root package name */
    private final com.facebook.cache.disk.c f3506i;

    /* renamed from: j, reason: collision with root package name */
    private final g f3507j;

    /* renamed from: k, reason: collision with root package name */
    private final e.f.b.a.a f3508k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f3509l;
    private final b m;
    private final com.facebook.common.time.a n;
    private final Object o = new Object();
    private boolean p;

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (d.this.o) {
                d.this.b();
            }
            d.this.p = true;
            d.this.f3500c.countDown();
        }
    }

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final long f3514a;

        /* renamed from: b, reason: collision with root package name */
        public final long f3515b;

        /* renamed from: c, reason: collision with root package name */
        public final long f3516c;

        public c(long j2, long j3, long j4) {
            this.f3514a = j2;
            this.f3515b = j3;
            this.f3516c = j4;
        }
    }

    public d(com.facebook.cache.disk.c cVar, g gVar, c cVar2, e.f.b.a.c cVar3, e.f.b.a.a aVar, @Nullable e.f.c.a.b bVar, Context context, Executor executor, boolean z) {
        this.f3498a = cVar2.f3515b;
        long j2 = cVar2.f3516c;
        this.f3499b = j2;
        this.f3501d = j2;
        this.f3505h = e.f.c.h.a.b();
        this.f3506i = cVar;
        this.f3507j = gVar;
        this.f3504g = -1L;
        this.f3502e = cVar3;
        long j3 = cVar2.f3514a;
        this.f3508k = aVar;
        this.m = new b();
        this.n = com.facebook.common.time.c.a();
        this.f3509l = z;
        this.f3503f = new HashSet();
        if (bVar != null) {
            bVar.a(this);
        }
        if (this.f3509l) {
            this.f3500c = new CountDownLatch(1);
            executor.execute(new a());
        } else {
            this.f3500c = new CountDownLatch(0);
        }
    }

    @GuardedBy("mLock")
    private void d() {
        if (this.f3505h.a(this.f3506i.a() ? a.EnumC0185a.EXTERNAL : a.EnumC0185a.INTERNAL, this.f3499b - this.m.b())) {
            this.f3501d = this.f3498a;
        } else {
            this.f3501d = this.f3499b;
        }
    }

    @GuardedBy("mLock")
    private boolean c() {
        Set<String> hashSet;
        long j2;
        long now = this.n.now();
        long j3 = r + now;
        if (this.f3509l && this.f3503f.isEmpty()) {
            hashSet = this.f3503f;
        } else {
            hashSet = this.f3509l ? new HashSet<>() : null;
        }
        try {
            long j4 = -1;
            int i2 = 0;
            int i3 = 0;
            long j5 = 0;
            boolean z = false;
            int i4 = 0;
            for (c.a aVar : this.f3506i.c()) {
                i4++;
                j5 += aVar.i();
                if (aVar.j() > j3) {
                    i2++;
                    j2 = j3;
                    int i5 = (int) (i3 + aVar.i());
                    j4 = Math.max(aVar.j() - now, j4);
                    i3 = i5;
                    z = true;
                } else {
                    j2 = j3;
                    if (this.f3509l) {
                        hashSet.add(aVar.getId());
                    }
                }
                j3 = j2;
            }
            if (z) {
                this.f3508k.a(a.EnumC0181a.READ_INVALID_ENTRY, q, "Future timestamp found in " + i2 + " files , with a total size of " + i3 + " bytes, and a maximum time delta of " + j4 + "ms", null);
            }
            long j6 = i4;
            if (this.m.a() != j6 || this.m.b() != j5) {
                if (this.f3509l && this.f3503f != hashSet) {
                    this.f3503f.clear();
                    this.f3503f.addAll(hashSet);
                }
                this.m.b(j5, j6);
            }
            this.f3504g = now;
            return true;
        } catch (IOException e2) {
            this.f3508k.a(a.EnumC0181a.GENERIC_IO, q, "calcFileCacheSize: " + e2.getMessage(), e2);
            return false;
        }
    }

    @Override // com.facebook.cache.disk.h
    public void b(e.f.b.a.d dVar) {
        synchronized (this.o) {
            try {
                List<String> b2 = e.f.b.a.e.b(dVar);
                for (int i2 = 0; i2 < b2.size(); i2++) {
                    String str = b2.get(i2);
                    this.f3506i.a(str);
                    this.f3503f.remove(str);
                }
            } catch (IOException e2) {
                this.f3508k.a(a.EnumC0181a.DELETE_FILE, q, "delete: " + e2.getMessage(), e2);
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    @Nullable
    public e.f.a.a a(e.f.b.a.d dVar) {
        e.f.a.a aVar;
        i b2 = i.b();
        b2.a(dVar);
        try {
            synchronized (this.o) {
                List<String> b3 = e.f.b.a.e.b(dVar);
                String str = null;
                aVar = null;
                for (int i2 = 0; i2 < b3.size(); i2++) {
                    str = b3.get(i2);
                    b2.a(str);
                    aVar = this.f3506i.b(str, dVar);
                    if (aVar != null) {
                        break;
                    }
                }
                if (aVar == null) {
                    this.f3502e.a(b2);
                    this.f3503f.remove(str);
                } else {
                    this.f3502e.d(b2);
                    this.f3503f.add(str);
                }
            }
            return aVar;
        } catch (IOException e2) {
            this.f3508k.a(a.EnumC0181a.GENERIC_IO, q, "getResource", e2);
            b2.a(e2);
            this.f3502e.f(b2);
            return null;
        } finally {
            b2.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskStorageCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private boolean f3511a = false;

        /* renamed from: b, reason: collision with root package name */
        private long f3512b = -1;

        /* renamed from: c, reason: collision with root package name */
        private long f3513c = -1;

        b() {
        }

        public synchronized void a(long j2, long j3) {
            if (this.f3511a) {
                this.f3512b += j2;
                this.f3513c += j3;
            }
        }

        public synchronized void b(long j2, long j3) {
            this.f3513c = j3;
            this.f3512b = j2;
            this.f3511a = true;
        }

        public synchronized boolean c() {
            return this.f3511a;
        }

        public synchronized void d() {
            this.f3511a = false;
            this.f3513c = -1L;
            this.f3512b = -1L;
        }

        public synchronized long a() {
            return this.f3513c;
        }

        public synchronized long b() {
            return this.f3512b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public boolean b() {
        long now = this.n.now();
        if (this.m.c()) {
            long j2 = this.f3504g;
            if (j2 != -1 && now - j2 <= s) {
                return false;
            }
        }
        return c();
    }

    private c.b a(String str, e.f.b.a.d dVar) {
        a();
        return this.f3506i.a(str, dVar);
    }

    private e.f.a.a a(c.b bVar, e.f.b.a.d dVar, String str) {
        e.f.a.a a2;
        synchronized (this.o) {
            a2 = bVar.a(dVar);
            this.f3503f.add(str);
            this.m.a(a2.size(), 1L);
        }
        return a2;
    }

    @Override // com.facebook.cache.disk.h
    public e.f.a.a a(e.f.b.a.d dVar, j jVar) {
        String a2;
        i b2 = i.b();
        b2.a(dVar);
        this.f3502e.g(b2);
        synchronized (this.o) {
            a2 = e.f.b.a.e.a(dVar);
        }
        b2.a(a2);
        try {
            try {
                c.b a3 = a(a2, dVar);
                try {
                    a3.a(jVar, dVar);
                    e.f.a.a a4 = a(a3, dVar, a2);
                    b2.c(a4.size());
                    b2.b(this.m.b());
                    this.f3502e.e(b2);
                    return a4;
                } finally {
                    if (!a3.n()) {
                        e.f.c.d.a.a(q, "Failed to delete temp file");
                    }
                }
            } catch (IOException e2) {
                b2.a(e2);
                this.f3502e.c(b2);
                e.f.c.d.a.a(q, "Failed inserting a file into the cache", (Throwable) e2);
                throw e2;
            }
        } finally {
            b2.a();
        }
    }

    private void a() {
        synchronized (this.o) {
            boolean b2 = b();
            d();
            long b3 = this.m.b();
            if (b3 > this.f3501d && !b2) {
                this.m.d();
                b();
            }
            if (b3 > this.f3501d) {
                a((this.f3501d * 9) / 10, c.a.CACHE_FULL);
            }
        }
    }

    @GuardedBy("mLock")
    private void a(long j2, c.a aVar) {
        try {
            Collection<c.a> a2 = a(this.f3506i.c());
            long b2 = this.m.b();
            long j3 = b2 - j2;
            int i2 = 0;
            long j4 = 0;
            for (c.a aVar2 : a2) {
                if (j4 > j3) {
                    break;
                }
                long a3 = this.f3506i.a(aVar2);
                this.f3503f.remove(aVar2.getId());
                if (a3 > 0) {
                    i2++;
                    j4 += a3;
                    i b3 = i.b();
                    b3.a(aVar2.getId());
                    b3.a(aVar);
                    b3.c(a3);
                    b3.b(b2 - j4);
                    b3.a(j2);
                    this.f3502e.b(b3);
                    b3.a();
                }
            }
            this.m.a(-j4, -i2);
            this.f3506i.b();
        } catch (IOException e2) {
            this.f3508k.a(a.EnumC0181a.EVICTION, q, "evictAboveSize: " + e2.getMessage(), e2);
            throw e2;
        }
    }

    private Collection<c.a> a(Collection<c.a> collection) {
        long now = this.n.now() + r;
        ArrayList arrayList = new ArrayList(collection.size());
        ArrayList arrayList2 = new ArrayList(collection.size());
        for (c.a aVar : collection) {
            if (aVar.j() > now) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        Collections.sort(arrayList2, this.f3507j.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }
}
