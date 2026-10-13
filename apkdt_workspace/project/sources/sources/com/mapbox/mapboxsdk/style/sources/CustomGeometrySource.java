package com.mapbox.mapboxsdk.style.sources;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;

/* loaded from: classes2.dex */
public class CustomGeometrySource extends Source {

    /* renamed from: f, reason: collision with root package name */
    private static final AtomicInteger f16262f = new AtomicInteger();

    /* renamed from: a, reason: collision with root package name */
    private final Lock f16263a;

    /* renamed from: b, reason: collision with root package name */
    private ThreadPoolExecutor f16264b;

    /* renamed from: c, reason: collision with root package name */
    private com.mapbox.mapboxsdk.style.sources.b f16265c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<c, b> f16266d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<c, AtomicBoolean> f16267e;

    /* loaded from: classes2.dex */
    class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        final AtomicInteger f16268e = new AtomicInteger();

        /* renamed from: f, reason: collision with root package name */
        final int f16269f = CustomGeometrySource.f16262f.getAndIncrement();

        a(CustomGeometrySource customGeometrySource) {
        }

        @Override // java.util.concurrent.ThreadFactory
        @NonNull
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable, String.format(Locale.US, "%s-%d-%d", "CustomGeom", Integer.valueOf(this.f16269f), Integer.valueOf(this.f16268e.getAndIncrement())));
        }
    }

    /* loaded from: classes2.dex */
    static class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final c f16270e;

        /* renamed from: f, reason: collision with root package name */
        private final com.mapbox.mapboxsdk.style.sources.b f16271f;

        /* renamed from: g, reason: collision with root package name */
        private final Map<c, b> f16272g;

        /* renamed from: h, reason: collision with root package name */
        private final Map<c, AtomicBoolean> f16273h;

        /* renamed from: i, reason: collision with root package name */
        @NonNull
        private final WeakReference<CustomGeometrySource> f16274i;

        /* renamed from: j, reason: collision with root package name */
        private final AtomicBoolean f16275j;

        b(c cVar, com.mapbox.mapboxsdk.style.sources.b bVar, Map<c, b> map, Map<c, AtomicBoolean> map2, CustomGeometrySource customGeometrySource, AtomicBoolean atomicBoolean) {
            this.f16270e = cVar;
            this.f16271f = bVar;
            this.f16272g = map;
            this.f16273h = map2;
            this.f16274i = new WeakReference<>(customGeometrySource);
            this.f16275j = atomicBoolean;
        }

        private Boolean a() {
            return Boolean.valueOf(this.f16275j.get());
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            return this.f16270e.equals(((b) obj).f16270e);
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f16272g) {
                synchronized (this.f16273h) {
                    if (this.f16273h.containsKey(this.f16270e)) {
                        if (!this.f16272g.containsKey(this.f16270e)) {
                            this.f16272g.put(this.f16270e, this);
                        }
                        return;
                    }
                    this.f16273h.put(this.f16270e, this.f16275j);
                    if (!a().booleanValue()) {
                        com.mapbox.mapboxsdk.style.sources.b bVar = this.f16271f;
                        c cVar = this.f16270e;
                        FeatureCollection a2 = bVar.a(LatLngBounds.a(cVar.f16276a, cVar.f16277b, cVar.f16278c), this.f16270e.f16276a);
                        CustomGeometrySource customGeometrySource = this.f16274i.get();
                        if (!a().booleanValue() && customGeometrySource != null && a2 != null) {
                            customGeometrySource.a(this.f16270e, a2);
                        }
                    }
                    synchronized (this.f16272g) {
                        synchronized (this.f16273h) {
                            this.f16273h.remove(this.f16270e);
                            if (this.f16272g.containsKey(this.f16270e)) {
                                b bVar2 = this.f16272g.get(this.f16270e);
                                CustomGeometrySource customGeometrySource2 = this.f16274i.get();
                                if (customGeometrySource2 != null && bVar2 != null) {
                                    customGeometrySource2.f16264b.execute(bVar2);
                                }
                                this.f16272g.remove(this.f16270e);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public int f16276a;

        /* renamed from: b, reason: collision with root package name */
        public int f16277b;

        /* renamed from: c, reason: collision with root package name */
        public int f16278c;

        c(int i2, int i3, int i4) {
            this.f16276a = i2;
            this.f16277b = i3;
            this.f16278c = i4;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || c.class != obj.getClass() || !(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f16276a == cVar.f16276a && this.f16277b == cVar.f16277b && this.f16278c == cVar.f16278c;
        }

        public int hashCode() {
            return Arrays.hashCode(new int[]{this.f16276a, this.f16277b, this.f16278c});
        }
    }

    @Keep
    @WorkerThread
    private void cancelTile(int i2, int i3, int i4) {
        c cVar = new c(i2, i3, i4);
        synchronized (this.f16266d) {
            synchronized (this.f16267e) {
                AtomicBoolean atomicBoolean = this.f16267e.get(cVar);
                if (atomicBoolean == null || !atomicBoolean.compareAndSet(false, true)) {
                    if (!this.f16264b.getQueue().remove(new b(cVar, null, null, null, null, null))) {
                        this.f16266d.remove(cVar);
                    }
                }
            }
        }
    }

    @Keep
    @WorkerThread
    private void fetchTile(int i2, int i3, int i4) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        c cVar = new c(i2, i3, i4);
        b bVar = new b(cVar, this.f16265c, this.f16266d, this.f16267e, this, atomicBoolean);
        synchronized (this.f16266d) {
            synchronized (this.f16267e) {
                if (this.f16264b.getQueue().contains(bVar)) {
                    this.f16264b.remove(bVar);
                    a(bVar);
                } else if (this.f16267e.containsKey(cVar)) {
                    this.f16266d.put(cVar, bVar);
                } else {
                    a(bVar);
                }
            }
        }
    }

    @Keep
    private boolean isCancelled(int i2, int i3, int i4) {
        return this.f16267e.get(new c(i2, i3, i4)).get();
    }

    @Keep
    private native void nativeInvalidateBounds(LatLngBounds latLngBounds);

    @Keep
    private native void nativeInvalidateTile(int i2, int i3, int i4);

    @Keep
    private native void nativeSetTileData(int i2, int i3, int i4, FeatureCollection featureCollection);

    @NonNull
    @Keep
    private native Feature[] querySourceFeatures(Object[] objArr);

    @Keep
    private void releaseThreads() {
        this.f16263a.lock();
        try {
            this.f16264b.shutdownNow();
        } finally {
            this.f16263a.unlock();
        }
    }

    @Keep
    private void startThreads() {
        this.f16263a.lock();
        try {
            if (this.f16264b != null && !this.f16264b.isShutdown()) {
                this.f16264b.shutdownNow();
            }
            this.f16264b = new ThreadPoolExecutor(4, 4, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(this));
        } finally {
            this.f16263a.unlock();
        }
    }

    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize(String str, Object obj);

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, FeatureCollection featureCollection) {
        nativeSetTileData(cVar.f16276a, cVar.f16277b, cVar.f16278c, featureCollection);
    }

    private void a(@NonNull b bVar) {
        this.f16263a.lock();
        try {
            if (this.f16264b != null && !this.f16264b.isShutdown()) {
                this.f16264b.execute(bVar);
            }
        } finally {
            this.f16263a.unlock();
        }
    }
}
