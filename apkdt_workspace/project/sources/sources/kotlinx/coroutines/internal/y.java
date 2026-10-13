package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ThreadSafeHeap.kt */
@InternalCoroutinesApi
/* loaded from: classes2.dex */
public final class y<T extends z & Comparable<? super T>> {

    /* renamed from: a, reason: collision with root package name */
    private T[] f20099a;

    @JvmField
    public volatile int size;

    private final T[] e() {
        T[] tArr = this.f20099a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new z[4];
            this.f20099a = tArr2;
            return tArr2;
        }
        if (this.size < tArr.length) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, this.size * 2);
        kotlin.jvm.d.h.a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((z[]) copyOf);
        this.f20099a = tArr3;
        return tArr3;
    }

    @PublishedApi
    @Nullable
    public final T a() {
        T[] tArr = this.f20099a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final boolean b() {
        return this.size == 0;
    }

    @Nullable
    public final synchronized T c() {
        return a();
    }

    @Nullable
    public final synchronized T d() {
        return this.size > 0 ? a(0) : null;
    }

    private final void c(int i2) {
        while (i2 > 0) {
            T[] tArr = this.f20099a;
            if (tArr != null) {
                int i3 = (i2 - 1) / 2;
                T t = tArr[i3];
                if (t == null) {
                    kotlin.jvm.d.h.a();
                    throw null;
                }
                Comparable comparable = (Comparable) t;
                T t2 = tArr[i2];
                if (t2 == null) {
                    kotlin.jvm.d.h.a();
                    throw null;
                }
                if (comparable.compareTo(t2) <= 0) {
                    return;
                }
                a(i2, i3);
                i2 = i3;
            } else {
                kotlin.jvm.d.h.a();
                throw null;
            }
        }
    }

    @PublishedApi
    @NotNull
    public final T a(int i2) {
        if (this.size > 0) {
            T[] tArr = this.f20099a;
            if (tArr != null) {
                this.size--;
                if (i2 < this.size) {
                    a(i2, this.size);
                    int i3 = (i2 - 1) / 2;
                    if (i2 > 0) {
                        T t = tArr[i2];
                        if (t == null) {
                            kotlin.jvm.d.h.a();
                            throw null;
                        }
                        Comparable comparable = (Comparable) t;
                        T t2 = tArr[i3];
                        if (t2 == null) {
                            kotlin.jvm.d.h.a();
                            throw null;
                        }
                        if (comparable.compareTo(t2) < 0) {
                            a(i2, i3);
                            c(i3);
                        }
                    }
                    b(i2);
                }
                T t3 = tArr[this.size];
                if (t3 != null) {
                    if (t3.a() == this) {
                        t3.a(null);
                        t3.a(-1);
                        tArr[this.size] = null;
                        return t3;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                kotlin.jvm.d.h.a();
                throw null;
            }
            kotlin.jvm.d.h.a();
            throw null;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final synchronized boolean b(@NotNull T t) {
        boolean z;
        kotlin.jvm.d.h.b(t, "node");
        z = true;
        if (t.a() == null) {
            z = false;
        } else {
            int b2 = t.b();
            if (b2 >= 0) {
                a(b2);
            } else {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        return z;
    }

    private final void b(int i2) {
        while (true) {
            int i3 = (i2 * 2) + 1;
            if (i3 >= this.size) {
                return;
            }
            T[] tArr = this.f20099a;
            if (tArr != null) {
                int i4 = i3 + 1;
                if (i4 < this.size) {
                    T t = tArr[i4];
                    if (t == null) {
                        kotlin.jvm.d.h.a();
                        throw null;
                    }
                    Comparable comparable = (Comparable) t;
                    T t2 = tArr[i3];
                    if (t2 == null) {
                        kotlin.jvm.d.h.a();
                        throw null;
                    }
                    if (comparable.compareTo(t2) < 0) {
                        i3 = i4;
                    }
                }
                T t3 = tArr[i2];
                if (t3 == null) {
                    kotlin.jvm.d.h.a();
                    throw null;
                }
                Comparable comparable2 = (Comparable) t3;
                T t4 = tArr[i3];
                if (t4 == null) {
                    kotlin.jvm.d.h.a();
                    throw null;
                }
                if (comparable2.compareTo(t4) <= 0) {
                    return;
                }
                a(i2, i3);
                i2 = i3;
            } else {
                kotlin.jvm.d.h.a();
                throw null;
            }
        }
    }

    @PublishedApi
    public final void a(@NotNull T t) {
        kotlin.jvm.d.h.b(t, "node");
        if (t.a() == null) {
            t.a(this);
            T[] e2 = e();
            int i2 = this.size;
            this.size = i2 + 1;
            e2[i2] = t;
            t.a(i2);
            c(i2);
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final void a(int i2, int i3) {
        T[] tArr = this.f20099a;
        if (tArr != null) {
            T t = tArr[i3];
            if (t != null) {
                T t2 = tArr[i2];
                if (t2 != null) {
                    tArr[i2] = t;
                    tArr[i3] = t2;
                    t.a(i2);
                    t2.a(i3);
                    return;
                }
                kotlin.jvm.d.h.a();
                throw null;
            }
            kotlin.jvm.d.h.a();
            throw null;
        }
        kotlin.jvm.d.h.a();
        throw null;
    }
}
