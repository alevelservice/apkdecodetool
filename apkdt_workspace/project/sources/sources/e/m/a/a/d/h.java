package e.m.a.a.d;

/* compiled from: LocationEngineRequest.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private final long f18039a;

    /* renamed from: b, reason: collision with root package name */
    private final int f18040b;

    /* renamed from: c, reason: collision with root package name */
    private final float f18041c;

    /* renamed from: d, reason: collision with root package name */
    private final long f18042d;

    /* renamed from: e, reason: collision with root package name */
    private final long f18043e;

    /* compiled from: LocationEngineRequest.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final long f18044a;

        /* renamed from: b, reason: collision with root package name */
        private int f18045b = 0;

        /* renamed from: c, reason: collision with root package name */
        private float f18046c = 0.0f;

        /* renamed from: d, reason: collision with root package name */
        private long f18047d = 0;

        /* renamed from: e, reason: collision with root package name */
        private long f18048e = 0;

        public b(long j2) {
            this.f18044a = j2;
        }

        public b a(int i2) {
            this.f18045b = i2;
            return this;
        }

        public b b(long j2) {
            this.f18047d = j2;
            return this;
        }

        public b a(long j2) {
            this.f18048e = j2;
            return this;
        }

        public h a() {
            return new h(this);
        }
    }

    public float a() {
        return this.f18041c;
    }

    public long b() {
        return this.f18043e;
    }

    public long c() {
        return this.f18039a;
    }

    public long d() {
        return this.f18042d;
    }

    public int e() {
        return this.f18040b;
    }

    private h(b bVar) {
        this.f18039a = bVar.f18044a;
        this.f18040b = bVar.f18045b;
        this.f18041c = bVar.f18046c;
        this.f18042d = bVar.f18047d;
        this.f18043e = bVar.f18048e;
    }
}
