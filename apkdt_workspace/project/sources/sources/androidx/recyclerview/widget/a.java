package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.i;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdapterHelper.java */
/* loaded from: classes.dex */
public class a implements i.a {

    /* renamed from: a, reason: collision with root package name */
    private a.i.m.f<b> f2689a;

    /* renamed from: b, reason: collision with root package name */
    final ArrayList<b> f2690b;

    /* renamed from: c, reason: collision with root package name */
    final ArrayList<b> f2691c;

    /* renamed from: d, reason: collision with root package name */
    final InterfaceC0046a f2692d;

    /* renamed from: e, reason: collision with root package name */
    Runnable f2693e;

    /* renamed from: f, reason: collision with root package name */
    final boolean f2694f;

    /* renamed from: g, reason: collision with root package name */
    final i f2695g;

    /* renamed from: h, reason: collision with root package name */
    private int f2696h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterHelper.java */
    /* renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0046a {
        RecyclerView.z a(int i2);

        void a(int i2, int i3);

        void a(int i2, int i3, Object obj);

        void a(b bVar);

        void b(int i2, int i3);

        void b(b bVar);

        void c(int i2, int i3);

        void d(int i2, int i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdapterHelper.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        int f2697a;

        /* renamed from: b, reason: collision with root package name */
        int f2698b;

        /* renamed from: c, reason: collision with root package name */
        Object f2699c;

        /* renamed from: d, reason: collision with root package name */
        int f2700d;

        b(int i2, int i3, int i4, Object obj) {
            this.f2697a = i2;
            this.f2698b = i3;
            this.f2700d = i4;
            this.f2699c = obj;
        }

        String a() {
            int i2 = this.f2697a;
            return i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? "??" : "mv" : "up" : "rm" : H5PluginHandler.HUMMER_FOUNDATION_ADD;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i2 = this.f2697a;
            if (i2 != bVar.f2697a) {
                return false;
            }
            if (i2 == 8 && Math.abs(this.f2700d - this.f2698b) == 1 && this.f2700d == bVar.f2698b && this.f2698b == bVar.f2700d) {
                return true;
            }
            if (this.f2700d != bVar.f2700d || this.f2698b != bVar.f2698b) {
                return false;
            }
            Object obj2 = this.f2699c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f2699c)) {
                    return false;
                }
            } else if (bVar.f2699c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f2697a * 31) + this.f2698b) * 31) + this.f2700d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f2698b + "c:" + this.f2700d + ",p:" + this.f2699c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(InterfaceC0046a interfaceC0046a) {
        this(interfaceC0046a, false);
    }

    private int b(int i2, int i3) {
        for (int size = this.f2691c.size() - 1; size >= 0; size--) {
            b bVar = this.f2691c.get(size);
            int i4 = bVar.f2697a;
            if (i4 == 8) {
                int i5 = bVar.f2698b;
                int i6 = bVar.f2700d;
                if (i5 >= i6) {
                    i6 = i5;
                    i5 = i6;
                }
                if (i2 >= i5 && i2 <= i6) {
                    int i7 = bVar.f2698b;
                    if (i5 == i7) {
                        if (i3 == 1) {
                            bVar.f2700d++;
                        } else if (i3 == 2) {
                            bVar.f2700d--;
                        }
                        i2++;
                    } else {
                        if (i3 == 1) {
                            bVar.f2698b = i7 + 1;
                        } else if (i3 == 2) {
                            bVar.f2698b = i7 - 1;
                        }
                        i2--;
                    }
                } else {
                    int i8 = bVar.f2698b;
                    if (i2 < i8) {
                        if (i3 == 1) {
                            bVar.f2698b = i8 + 1;
                            bVar.f2700d++;
                        } else if (i3 == 2) {
                            bVar.f2698b = i8 - 1;
                            bVar.f2700d--;
                        }
                    }
                }
            } else {
                int i9 = bVar.f2698b;
                if (i9 <= i2) {
                    if (i4 == 1) {
                        i2 -= bVar.f2700d;
                    } else if (i4 == 2) {
                        i2 += bVar.f2700d;
                    }
                } else if (i3 == 1) {
                    bVar.f2698b = i9 + 1;
                } else if (i3 == 2) {
                    bVar.f2698b = i9 - 1;
                }
            }
        }
        for (int size2 = this.f2691c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f2691c.get(size2);
            if (bVar2.f2697a == 8) {
                int i10 = bVar2.f2700d;
                if (i10 == bVar2.f2698b || i10 < 0) {
                    this.f2691c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f2700d <= 0) {
                this.f2691c.remove(size2);
                a(bVar2);
            }
        }
        return i2;
    }

    private void c(b bVar) {
        g(bVar);
    }

    private void d(b bVar) {
        boolean z;
        char c2;
        int i2 = bVar.f2698b;
        int i3 = bVar.f2700d + i2;
        int i4 = 0;
        char c3 = 65535;
        int i5 = i2;
        while (i5 < i3) {
            if (this.f2692d.a(i5) != null || d(i5)) {
                if (c3 == 0) {
                    f(a(2, i2, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c2 = 1;
            } else {
                if (c3 == 1) {
                    g(a(2, i2, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c2 = 0;
            }
            if (z) {
                i5 -= i4;
                i3 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i5++;
            c3 = c2;
        }
        if (i4 != bVar.f2700d) {
            a(bVar);
            bVar = a(2, i2, i4, null);
        }
        if (c3 == 0) {
            f(bVar);
        } else {
            g(bVar);
        }
    }

    private void g(b bVar) {
        this.f2691c.add(bVar);
        int i2 = bVar.f2697a;
        if (i2 == 1) {
            this.f2692d.c(bVar.f2698b, bVar.f2700d);
            return;
        }
        if (i2 == 2) {
            this.f2692d.b(bVar.f2698b, bVar.f2700d);
            return;
        }
        if (i2 == 4) {
            this.f2692d.a(bVar.f2698b, bVar.f2700d, bVar.f2699c);
        } else {
            if (i2 == 8) {
                this.f2692d.a(bVar.f2698b, bVar.f2700d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        int size = this.f2691c.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2692d.b(this.f2691c.get(i2));
        }
        a(this.f2691c);
        this.f2696h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f2695g.a(this.f2690b);
        int size = this.f2690b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2690b.get(i2);
            int i3 = bVar.f2697a;
            if (i3 == 1) {
                b(bVar);
            } else if (i3 == 2) {
                d(bVar);
            } else if (i3 == 4) {
                e(bVar);
            } else if (i3 == 8) {
                c(bVar);
            }
            Runnable runnable = this.f2693e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f2690b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        a(this.f2690b);
        a(this.f2691c);
        this.f2696h = 0;
    }

    a(InterfaceC0046a interfaceC0046a, boolean z) {
        this.f2689a = new a.i.m.g(30);
        this.f2690b = new ArrayList<>();
        this.f2691c = new ArrayList<>();
        this.f2696h = 0;
        this.f2692d = interfaceC0046a;
        this.f2694f = z;
        this.f2695g = new i(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f2690b.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i2) {
        return (i2 & this.f2696h) != 0;
    }

    private void f(b bVar) {
        int i2;
        int i3 = bVar.f2697a;
        if (i3 != 1 && i3 != 8) {
            int b2 = b(bVar.f2698b, i3);
            int i4 = bVar.f2698b;
            int i5 = bVar.f2697a;
            if (i5 == 2) {
                i2 = 0;
            } else {
                if (i5 != 4) {
                    throw new IllegalArgumentException("op should be remove or update." + bVar);
                }
                i2 = 1;
            }
            int i6 = b2;
            int i7 = i4;
            int i8 = 1;
            for (int i9 = 1; i9 < bVar.f2700d; i9++) {
                int b3 = b(bVar.f2698b + (i2 * i9), bVar.f2697a);
                int i10 = bVar.f2697a;
                if (i10 == 2 ? b3 == i6 : i10 == 4 && b3 == i6 + 1) {
                    i8++;
                } else {
                    b a2 = a(bVar.f2697a, i6, i8, bVar.f2699c);
                    a(a2, i7);
                    a(a2);
                    if (bVar.f2697a == 4) {
                        i7 += i8;
                    }
                    i6 = b3;
                    i8 = 1;
                }
            }
            Object obj = bVar.f2699c;
            a(bVar);
            if (i8 > 0) {
                b a3 = a(bVar.f2697a, i6, i8, obj);
                a(a3, i7);
                a(a3);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    void a(b bVar, int i2) {
        this.f2692d.a(bVar);
        int i3 = bVar.f2697a;
        if (i3 == 2) {
            this.f2692d.d(i2, bVar.f2700d);
        } else {
            if (i3 == 4) {
                this.f2692d.a(i2, bVar.f2700d, bVar.f2699c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    int a(int i2, int i3) {
        int size = this.f2691c.size();
        while (i3 < size) {
            b bVar = this.f2691c.get(i3);
            int i4 = bVar.f2697a;
            if (i4 == 8) {
                int i5 = bVar.f2698b;
                if (i5 == i2) {
                    i2 = bVar.f2700d;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (bVar.f2700d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = bVar.f2698b;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = bVar.f2700d;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += bVar.f2700d;
                }
            }
            i3++;
        }
        return i2;
    }

    private void e(b bVar) {
        int i2 = bVar.f2698b;
        int i3 = bVar.f2700d + i2;
        int i4 = i2;
        int i5 = 0;
        char c2 = 65535;
        while (i2 < i3) {
            if (this.f2692d.a(i2) != null || d(i2)) {
                if (c2 == 0) {
                    f(a(4, i4, i5, bVar.f2699c));
                    i4 = i2;
                    i5 = 0;
                }
                c2 = 1;
            } else {
                if (c2 == 1) {
                    g(a(4, i4, i5, bVar.f2699c));
                    i4 = i2;
                    i5 = 0;
                }
                c2 = 0;
            }
            i5++;
            i2++;
        }
        if (i5 != bVar.f2700d) {
            Object obj = bVar.f2699c;
            a(bVar);
            bVar = a(4, i4, i5, obj);
        }
        if (c2 == 0) {
            f(bVar);
        } else {
            g(bVar);
        }
    }

    private boolean d(int i2) {
        int size = this.f2691c.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f2691c.get(i3);
            int i4 = bVar.f2697a;
            if (i4 == 8) {
                if (a(bVar.f2700d, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = bVar.f2698b;
                int i6 = bVar.f2700d + i5;
                while (i5 < i6) {
                    if (a(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public int a(int i2) {
        int size = this.f2690b.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f2690b.get(i3);
            int i4 = bVar.f2697a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = bVar.f2698b;
                    if (i5 <= i2) {
                        int i6 = bVar.f2700d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = bVar.f2698b;
                    if (i7 == i2) {
                        i2 = bVar.f2700d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (bVar.f2700d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (bVar.f2698b <= i2) {
                i2 += bVar.f2700d;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return (this.f2691c.isEmpty() || this.f2690b.isEmpty()) ? false : true;
    }

    private void b(b bVar) {
        g(bVar);
    }

    @Override // androidx.recyclerview.widget.i.a
    public b a(int i2, int i3, int i4, Object obj) {
        b a2 = this.f2689a.a();
        if (a2 == null) {
            return new b(i2, i3, i4, obj);
        }
        a2.f2697a = i2;
        a2.f2698b = i3;
        a2.f2700d = i4;
        a2.f2699c = obj;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i2) {
        return a(i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a();
        int size = this.f2690b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2690b.get(i2);
            int i3 = bVar.f2697a;
            if (i3 == 1) {
                this.f2692d.b(bVar);
                this.f2692d.c(bVar.f2698b, bVar.f2700d);
            } else if (i3 == 2) {
                this.f2692d.b(bVar);
                this.f2692d.d(bVar.f2698b, bVar.f2700d);
            } else if (i3 == 4) {
                this.f2692d.b(bVar);
                this.f2692d.a(bVar.f2698b, bVar.f2700d, bVar.f2699c);
            } else if (i3 == 8) {
                this.f2692d.b(bVar);
                this.f2692d.a(bVar.f2698b, bVar.f2700d);
            }
            Runnable runnable = this.f2693e;
            if (runnable != null) {
                runnable.run();
            }
        }
        a(this.f2690b);
        this.f2696h = 0;
    }

    @Override // androidx.recyclerview.widget.i.a
    public void a(b bVar) {
        if (this.f2694f) {
            return;
        }
        bVar.f2699c = null;
        this.f2689a.a(bVar);
    }

    void a(List<b> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(list.get(i2));
        }
        list.clear();
    }
}
