package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GapWorker.java */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: i, reason: collision with root package name */
    static final ThreadLocal<e> f2767i = new ThreadLocal<>();

    /* renamed from: j, reason: collision with root package name */
    static Comparator<c> f2768j = new a();

    /* renamed from: f, reason: collision with root package name */
    long f2770f;

    /* renamed from: g, reason: collision with root package name */
    long f2771g;

    /* renamed from: e, reason: collision with root package name */
    ArrayList<RecyclerView> f2769e = new ArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    private ArrayList<c> f2772h = new ArrayList<>();

    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    static class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            if ((cVar.f2780d == null) != (cVar2.f2780d == null)) {
                return cVar.f2780d == null ? 1 : -1;
            }
            boolean z = cVar.f2777a;
            if (z != cVar2.f2777a) {
                return z ? -1 : 1;
            }
            int i2 = cVar2.f2778b - cVar.f2778b;
            if (i2 != 0) {
                return i2;
            }
            int i3 = cVar.f2779c - cVar2.f2779c;
            if (i3 != 0) {
                return i3;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2777a;

        /* renamed from: b, reason: collision with root package name */
        public int f2778b;

        /* renamed from: c, reason: collision with root package name */
        public int f2779c;

        /* renamed from: d, reason: collision with root package name */
        public RecyclerView f2780d;

        /* renamed from: e, reason: collision with root package name */
        public int f2781e;

        c() {
        }

        public void a() {
            this.f2777a = false;
            this.f2778b = 0;
            this.f2779c = 0;
            this.f2780d = null;
            this.f2781e = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f2769e.add(recyclerView);
    }

    public void b(RecyclerView recyclerView) {
        this.f2769e.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            a.i.k.b.a("RV Prefetch");
            if (!this.f2769e.isEmpty()) {
                int size = this.f2769e.size();
                long j2 = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = this.f2769e.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j2 = Math.max(recyclerView.getDrawingTime(), j2);
                    }
                }
                if (j2 != 0) {
                    a(TimeUnit.MILLISECONDS.toNanos(j2) + this.f2771g);
                }
            }
        } finally {
            this.f2770f = 0L;
            a.i.k.b.a();
        }
    }

    private void b(long j2) {
        for (int i2 = 0; i2 < this.f2772h.size(); i2++) {
            c cVar = this.f2772h.get(i2);
            if (cVar.f2780d == null) {
                return;
            }
            a(cVar, j2);
            cVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow() && this.f2770f == 0) {
            this.f2770f = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.b(i2, i3);
    }

    private void a() {
        c cVar;
        int size = this.f2769e.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView = this.f2769e.get(i3);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.a(recyclerView, false);
                i2 += recyclerView.mPrefetchRegistry.f2776d;
            }
        }
        this.f2772h.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.f2769e.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(bVar.f2773a) + Math.abs(bVar.f2774b);
                int i6 = i4;
                for (int i7 = 0; i7 < bVar.f2776d * 2; i7 += 2) {
                    if (i6 >= this.f2772h.size()) {
                        cVar = new c();
                        this.f2772h.add(cVar);
                    } else {
                        cVar = this.f2772h.get(i6);
                    }
                    int i8 = bVar.f2775c[i7 + 1];
                    cVar.f2777a = i8 <= abs;
                    cVar.f2778b = abs;
                    cVar.f2779c = i8;
                    cVar.f2780d = recyclerView2;
                    cVar.f2781e = bVar.f2775c[i7];
                    i6++;
                }
                i4 = i6;
            }
        }
        Collections.sort(this.f2772h, f2768j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    public static class b implements RecyclerView.m.c {

        /* renamed from: a, reason: collision with root package name */
        int f2773a;

        /* renamed from: b, reason: collision with root package name */
        int f2774b;

        /* renamed from: c, reason: collision with root package name */
        int[] f2775c;

        /* renamed from: d, reason: collision with root package name */
        int f2776d;

        void a(RecyclerView recyclerView, boolean z) {
            this.f2776d = 0;
            int[] iArr = this.f2775c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.m mVar = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || mVar == null || !mVar.v()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.c()) {
                    mVar.a(recyclerView.mAdapter.a(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                mVar.a(this.f2773a, this.f2774b, recyclerView.mState, this);
            }
            int i2 = this.f2776d;
            if (i2 > mVar.m) {
                mVar.m = i2;
                mVar.n = z;
                recyclerView.mRecycler.j();
            }
        }

        void b(int i2, int i3) {
            this.f2773a = i2;
            this.f2774b = i3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m.c
        public void a(int i2, int i3) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i3 >= 0) {
                int i4 = this.f2776d * 2;
                int[] iArr = this.f2775c;
                if (iArr == null) {
                    this.f2775c = new int[4];
                    Arrays.fill(this.f2775c, -1);
                } else if (i4 >= iArr.length) {
                    this.f2775c = new int[i4 * 2];
                    System.arraycopy(iArr, 0, this.f2775c, 0, iArr.length);
                }
                int[] iArr2 = this.f2775c;
                iArr2[i4] = i2;
                iArr2[i4 + 1] = i3;
                this.f2776d++;
                return;
            }
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(int i2) {
            if (this.f2775c != null) {
                int i3 = this.f2776d * 2;
                for (int i4 = 0; i4 < i3; i4 += 2) {
                    if (this.f2775c[i4] == i2) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            int[] iArr = this.f2775c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2776d = 0;
        }
    }

    static boolean a(RecyclerView recyclerView, int i2) {
        int b2 = recyclerView.mChildHelper.b();
        for (int i3 = 0; i3 < b2; i3++) {
            RecyclerView.z childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.d(i3));
            if (childViewHolderInt.f2642c == i2 && !childViewHolderInt.n()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.z a(RecyclerView recyclerView, int i2, long j2) {
        if (a(recyclerView, i2)) {
            return null;
        }
        RecyclerView.s sVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.z a2 = sVar.a(i2, false, j2);
            if (a2 != null) {
                if (a2.m() && !a2.n()) {
                    sVar.b(a2.f2640a);
                } else {
                    sVar.a(a2, false);
                }
            }
            return a2;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    private void a(@Nullable RecyclerView recyclerView, long j2) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.b() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.a(recyclerView, true);
        if (bVar.f2776d != 0) {
            try {
                a.i.k.b.a("RV Nested Prefetch");
                recyclerView.mState.a(recyclerView.mAdapter);
                for (int i2 = 0; i2 < bVar.f2776d * 2; i2 += 2) {
                    a(recyclerView, bVar.f2775c[i2], j2);
                }
            } finally {
                a.i.k.b.a();
            }
        }
    }

    private void a(c cVar, long j2) {
        RecyclerView.z a2 = a(cVar.f2780d, cVar.f2781e, cVar.f2777a ? Long.MAX_VALUE : j2);
        if (a2 == null || a2.f2641b == null || !a2.m() || a2.n()) {
            return;
        }
        a(a2.f2641b.get(), j2);
    }

    void a(long j2) {
        a();
        b(j2);
    }
}
