package e.i.b.a.i;

import e.i.b.a.i.l;

/* compiled from: AutoValue_SendRequest.java */
/* loaded from: classes.dex */
final class b extends l {

    /* renamed from: a, reason: collision with root package name */
    private final m f17670a;

    /* renamed from: b, reason: collision with root package name */
    private final String f17671b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.c<?> f17672c;

    /* renamed from: d, reason: collision with root package name */
    private final e.i.b.a.e<?, byte[]> f17673d;

    /* renamed from: e, reason: collision with root package name */
    private final e.i.b.a.b f17674e;

    @Override // e.i.b.a.i.l
    public e.i.b.a.b a() {
        return this.f17674e;
    }

    @Override // e.i.b.a.i.l
    e.i.b.a.c<?> b() {
        return this.f17672c;
    }

    @Override // e.i.b.a.i.l
    e.i.b.a.e<?, byte[]> d() {
        return this.f17673d;
    }

    @Override // e.i.b.a.i.l
    public m e() {
        return this.f17670a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f17670a.equals(lVar.e()) && this.f17671b.equals(lVar.f()) && this.f17672c.equals(lVar.b()) && this.f17673d.equals(lVar.d()) && this.f17674e.equals(lVar.a());
    }

    @Override // e.i.b.a.i.l
    public String f() {
        return this.f17671b;
    }

    public int hashCode() {
        return ((((((((this.f17670a.hashCode() ^ 1000003) * 1000003) ^ this.f17671b.hashCode()) * 1000003) ^ this.f17672c.hashCode()) * 1000003) ^ this.f17673d.hashCode()) * 1000003) ^ this.f17674e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f17670a + ", transportName=" + this.f17671b + ", event=" + this.f17672c + ", transformer=" + this.f17673d + ", encoding=" + this.f17674e + "}";
    }

    /* compiled from: AutoValue_SendRequest.java */
    /* renamed from: e.i.b.a.i.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0199b extends l.a {

        /* renamed from: a, reason: collision with root package name */
        private m f17675a;

        /* renamed from: b, reason: collision with root package name */
        private String f17676b;

        /* renamed from: c, reason: collision with root package name */
        private e.i.b.a.c<?> f17677c;

        /* renamed from: d, reason: collision with root package name */
        private e.i.b.a.e<?, byte[]> f17678d;

        /* renamed from: e, reason: collision with root package name */
        private e.i.b.a.b f17679e;

        @Override // e.i.b.a.i.l.a
        public l.a a(m mVar) {
            if (mVar != null) {
                this.f17675a = mVar;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // e.i.b.a.i.l.a
        public l.a a(String str) {
            if (str != null) {
                this.f17676b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // e.i.b.a.i.l.a
        l.a a(e.i.b.a.c<?> cVar) {
            if (cVar != null) {
                this.f17677c = cVar;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // e.i.b.a.i.l.a
        l.a a(e.i.b.a.e<?, byte[]> eVar) {
            if (eVar != null) {
                this.f17678d = eVar;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // e.i.b.a.i.l.a
        l.a a(e.i.b.a.b bVar) {
            if (bVar != null) {
                this.f17679e = bVar;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // e.i.b.a.i.l.a
        public l a() {
            String str = "";
            if (this.f17675a == null) {
                str = " transportContext";
            }
            if (this.f17676b == null) {
                str = str + " transportName";
            }
            if (this.f17677c == null) {
                str = str + " event";
            }
            if (this.f17678d == null) {
                str = str + " transformer";
            }
            if (this.f17679e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new b(this.f17675a, this.f17676b, this.f17677c, this.f17678d, this.f17679e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private b(m mVar, String str, e.i.b.a.c<?> cVar, e.i.b.a.e<?, byte[]> eVar, e.i.b.a.b bVar) {
        this.f17670a = mVar;
        this.f17671b = str;
        this.f17672c = cVar;
        this.f17673d = eVar;
        this.f17674e = bVar;
    }
}
