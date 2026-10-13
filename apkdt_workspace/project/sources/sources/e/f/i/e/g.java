package e.f.i.e;

import e.f.i.g.h;
import java.util.Collections;
import java.util.List;

/* compiled from: SimpleProgressiveJpegConfig.java */
/* loaded from: classes.dex */
public class g implements e {

    /* renamed from: a, reason: collision with root package name */
    private final c f17594a;

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes.dex */
    private static class b implements c {
        private b() {
        }

        @Override // e.f.i.e.g.c
        public List<Integer> a() {
            return Collections.EMPTY_LIST;
        }

        @Override // e.f.i.e.g.c
        public int b() {
            return 0;
        }
    }

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes.dex */
    public interface c {
        List<Integer> a();

        int b();
    }

    public g() {
        this(new b());
    }

    @Override // e.f.i.e.e
    public h a(int i2) {
        return e.f.i.g.g.a(i2, i2 >= this.f17594a.b(), false);
    }

    @Override // e.f.i.e.e
    public int b(int i2) {
        List<Integer> a2 = this.f17594a.a();
        if (a2 == null || a2.isEmpty()) {
            return i2 + 1;
        }
        for (int i3 = 0; i3 < a2.size(); i3++) {
            if (a2.get(i3).intValue() > i2) {
                return a2.get(i3).intValue();
            }
        }
        return Integer.MAX_VALUE;
    }

    public g(c cVar) {
        com.facebook.common.internal.h.a(cVar);
        this.f17594a = cVar;
    }
}
