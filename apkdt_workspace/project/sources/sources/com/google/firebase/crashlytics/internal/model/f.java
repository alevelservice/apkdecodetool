package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.encoders.annotations.Encodable;

/* compiled from: AutoValue_CrashlyticsReport_Session.java */
/* loaded from: classes.dex */
final class f extends CrashlyticsReport.d {

    /* renamed from: a, reason: collision with root package name */
    private final String f14797a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14798b;

    /* renamed from: c, reason: collision with root package name */
    private final long f14799c;

    /* renamed from: d, reason: collision with root package name */
    private final Long f14800d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f14801e;

    /* renamed from: f, reason: collision with root package name */
    private final CrashlyticsReport.d.a f14802f;

    /* renamed from: g, reason: collision with root package name */
    private final CrashlyticsReport.d.f f14803g;

    /* renamed from: h, reason: collision with root package name */
    private final CrashlyticsReport.d.e f14804h;

    /* renamed from: i, reason: collision with root package name */
    private final CrashlyticsReport.d.c f14805i;

    /* renamed from: j, reason: collision with root package name */
    private final v<CrashlyticsReport.d.AbstractC0121d> f14806j;

    /* renamed from: k, reason: collision with root package name */
    private final int f14807k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.b {

        /* renamed from: a, reason: collision with root package name */
        private String f14808a;

        /* renamed from: b, reason: collision with root package name */
        private String f14809b;

        /* renamed from: c, reason: collision with root package name */
        private Long f14810c;

        /* renamed from: d, reason: collision with root package name */
        private Long f14811d;

        /* renamed from: e, reason: collision with root package name */
        private Boolean f14812e;

        /* renamed from: f, reason: collision with root package name */
        private CrashlyticsReport.d.a f14813f;

        /* renamed from: g, reason: collision with root package name */
        private CrashlyticsReport.d.f f14814g;

        /* renamed from: h, reason: collision with root package name */
        private CrashlyticsReport.d.e f14815h;

        /* renamed from: i, reason: collision with root package name */
        private CrashlyticsReport.d.c f14816i;

        /* renamed from: j, reason: collision with root package name */
        private v<CrashlyticsReport.d.AbstractC0121d> f14817j;

        /* renamed from: k, reason: collision with root package name */
        private Integer f14818k;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(String str) {
            if (str != null) {
                this.f14808a = str;
                return this;
            }
            throw new NullPointerException("Null generator");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b b(String str) {
            if (str != null) {
                this.f14809b = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(CrashlyticsReport.d dVar) {
            this.f14808a = dVar.e();
            this.f14809b = dVar.g();
            this.f14810c = Long.valueOf(dVar.j());
            this.f14811d = dVar.c();
            this.f14812e = Boolean.valueOf(dVar.l());
            this.f14813f = dVar.a();
            this.f14814g = dVar.k();
            this.f14815h = dVar.i();
            this.f14816i = dVar.b();
            this.f14817j = dVar.d();
            this.f14818k = Integer.valueOf(dVar.f());
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(long j2) {
            this.f14810c = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(Long l2) {
            this.f14811d = l2;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(boolean z) {
            this.f14812e = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(CrashlyticsReport.d.a aVar) {
            if (aVar != null) {
                this.f14813f = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(CrashlyticsReport.d.f fVar) {
            this.f14814g = fVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(CrashlyticsReport.d.e eVar) {
            this.f14815h = eVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(CrashlyticsReport.d.c cVar) {
            this.f14816i = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(v<CrashlyticsReport.d.AbstractC0121d> vVar) {
            this.f14817j = vVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d.b a(int i2) {
            this.f14818k = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
        public CrashlyticsReport.d a() {
            String str = "";
            if (this.f14808a == null) {
                str = " generator";
            }
            if (this.f14809b == null) {
                str = str + " identifier";
            }
            if (this.f14810c == null) {
                str = str + " startedAt";
            }
            if (this.f14812e == null) {
                str = str + " crashed";
            }
            if (this.f14813f == null) {
                str = str + " app";
            }
            if (this.f14818k == null) {
                str = str + " generatorType";
            }
            if (str.isEmpty()) {
                return new f(this.f14808a, this.f14809b, this.f14810c.longValue(), this.f14811d, this.f14812e.booleanValue(), this.f14813f, this.f14814g, this.f14815h, this.f14816i, this.f14817j, this.f14818k.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @NonNull
    public CrashlyticsReport.d.a a() {
        return this.f14802f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @Nullable
    public CrashlyticsReport.d.c b() {
        return this.f14805i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @Nullable
    public Long c() {
        return this.f14800d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @Nullable
    public v<CrashlyticsReport.d.AbstractC0121d> d() {
        return this.f14806j;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @NonNull
    public String e() {
        return this.f14797a;
    }

    public boolean equals(Object obj) {
        Long l2;
        CrashlyticsReport.d.f fVar;
        CrashlyticsReport.d.e eVar;
        CrashlyticsReport.d.c cVar;
        v<CrashlyticsReport.d.AbstractC0121d> vVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d)) {
            return false;
        }
        CrashlyticsReport.d dVar = (CrashlyticsReport.d) obj;
        return this.f14797a.equals(dVar.e()) && this.f14798b.equals(dVar.g()) && this.f14799c == dVar.j() && ((l2 = this.f14800d) != null ? l2.equals(dVar.c()) : dVar.c() == null) && this.f14801e == dVar.l() && this.f14802f.equals(dVar.a()) && ((fVar = this.f14803g) != null ? fVar.equals(dVar.k()) : dVar.k() == null) && ((eVar = this.f14804h) != null ? eVar.equals(dVar.i()) : dVar.i() == null) && ((cVar = this.f14805i) != null ? cVar.equals(dVar.b()) : dVar.b() == null) && ((vVar = this.f14806j) != null ? vVar.equals(dVar.d()) : dVar.d() == null) && this.f14807k == dVar.f();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    public int f() {
        return this.f14807k;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @NonNull
    @Encodable.Ignore
    public String g() {
        return this.f14798b;
    }

    public int hashCode() {
        int hashCode = (((this.f14797a.hashCode() ^ 1000003) * 1000003) ^ this.f14798b.hashCode()) * 1000003;
        long j2 = this.f14799c;
        int i2 = (hashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        Long l2 = this.f14800d;
        int hashCode2 = (((((i2 ^ (l2 == null ? 0 : l2.hashCode())) * 1000003) ^ (this.f14801e ? 1231 : 1237)) * 1000003) ^ this.f14802f.hashCode()) * 1000003;
        CrashlyticsReport.d.f fVar = this.f14803g;
        int hashCode3 = (hashCode2 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        CrashlyticsReport.d.e eVar = this.f14804h;
        int hashCode4 = (hashCode3 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        CrashlyticsReport.d.c cVar = this.f14805i;
        int hashCode5 = (hashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        v<CrashlyticsReport.d.AbstractC0121d> vVar = this.f14806j;
        return ((hashCode5 ^ (vVar != null ? vVar.hashCode() : 0)) * 1000003) ^ this.f14807k;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @Nullable
    public CrashlyticsReport.d.e i() {
        return this.f14804h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    public long j() {
        return this.f14799c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    @Nullable
    public CrashlyticsReport.d.f k() {
        return this.f14803g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    public boolean l() {
        return this.f14801e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    public CrashlyticsReport.d.b m() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f14797a + ", identifier=" + this.f14798b + ", startedAt=" + this.f14799c + ", endedAt=" + this.f14800d + ", crashed=" + this.f14801e + ", app=" + this.f14802f + ", user=" + this.f14803g + ", os=" + this.f14804h + ", device=" + this.f14805i + ", events=" + this.f14806j + ", generatorType=" + this.f14807k + "}";
    }

    private f(String str, String str2, long j2, @Nullable Long l2, boolean z, CrashlyticsReport.d.a aVar, @Nullable CrashlyticsReport.d.f fVar, @Nullable CrashlyticsReport.d.e eVar, @Nullable CrashlyticsReport.d.c cVar, @Nullable v<CrashlyticsReport.d.AbstractC0121d> vVar, int i2) {
        this.f14797a = str;
        this.f14798b = str2;
        this.f14799c = j2;
        this.f14800d = l2;
        this.f14801e = z;
        this.f14802f = aVar;
        this.f14803g = fVar;
        this.f14804h = eVar;
        this.f14805i = cVar;
        this.f14806j = vVar;
        this.f14807k = i2;
    }
}
