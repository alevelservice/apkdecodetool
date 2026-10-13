package e.i.b.a.i.w.j;

import e.i.b.a.i.w.j.d;

/* compiled from: AutoValue_EventStoreConfig.java */
/* loaded from: classes.dex */
final class a extends d {

    /* renamed from: b, reason: collision with root package name */
    private final long f17742b;

    /* renamed from: c, reason: collision with root package name */
    private final int f17743c;

    /* renamed from: d, reason: collision with root package name */
    private final int f17744d;

    /* renamed from: e, reason: collision with root package name */
    private final long f17745e;

    /* renamed from: f, reason: collision with root package name */
    private final int f17746f;

    /* compiled from: AutoValue_EventStoreConfig.java */
    /* loaded from: classes.dex */
    static final class b extends d.a {

        /* renamed from: a, reason: collision with root package name */
        private Long f17747a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f17748b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f17749c;

        /* renamed from: d, reason: collision with root package name */
        private Long f17750d;

        /* renamed from: e, reason: collision with root package name */
        private Integer f17751e;

        @Override // e.i.b.a.i.w.j.d.a
        d.a a(int i2) {
            this.f17749c = Integer.valueOf(i2);
            return this;
        }

        @Override // e.i.b.a.i.w.j.d.a
        d.a b(long j2) {
            this.f17747a = Long.valueOf(j2);
            return this;
        }

        @Override // e.i.b.a.i.w.j.d.a
        d.a c(int i2) {
            this.f17751e = Integer.valueOf(i2);
            return this;
        }

        @Override // e.i.b.a.i.w.j.d.a
        d.a a(long j2) {
            this.f17750d = Long.valueOf(j2);
            return this;
        }

        @Override // e.i.b.a.i.w.j.d.a
        d.a b(int i2) {
            this.f17748b = Integer.valueOf(i2);
            return this;
        }

        @Override // e.i.b.a.i.w.j.d.a
        d a() {
            String str = "";
            if (this.f17747a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f17748b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f17749c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f17750d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f17751e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f17747a.longValue(), this.f17748b.intValue(), this.f17749c.intValue(), this.f17750d.longValue(), this.f17751e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // e.i.b.a.i.w.j.d
    int a() {
        return this.f17744d;
    }

    @Override // e.i.b.a.i.w.j.d
    long b() {
        return this.f17745e;
    }

    @Override // e.i.b.a.i.w.j.d
    int c() {
        return this.f17743c;
    }

    @Override // e.i.b.a.i.w.j.d
    int d() {
        return this.f17746f;
    }

    @Override // e.i.b.a.i.w.j.d
    long e() {
        return this.f17742b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f17742b == dVar.e() && this.f17743c == dVar.c() && this.f17744d == dVar.a() && this.f17745e == dVar.b() && this.f17746f == dVar.d();
    }

    public int hashCode() {
        long j2 = this.f17742b;
        int i2 = (((((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ this.f17743c) * 1000003) ^ this.f17744d) * 1000003;
        long j3 = this.f17745e;
        return this.f17746f ^ ((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f17742b + ", loadBatchSize=" + this.f17743c + ", criticalSectionEnterTimeoutMs=" + this.f17744d + ", eventCleanUpAge=" + this.f17745e + ", maxBlobByteSizePerRow=" + this.f17746f + "}";
    }

    private a(long j2, int i2, int i3, long j3, int i4) {
        this.f17742b = j2;
        this.f17743c = i2;
        this.f17744d = i3;
        this.f17745e = j3;
        this.f17746f = i4;
    }
}
