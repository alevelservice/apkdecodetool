package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* compiled from: CallbackRegistry.java */
/* loaded from: classes.dex */
public class c<C, T, A> implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    private List<C> f2061e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    private long f2062f = 0;

    /* renamed from: g, reason: collision with root package name */
    private long[] f2063g;

    /* renamed from: h, reason: collision with root package name */
    private int f2064h;

    /* renamed from: i, reason: collision with root package name */
    private final a<C, T, A> f2065i;

    /* compiled from: CallbackRegistry.java */
    /* loaded from: classes.dex */
    public static abstract class a<C, T, A> {
        public abstract void a(C c2, T t, int i2, A a2);
    }

    public c(a<C, T, A> aVar) {
        this.f2065i = aVar;
    }

    private void b(T t, int i2, A a2) {
        a(t, i2, a2, 0, Math.min(64, this.f2061e.size()), this.f2062f);
    }

    private void c(T t, int i2, A a2) {
        int size = this.f2061e.size();
        int length = this.f2063g == null ? -1 : r0.length - 1;
        a(t, i2, a2, length);
        a(t, i2, a2, (length + 2) * 64, size, 0L);
    }

    public synchronized void a(T t, int i2, A a2) {
        this.f2064h++;
        c(t, i2, a2);
        this.f2064h--;
        if (this.f2064h == 0) {
            if (this.f2063g != null) {
                for (int length = this.f2063g.length - 1; length >= 0; length--) {
                    long j2 = this.f2063g[length];
                    if (j2 != 0) {
                        a((length + 1) * 64, j2);
                        this.f2063g[length] = 0;
                    }
                }
            }
            if (this.f2062f != 0) {
                a(0, this.f2062f);
                this.f2062f = 0L;
            }
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public synchronized c<C, T, A> m3clone() {
        c<C, T, A> cVar;
        CloneNotSupportedException e2;
        try {
            cVar = (c) super.clone();
            try {
                cVar.f2062f = 0L;
                cVar.f2063g = null;
                cVar.f2064h = 0;
                cVar.f2061e = new ArrayList();
                int size = this.f2061e.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (!a(i2)) {
                        cVar.f2061e.add(this.f2061e.get(i2));
                    }
                }
            } catch (CloneNotSupportedException e3) {
                e2 = e3;
                e2.printStackTrace();
                return cVar;
            }
        } catch (CloneNotSupportedException e4) {
            cVar = null;
            e2 = e4;
        }
        return cVar;
    }

    public synchronized void b(C c2) {
        if (this.f2064h == 0) {
            this.f2061e.remove(c2);
        } else {
            int lastIndexOf = this.f2061e.lastIndexOf(c2);
            if (lastIndexOf >= 0) {
                b(lastIndexOf);
            }
        }
    }

    private void b(int i2) {
        if (i2 < 64) {
            this.f2062f = (1 << i2) | this.f2062f;
            return;
        }
        int i3 = (i2 / 64) - 1;
        long[] jArr = this.f2063g;
        if (jArr == null) {
            this.f2063g = new long[this.f2061e.size() / 64];
        } else if (jArr.length <= i3) {
            long[] jArr2 = new long[this.f2061e.size() / 64];
            long[] jArr3 = this.f2063g;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f2063g = jArr2;
        }
        long j2 = 1 << (i2 % 64);
        long[] jArr4 = this.f2063g;
        jArr4[i3] = j2 | jArr4[i3];
    }

    private void a(T t, int i2, A a2, int i3) {
        if (i3 < 0) {
            b(t, i2, a2);
            return;
        }
        long j2 = this.f2063g[i3];
        int i4 = (i3 + 1) * 64;
        int min = Math.min(this.f2061e.size(), i4 + 64);
        a(t, i2, a2, i3 - 1);
        a(t, i2, a2, i4, min, j2);
    }

    private void a(T t, int i2, A a2, int i3, int i4, long j2) {
        long j3 = 1;
        while (i3 < i4) {
            if ((j2 & j3) == 0) {
                this.f2065i.a(this.f2061e.get(i3), t, i2, a2);
            }
            j3 <<= 1;
            i3++;
        }
    }

    public synchronized void a(C c2) {
        if (c2 != null) {
            int lastIndexOf = this.f2061e.lastIndexOf(c2);
            if (lastIndexOf < 0 || a(lastIndexOf)) {
                this.f2061e.add(c2);
            }
        } else {
            throw new IllegalArgumentException("callback cannot be null");
        }
    }

    private boolean a(int i2) {
        int i3;
        if (i2 < 64) {
            return ((1 << i2) & this.f2062f) != 0;
        }
        long[] jArr = this.f2063g;
        if (jArr != null && (i3 = (i2 / 64) - 1) < jArr.length) {
            return ((1 << (i2 % 64)) & jArr[i3]) != 0;
        }
        return false;
    }

    private void a(int i2, long j2) {
        long j3 = Long.MIN_VALUE;
        for (int i3 = (i2 + 64) - 1; i3 >= i2; i3--) {
            if ((j2 & j3) != 0) {
                this.f2061e.remove(i3);
            }
            j3 >>>= 1;
        }
    }
}
