package a.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.Locale;

/* compiled from: LruCache.java */
/* loaded from: classes.dex */
public class e<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<K, V> f97a;

    /* renamed from: b, reason: collision with root package name */
    private int f98b;

    /* renamed from: c, reason: collision with root package name */
    private int f99c;

    /* renamed from: d, reason: collision with root package name */
    private int f100d;

    /* renamed from: e, reason: collision with root package name */
    private int f101e;

    /* renamed from: f, reason: collision with root package name */
    private int f102f;

    /* renamed from: g, reason: collision with root package name */
    private int f103g;

    /* renamed from: h, reason: collision with root package name */
    private int f104h;

    public e(int i2) {
        if (i2 > 0) {
            this.f99c = i2;
            this.f97a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int c(K k2, V v) {
        int b2 = b(k2, v);
        if (b2 >= 0) {
            return b2;
        }
        throw new IllegalStateException("Negative size: " + k2 + "=" + v);
    }

    @Nullable
    protected V a(@NonNull K k2) {
        return null;
    }

    @Nullable
    public final V a(@NonNull K k2, @NonNull V v) {
        V put;
        if (k2 != null && v != null) {
            synchronized (this) {
                this.f100d++;
                this.f98b += c(k2, v);
                put = this.f97a.put(k2, v);
                if (put != null) {
                    this.f98b -= c(k2, put);
                }
            }
            if (put != null) {
                a(false, k2, put, v);
            }
            a(this.f99c);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    protected void a(boolean z, @NonNull K k2, @NonNull V v, @Nullable V v2) {
    }

    protected int b(@NonNull K k2, @NonNull V v) {
        return 1;
    }

    @Nullable
    public final V b(@NonNull K k2) {
        V v;
        if (k2 != null) {
            synchronized (this) {
                V v2 = this.f97a.get(k2);
                if (v2 != null) {
                    this.f103g++;
                    return v2;
                }
                this.f104h++;
                V a2 = a((e<K, V>) k2);
                if (a2 == null) {
                    return null;
                }
                synchronized (this) {
                    this.f101e++;
                    v = (V) this.f97a.put(k2, a2);
                    if (v != null) {
                        this.f97a.put(k2, v);
                    } else {
                        this.f98b += c(k2, a2);
                    }
                }
                if (v != null) {
                    a(false, k2, a2, v);
                    return v;
                }
                a(this.f99c);
                return a2;
            }
        }
        throw new NullPointerException("key == null");
    }

    public final synchronized String toString() {
        int i2;
        i2 = this.f103g + this.f104h;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f99c), Integer.valueOf(this.f103g), Integer.valueOf(this.f104h), Integer.valueOf(i2 != 0 ? (this.f103g * 100) / i2 : 0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f98b     // Catch: java.lang.Throwable -> L71
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<K, V> r0 = r4.f97a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L11
            int r0 = r4.f98b     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L52
        L11:
            int r0 = r4.f98b     // Catch: java.lang.Throwable -> L71
            if (r0 <= r5) goto L50
            java.util.LinkedHashMap<K, V> r0 = r4.f97a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L1e
            goto L50
        L1e:
            java.util.LinkedHashMap<K, V> r0 = r4.f97a     // Catch: java.lang.Throwable -> L71
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L71
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L71
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L71
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L71
            java.util.LinkedHashMap<K, V> r2 = r4.f97a     // Catch: java.lang.Throwable -> L71
            r2.remove(r1)     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f98b     // Catch: java.lang.Throwable -> L71
            int r3 = r4.c(r1, r0)     // Catch: java.lang.Throwable -> L71
            int r2 = r2 - r3
            r4.f98b = r2     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f102f     // Catch: java.lang.Throwable -> L71
            r3 = 1
            int r2 = r2 + r3
            r4.f102f = r2     // Catch: java.lang.Throwable -> L71
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            r2 = 0
            r4.a(r3, r1, r0, r2)
            goto L0
        L50:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            return
        L52:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r0.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L71
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L71
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L71
            throw r5     // Catch: java.lang.Throwable -> L71
        L71:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            goto L75
        L74:
            throw r5
        L75:
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: a.e.e.a(int):void");
    }

    public final void a() {
        a(-1);
    }
}
