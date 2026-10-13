package com.google.android.datatransport.cct.f;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.l;
import java.util.Arrays;

/* compiled from: AutoValue_LogEvent.java */
/* loaded from: classes.dex */
final class f extends l {

    /* renamed from: a, reason: collision with root package name */
    private final long f4322a;

    /* renamed from: b, reason: collision with root package name */
    private final Integer f4323b;

    /* renamed from: c, reason: collision with root package name */
    private final long f4324c;

    /* renamed from: d, reason: collision with root package name */
    private final byte[] f4325d;

    /* renamed from: e, reason: collision with root package name */
    private final String f4326e;

    /* renamed from: f, reason: collision with root package name */
    private final long f4327f;

    /* renamed from: g, reason: collision with root package name */
    private final o f4328g;

    /* compiled from: AutoValue_LogEvent.java */
    /* loaded from: classes.dex */
    static final class b extends l.a {

        /* renamed from: a, reason: collision with root package name */
        private Long f4329a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f4330b;

        /* renamed from: c, reason: collision with root package name */
        private Long f4331c;

        /* renamed from: d, reason: collision with root package name */
        private byte[] f4332d;

        /* renamed from: e, reason: collision with root package name */
        private String f4333e;

        /* renamed from: f, reason: collision with root package name */
        private Long f4334f;

        /* renamed from: g, reason: collision with root package name */
        private o f4335g;

        @Override // com.google.android.datatransport.cct.f.l.a
        public l.a a(long j2) {
            this.f4329a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        public l.a b(long j2) {
            this.f4331c = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        public l.a c(long j2) {
            this.f4334f = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        public l.a a(@Nullable Integer num) {
            this.f4330b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        l.a a(@Nullable byte[] bArr) {
            this.f4332d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        l.a a(@Nullable String str) {
            this.f4333e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        public l.a a(@Nullable o oVar) {
            this.f4335g = oVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.l.a
        public l a() {
            String str = "";
            if (this.f4329a == null) {
                str = " eventTimeMs";
            }
            if (this.f4331c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f4334f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.f4329a.longValue(), this.f4330b, this.f4331c.longValue(), this.f4332d, this.f4333e, this.f4334f.longValue(), this.f4335g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.android.datatransport.cct.f.l
    @Nullable
    public Integer a() {
        return this.f4323b;
    }

    @Override // com.google.android.datatransport.cct.f.l
    public long b() {
        return this.f4322a;
    }

    @Override // com.google.android.datatransport.cct.f.l
    public long c() {
        return this.f4324c;
    }

    @Override // com.google.android.datatransport.cct.f.l
    @Nullable
    public o d() {
        return this.f4328g;
    }

    @Override // com.google.android.datatransport.cct.f.l
    @Nullable
    public byte[] e() {
        return this.f4325d;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f4322a == lVar.b() && ((num = this.f4323b) != null ? num.equals(lVar.a()) : lVar.a() == null) && this.f4324c == lVar.c()) {
            if (Arrays.equals(this.f4325d, lVar instanceof f ? ((f) lVar).f4325d : lVar.e()) && ((str = this.f4326e) != null ? str.equals(lVar.f()) : lVar.f() == null) && this.f4327f == lVar.g()) {
                o oVar = this.f4328g;
                if (oVar == null) {
                    if (lVar.d() == null) {
                        return true;
                    }
                } else if (oVar.equals(lVar.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.f.l
    @Nullable
    public String f() {
        return this.f4326e;
    }

    @Override // com.google.android.datatransport.cct.f.l
    public long g() {
        return this.f4327f;
    }

    public int hashCode() {
        long j2 = this.f4322a;
        int i2 = (((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f4323b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j3 = this.f4324c;
        int hashCode2 = (((((i2 ^ hashCode) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f4325d)) * 1000003;
        String str = this.f4326e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j4 = this.f4327f;
        int i3 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j4 >>> 32) ^ j4))) * 1000003;
        o oVar = this.f4328g;
        return i3 ^ (oVar != null ? oVar.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f4322a + ", eventCode=" + this.f4323b + ", eventUptimeMs=" + this.f4324c + ", sourceExtension=" + Arrays.toString(this.f4325d) + ", sourceExtensionJsonProto3=" + this.f4326e + ", timezoneOffsetSeconds=" + this.f4327f + ", networkConnectionInfo=" + this.f4328g + "}";
    }

    private f(long j2, @Nullable Integer num, long j3, @Nullable byte[] bArr, @Nullable String str, long j4, @Nullable o oVar) {
        this.f4322a = j2;
        this.f4323b = num;
        this.f4324c = j3;
        this.f4325d = bArr;
        this.f4326e = str;
        this.f4327f = j4;
        this.f4328g = oVar;
    }
}
