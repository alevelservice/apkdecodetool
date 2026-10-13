package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewInfoStore.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final a.e.a<RecyclerView.z, a> f2803a = new a.e.a<>();

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final a.e.d<RecyclerView.z> f2804b = new a.e.d<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewInfoStore.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(RecyclerView.z zVar);

        void a(RecyclerView.z zVar, @Nullable RecyclerView.ItemAnimator.c cVar, RecyclerView.ItemAnimator.c cVar2);

        void b(RecyclerView.z zVar, @NonNull RecyclerView.ItemAnimator.c cVar, @Nullable RecyclerView.ItemAnimator.c cVar2);

        void c(RecyclerView.z zVar, @NonNull RecyclerView.ItemAnimator.c cVar, @NonNull RecyclerView.ItemAnimator.c cVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f2803a.clear();
        this.f2804b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(RecyclerView.z zVar) {
        a aVar = this.f2803a.get(zVar);
        return (aVar == null || (aVar.f2806a & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(RecyclerView.z zVar, RecyclerView.ItemAnimator.c cVar) {
        a aVar = this.f2803a.get(zVar);
        if (aVar == null) {
            aVar = a.b();
            this.f2803a.put(zVar, aVar);
        }
        aVar.f2807b = cVar;
        aVar.f2806a |= 4;
    }

    public void d(RecyclerView.z zVar) {
        g(zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public RecyclerView.ItemAnimator.c e(RecyclerView.z zVar) {
        return a(zVar, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public RecyclerView.ItemAnimator.c f(RecyclerView.z zVar) {
        return a(zVar, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(RecyclerView.z zVar) {
        a aVar = this.f2803a.get(zVar);
        if (aVar == null) {
            return;
        }
        aVar.f2806a &= -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(RecyclerView.z zVar) {
        int b2 = this.f2804b.b() - 1;
        while (true) {
            if (b2 < 0) {
                break;
            }
            if (zVar == this.f2804b.c(b2)) {
                this.f2804b.b(b2);
                break;
            }
            b2--;
        }
        a remove = this.f2803a.remove(zVar);
        if (remove != null) {
            a.a(remove);
        }
    }

    private RecyclerView.ItemAnimator.c a(RecyclerView.z zVar, int i2) {
        a d2;
        RecyclerView.ItemAnimator.c cVar;
        int a2 = this.f2803a.a(zVar);
        if (a2 >= 0 && (d2 = this.f2803a.d(a2)) != null) {
            int i3 = d2.f2806a;
            if ((i3 & i2) != 0) {
                d2.f2806a = (i2 ^ (-1)) & i3;
                if (i2 == 4) {
                    cVar = d2.f2807b;
                } else if (i2 == 8) {
                    cVar = d2.f2808c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((d2.f2806a & 12) == 0) {
                    this.f2803a.c(a2);
                    a.a(d2);
                }
                return cVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(RecyclerView.z zVar, RecyclerView.ItemAnimator.c cVar) {
        a aVar = this.f2803a.get(zVar);
        if (aVar == null) {
            aVar = a.b();
            this.f2803a.put(zVar, aVar);
        }
        aVar.f2808c = cVar;
        aVar.f2806a |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewInfoStore.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: d, reason: collision with root package name */
        static a.i.m.f<a> f2805d = new a.i.m.g(20);

        /* renamed from: a, reason: collision with root package name */
        int f2806a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        RecyclerView.ItemAnimator.c f2807b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        RecyclerView.ItemAnimator.c f2808c;

        private a() {
        }

        static void a(a aVar) {
            aVar.f2806a = 0;
            aVar.f2807b = null;
            aVar.f2808c = null;
            f2805d.a(aVar);
        }

        static a b() {
            a a2 = f2805d.a();
            return a2 == null ? new a() : a2;
        }

        static void a() {
            do {
            } while (f2805d.a() != null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(RecyclerView.z zVar) {
        a aVar = this.f2803a.get(zVar);
        return (aVar == null || (aVar.f2806a & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j2, RecyclerView.z zVar) {
        this.f2804b.c(j2, zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.z zVar, RecyclerView.ItemAnimator.c cVar) {
        a aVar = this.f2803a.get(zVar);
        if (aVar == null) {
            aVar = a.b();
            this.f2803a.put(zVar, aVar);
        }
        aVar.f2806a |= 2;
        aVar.f2807b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.z a(long j2) {
        return this.f2804b.a(j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.z zVar) {
        a aVar = this.f2803a.get(zVar);
        if (aVar == null) {
            aVar = a.b();
            this.f2803a.put(zVar, aVar);
        }
        aVar.f2806a |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        for (int size = this.f2803a.size() - 1; size >= 0; size--) {
            RecyclerView.z b2 = this.f2803a.b(size);
            a c2 = this.f2803a.c(size);
            int i2 = c2.f2806a;
            if ((i2 & 3) == 3) {
                bVar.a(b2);
            } else if ((i2 & 1) != 0) {
                RecyclerView.ItemAnimator.c cVar = c2.f2807b;
                if (cVar == null) {
                    bVar.a(b2);
                } else {
                    bVar.b(b2, cVar, c2.f2808c);
                }
            } else if ((i2 & 14) == 14) {
                bVar.a(b2, c2.f2807b, c2.f2808c);
            } else if ((i2 & 12) == 12) {
                bVar.c(b2, c2.f2807b, c2.f2808c);
            } else if ((i2 & 4) != 0) {
                bVar.b(b2, c2.f2807b, null);
            } else if ((i2 & 8) != 0) {
                bVar.a(b2, c2.f2807b, c2.f2808c);
            }
            a.a(c2);
        }
    }
}
