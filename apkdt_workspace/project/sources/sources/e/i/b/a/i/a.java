package e.i.b.a.i;

import androidx.annotation.Nullable;
import e.i.b.a.i.h;
import java.util.Map;

/* compiled from: AutoValue_EventInternal.java */
/* loaded from: classes.dex */
final class a extends h {

    /* renamed from: a, reason: collision with root package name */
    private final String f17658a;

    /* renamed from: b, reason: collision with root package name */
    private final Integer f17659b;

    /* renamed from: c, reason: collision with root package name */
    private final g f17660c;

    /* renamed from: d, reason: collision with root package name */
    private final long f17661d;

    /* renamed from: e, reason: collision with root package name */
    private final long f17662e;

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, String> f17663f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_EventInternal.java */
    /* loaded from: classes.dex */
    public static final class b extends h.a {

        /* renamed from: a, reason: collision with root package name */
        private String f17664a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f17665b;

        /* renamed from: c, reason: collision with root package name */
        private g f17666c;

        /* renamed from: d, reason: collision with root package name */
        private Long f17667d;

        /* renamed from: e, reason: collision with root package name */
        private Long f17668e;

        /* renamed from: f, reason: collision with root package name */
        private Map<String, String> f17669f;

        @Override // e.i.b.a.i.h.a
        public h.a a(String str) {
            if (str != null) {
                this.f17664a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // e.i.b.a.i.h.a
        public h.a b(long j2) {
            this.f17668e = Long.valueOf(j2);
            return this;
        }

        @Override // e.i.b.a.i.h.a
        protected Map<String, String> b() {
            Map<String, String> map = this.f17669f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // e.i.b.a.i.h.a
        public h.a a(Integer num) {
            this.f17665b = num;
            return this;
        }

        @Override // e.i.b.a.i.h.a
        public h.a a(g gVar) {
            if (gVar != null) {
                this.f17666c = gVar;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // e.i.b.a.i.h.a
        public h.a a(long j2) {
            this.f17667d = Long.valueOf(j2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.i.b.a.i.h.a
        public h.a a(Map<String, String> map) {
            if (map != null) {
                this.f17669f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // e.i.b.a.i.h.a
        public h a() {
            String str = "";
            if (this.f17664a == null) {
                str = " transportName";
            }
            if (this.f17666c == null) {
                str = str + " encodedPayload";
            }
            if (this.f17667d == null) {
                str = str + " eventMillis";
            }
            if (this.f17668e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f17669f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new a(this.f17664a, this.f17665b, this.f17666c, this.f17667d.longValue(), this.f17668e.longValue(), this.f17669f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.i.b.a.i.h
    public Map<String, String> a() {
        return this.f17663f;
    }

    @Override // e.i.b.a.i.h
    @Nullable
    public Integer b() {
        return this.f17659b;
    }

    @Override // e.i.b.a.i.h
    public g c() {
        return this.f17660c;
    }

    @Override // e.i.b.a.i.h
    public long d() {
        return this.f17661d;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f17658a.equals(hVar.f()) && ((num = this.f17659b) != null ? num.equals(hVar.b()) : hVar.b() == null) && this.f17660c.equals(hVar.c()) && this.f17661d == hVar.d() && this.f17662e == hVar.g() && this.f17663f.equals(hVar.a());
    }

    @Override // e.i.b.a.i.h
    public String f() {
        return this.f17658a;
    }

    @Override // e.i.b.a.i.h
    public long g() {
        return this.f17662e;
    }

    public int hashCode() {
        int hashCode = (this.f17658a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f17659b;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f17660c.hashCode()) * 1000003;
        long j2 = this.f17661d;
        int i2 = (hashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f17662e;
        return ((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ this.f17663f.hashCode();
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f17658a + ", code=" + this.f17659b + ", encodedPayload=" + this.f17660c + ", eventMillis=" + this.f17661d + ", uptimeMillis=" + this.f17662e + ", autoMetadata=" + this.f17663f + "}";
    }

    private a(String str, @Nullable Integer num, g gVar, long j2, long j3, Map<String, String> map) {
        this.f17658a = str;
        this.f17659b = num;
        this.f17660c = gVar;
        this.f17661d = j2;
        this.f17662e = j3;
        this.f17663f = map;
    }
}
