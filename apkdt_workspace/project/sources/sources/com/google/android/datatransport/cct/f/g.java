package com.google.android.datatransport.cct.f;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.m;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* compiled from: AutoValue_LogRequest.java */
/* loaded from: classes.dex */
final class g extends m {

    /* renamed from: a, reason: collision with root package name */
    private final long f4336a;

    /* renamed from: b, reason: collision with root package name */
    private final long f4337b;

    /* renamed from: c, reason: collision with root package name */
    private final k f4338c;

    /* renamed from: d, reason: collision with root package name */
    private final Integer f4339d;

    /* renamed from: e, reason: collision with root package name */
    private final String f4340e;

    /* renamed from: f, reason: collision with root package name */
    private final List<l> f4341f;

    /* renamed from: g, reason: collision with root package name */
    private final p f4342g;

    /* compiled from: AutoValue_LogRequest.java */
    /* loaded from: classes.dex */
    static final class b extends m.a {

        /* renamed from: a, reason: collision with root package name */
        private Long f4343a;

        /* renamed from: b, reason: collision with root package name */
        private Long f4344b;

        /* renamed from: c, reason: collision with root package name */
        private k f4345c;

        /* renamed from: d, reason: collision with root package name */
        private Integer f4346d;

        /* renamed from: e, reason: collision with root package name */
        private String f4347e;

        /* renamed from: f, reason: collision with root package name */
        private List<l> f4348f;

        /* renamed from: g, reason: collision with root package name */
        private p f4349g;

        @Override // com.google.android.datatransport.cct.f.m.a
        public m.a a(long j2) {
            this.f4343a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        public m.a b(long j2) {
            this.f4344b = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        public m.a a(@Nullable k kVar) {
            this.f4345c = kVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        m.a a(@Nullable Integer num) {
            this.f4346d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        m.a a(@Nullable String str) {
            this.f4347e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        public m.a a(@Nullable List<l> list) {
            this.f4348f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        public m.a a(@Nullable p pVar) {
            this.f4349g = pVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.m.a
        public m a() {
            String str = "";
            if (this.f4343a == null) {
                str = " requestTimeMs";
            }
            if (this.f4344b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.f4343a.longValue(), this.f4344b.longValue(), this.f4345c, this.f4346d, this.f4347e, this.f4348f, this.f4349g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.android.datatransport.cct.f.m
    @Nullable
    public k a() {
        return this.f4338c;
    }

    @Override // com.google.android.datatransport.cct.f.m
    @Nullable
    @Encodable.Field(name = "logEvent")
    public List<l> b() {
        return this.f4341f;
    }

    @Override // com.google.android.datatransport.cct.f.m
    @Nullable
    public Integer c() {
        return this.f4339d;
    }

    @Override // com.google.android.datatransport.cct.f.m
    @Nullable
    public String d() {
        return this.f4340e;
    }

    @Override // com.google.android.datatransport.cct.f.m
    @Nullable
    public p e() {
        return this.f4342g;
    }

    public boolean equals(Object obj) {
        k kVar;
        Integer num;
        String str;
        List<l> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f4336a == mVar.f() && this.f4337b == mVar.g() && ((kVar = this.f4338c) != null ? kVar.equals(mVar.a()) : mVar.a() == null) && ((num = this.f4339d) != null ? num.equals(mVar.c()) : mVar.c() == null) && ((str = this.f4340e) != null ? str.equals(mVar.d()) : mVar.d() == null) && ((list = this.f4341f) != null ? list.equals(mVar.b()) : mVar.b() == null)) {
            p pVar = this.f4342g;
            if (pVar == null) {
                if (mVar.e() == null) {
                    return true;
                }
            } else if (pVar.equals(mVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.f.m
    public long f() {
        return this.f4336a;
    }

    @Override // com.google.android.datatransport.cct.f.m
    public long g() {
        return this.f4337b;
    }

    public int hashCode() {
        long j2 = this.f4336a;
        long j3 = this.f4337b;
        int i2 = (((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        k kVar = this.f4338c;
        int hashCode = (i2 ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        Integer num = this.f4339d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f4340e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<l> list = this.f4341f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        p pVar = this.f4342g;
        return hashCode4 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f4336a + ", requestUptimeMs=" + this.f4337b + ", clientInfo=" + this.f4338c + ", logSource=" + this.f4339d + ", logSourceName=" + this.f4340e + ", logEvents=" + this.f4341f + ", qosTier=" + this.f4342g + "}";
    }

    private g(long j2, long j3, @Nullable k kVar, @Nullable Integer num, @Nullable String str, @Nullable List<l> list, @Nullable p pVar) {
        this.f4336a = j2;
        this.f4337b = j3;
        this.f4338c = kVar;
        this.f4339d = num;
        this.f4340e = str;
        this.f4341f = list;
        this.f4342g = pVar;
    }
}
