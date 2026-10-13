package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Device.java */
/* loaded from: classes.dex */
final class i extends CrashlyticsReport.d.c {

    /* renamed from: a, reason: collision with root package name */
    private final int f14834a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14835b;

    /* renamed from: c, reason: collision with root package name */
    private final int f14836c;

    /* renamed from: d, reason: collision with root package name */
    private final long f14837d;

    /* renamed from: e, reason: collision with root package name */
    private final long f14838e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f14839f;

    /* renamed from: g, reason: collision with root package name */
    private final int f14840g;

    /* renamed from: h, reason: collision with root package name */
    private final String f14841h;

    /* renamed from: i, reason: collision with root package name */
    private final String f14842i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Device.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.c.a {

        /* renamed from: a, reason: collision with root package name */
        private Integer f14843a;

        /* renamed from: b, reason: collision with root package name */
        private String f14844b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f14845c;

        /* renamed from: d, reason: collision with root package name */
        private Long f14846d;

        /* renamed from: e, reason: collision with root package name */
        private Long f14847e;

        /* renamed from: f, reason: collision with root package name */
        private Boolean f14848f;

        /* renamed from: g, reason: collision with root package name */
        private Integer f14849g;

        /* renamed from: h, reason: collision with root package name */
        private String f14850h;

        /* renamed from: i, reason: collision with root package name */
        private String f14851i;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a a(int i2) {
            this.f14843a = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a b(String str) {
            if (str != null) {
                this.f14844b = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a c(int i2) {
            this.f14849g = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a a(long j2) {
            this.f14847e = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a c(String str) {
            if (str != null) {
                this.f14851i = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a a(boolean z) {
            this.f14848f = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a b(int i2) {
            this.f14845c = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a a(String str) {
            if (str != null) {
                this.f14850h = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c.a b(long j2) {
            this.f14846d = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c.a
        public CrashlyticsReport.d.c a() {
            String str = "";
            if (this.f14843a == null) {
                str = " arch";
            }
            if (this.f14844b == null) {
                str = str + " model";
            }
            if (this.f14845c == null) {
                str = str + " cores";
            }
            if (this.f14846d == null) {
                str = str + " ram";
            }
            if (this.f14847e == null) {
                str = str + " diskSpace";
            }
            if (this.f14848f == null) {
                str = str + " simulator";
            }
            if (this.f14849g == null) {
                str = str + " state";
            }
            if (this.f14850h == null) {
                str = str + " manufacturer";
            }
            if (this.f14851i == null) {
                str = str + " modelClass";
            }
            if (str.isEmpty()) {
                return new i(this.f14843a.intValue(), this.f14844b, this.f14845c.intValue(), this.f14846d.longValue(), this.f14847e.longValue(), this.f14848f.booleanValue(), this.f14849g.intValue(), this.f14850h, this.f14851i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    @NonNull
    public int a() {
        return this.f14834a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    public int b() {
        return this.f14836c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    public long c() {
        return this.f14838e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    @NonNull
    public String d() {
        return this.f14841h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    @NonNull
    public String e() {
        return this.f14835b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.c)) {
            return false;
        }
        CrashlyticsReport.d.c cVar = (CrashlyticsReport.d.c) obj;
        return this.f14834a == cVar.a() && this.f14835b.equals(cVar.e()) && this.f14836c == cVar.b() && this.f14837d == cVar.g() && this.f14838e == cVar.c() && this.f14839f == cVar.i() && this.f14840g == cVar.h() && this.f14841h.equals(cVar.d()) && this.f14842i.equals(cVar.f());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    @NonNull
    public String f() {
        return this.f14842i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    public long g() {
        return this.f14837d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    public int h() {
        return this.f14840g;
    }

    public int hashCode() {
        int hashCode = (((((this.f14834a ^ 1000003) * 1000003) ^ this.f14835b.hashCode()) * 1000003) ^ this.f14836c) * 1000003;
        long j2 = this.f14837d;
        int i2 = (hashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f14838e;
        return ((((((((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ (this.f14839f ? 1231 : 1237)) * 1000003) ^ this.f14840g) * 1000003) ^ this.f14841h.hashCode()) * 1000003) ^ this.f14842i.hashCode();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.c
    public boolean i() {
        return this.f14839f;
    }

    public String toString() {
        return "Device{arch=" + this.f14834a + ", model=" + this.f14835b + ", cores=" + this.f14836c + ", ram=" + this.f14837d + ", diskSpace=" + this.f14838e + ", simulator=" + this.f14839f + ", state=" + this.f14840g + ", manufacturer=" + this.f14841h + ", modelClass=" + this.f14842i + "}";
    }

    private i(int i2, String str, int i3, long j2, long j3, boolean z, int i4, String str2, String str3) {
        this.f14834a = i2;
        this.f14835b = str;
        this.f14836c = i3;
        this.f14837d = j2;
        this.f14838e = j3;
        this.f14839f = z;
        this.f14840g = i4;
        this.f14841h = str2;
        this.f14842i = str3;
    }
}
