package k.b.a.x;

/* compiled from: TemporalAdjusters.java */
/* loaded from: classes2.dex */
public final class g {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TemporalAdjusters.java */
    /* loaded from: classes2.dex */
    public static final class b implements f {

        /* renamed from: e, reason: collision with root package name */
        private final int f19882e;

        /* renamed from: f, reason: collision with root package name */
        private final int f19883f;

        @Override // k.b.a.x.f
        public d adjustInto(d dVar) {
            int i2 = dVar.get(k.b.a.x.a.DAY_OF_WEEK);
            if (this.f19882e < 2 && i2 == this.f19883f) {
                return dVar;
            }
            if ((this.f19882e & 1) == 0) {
                return dVar.plus(i2 - this.f19883f >= 0 ? 7 - r0 : -r0, k.b.a.x.b.DAYS);
            }
            return dVar.minus(this.f19883f - i2 >= 0 ? 7 - r1 : -r1, k.b.a.x.b.DAYS);
        }

        private b(int i2, k.b.a.c cVar) {
            k.b.a.w.d.a(cVar, "dayOfWeek");
            this.f19882e = i2;
            this.f19883f = cVar.getValue();
        }
    }

    public static f a(k.b.a.c cVar) {
        return new b(0, cVar);
    }

    public static f b(k.b.a.c cVar) {
        return new b(1, cVar);
    }
}
