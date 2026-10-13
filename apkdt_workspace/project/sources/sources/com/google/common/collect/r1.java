package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: TopKSelector.java */
@GwtCompatible
/* loaded from: classes.dex */
final class r1<T> {

    /* renamed from: a, reason: collision with root package name */
    private final int f14179a;

    /* renamed from: b, reason: collision with root package name */
    private final Comparator<? super T> f14180b;

    /* renamed from: c, reason: collision with root package name */
    private final T[] f14181c;

    /* renamed from: d, reason: collision with root package name */
    private int f14182d;

    /* renamed from: e, reason: collision with root package name */
    @NullableDecl
    private T f14183e;

    private r1(Comparator<? super T> comparator, int i2) {
        e.i.c.a.j.a(comparator, "comparator");
        this.f14180b = comparator;
        this.f14179a = i2;
        e.i.c.a.j.a(i2 >= 0, "k must be nonnegative, was %s", i2);
        this.f14181c = (T[]) new Object[i2 * 2];
        this.f14182d = 0;
        this.f14183e = null;
    }

    public static <T> r1<T> a(int i2, Comparator<? super T> comparator) {
        return new r1<>(comparator, i2);
    }

    private void b() {
        int i2 = (this.f14179a * 2) - 1;
        int a2 = e.i.c.b.a.a(i2 + 0, RoundingMode.CEILING) * 3;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int a3 = a(i3, i2, ((i3 + i2) + 1) >>> 1);
            int i6 = this.f14179a;
            if (a3 <= i6) {
                if (a3 >= i6) {
                    break;
                }
                i3 = Math.max(a3, i3 + 1);
                i5 = a3;
            } else {
                i2 = a3 - 1;
            }
            i4++;
            if (i4 >= a2) {
                Arrays.sort(this.f14181c, i3, i2, this.f14180b);
                break;
            }
        }
        this.f14182d = this.f14179a;
        this.f14183e = this.f14181c[i5];
        while (true) {
            i5++;
            if (i5 >= this.f14179a) {
                return;
            }
            if (this.f14180b.compare(this.f14181c[i5], this.f14183e) > 0) {
                this.f14183e = this.f14181c[i5];
            }
        }
    }

    public void a(@NullableDecl T t) {
        int i2 = this.f14179a;
        if (i2 == 0) {
            return;
        }
        int i3 = this.f14182d;
        if (i3 == 0) {
            this.f14181c[0] = t;
            this.f14183e = t;
            this.f14182d = 1;
            return;
        }
        if (i3 < i2) {
            T[] tArr = this.f14181c;
            this.f14182d = i3 + 1;
            tArr[i3] = t;
            if (this.f14180b.compare(t, this.f14183e) > 0) {
                this.f14183e = t;
                return;
            }
            return;
        }
        if (this.f14180b.compare(t, this.f14183e) < 0) {
            T[] tArr2 = this.f14181c;
            int i4 = this.f14182d;
            this.f14182d = i4 + 1;
            tArr2[i4] = t;
            if (this.f14182d == this.f14179a * 2) {
                b();
            }
        }
    }

    private int a(int i2, int i3, int i4) {
        T[] tArr = this.f14181c;
        T t = tArr[i4];
        tArr[i4] = tArr[i3];
        int i5 = i2;
        while (i2 < i3) {
            if (this.f14180b.compare(this.f14181c[i2], t) < 0) {
                a(i5, i2);
                i5++;
            }
            i2++;
        }
        T[] tArr2 = this.f14181c;
        tArr2[i3] = tArr2[i5];
        tArr2[i5] = t;
        return i5;
    }

    private void a(int i2, int i3) {
        T[] tArr = this.f14181c;
        T t = tArr[i2];
        tArr[i2] = tArr[i3];
        tArr[i3] = t;
    }

    public void a(Iterator<? extends T> it) {
        while (it.hasNext()) {
            a((r1<T>) it.next());
        }
    }

    public List<T> a() {
        Arrays.sort(this.f14181c, 0, this.f14182d, this.f14180b);
        int i2 = this.f14182d;
        int i3 = this.f14179a;
        if (i2 > i3) {
            T[] tArr = this.f14181c;
            Arrays.fill(tArr, i3, tArr.length, (Object) null);
            int i4 = this.f14179a;
            this.f14182d = i4;
            this.f14183e = this.f14181c[i4 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(this.f14181c, this.f14182d)));
    }
}
