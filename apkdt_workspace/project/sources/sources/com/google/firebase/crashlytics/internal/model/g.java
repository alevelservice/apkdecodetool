package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Application.java */
/* loaded from: classes.dex */
final class g extends CrashlyticsReport.d.a {

    /* renamed from: a, reason: collision with root package name */
    private final String f14819a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14820b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14821c;

    /* renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.d.a.b f14822d;

    /* renamed from: e, reason: collision with root package name */
    private final String f14823e;

    /* renamed from: f, reason: collision with root package name */
    private final String f14824f;

    /* renamed from: g, reason: collision with root package name */
    private final String f14825g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Application.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.a.AbstractC0120a {

        /* renamed from: a, reason: collision with root package name */
        private String f14826a;

        /* renamed from: b, reason: collision with root package name */
        private String f14827b;

        /* renamed from: c, reason: collision with root package name */
        private String f14828c;

        /* renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.d.a.b f14829d;

        /* renamed from: e, reason: collision with root package name */
        private String f14830e;

        /* renamed from: f, reason: collision with root package name */
        private String f14831f;

        /* renamed from: g, reason: collision with root package name */
        private String f14832g;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a.AbstractC0120a a(@Nullable String str) {
            this.f14831f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a.AbstractC0120a b(@Nullable String str) {
            this.f14832g = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a.AbstractC0120a c(String str) {
            this.f14828c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a.AbstractC0120a d(String str) {
            if (str != null) {
                this.f14826a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a.AbstractC0120a e(String str) {
            this.f14830e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a.AbstractC0120a f(String str) {
            if (str != null) {
                this.f14827b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.AbstractC0120a
        public CrashlyticsReport.d.a a() {
            String str = "";
            if (this.f14826a == null) {
                str = " identifier";
            }
            if (this.f14827b == null) {
                str = str + " version";
            }
            if (str.isEmpty()) {
                return new g(this.f14826a, this.f14827b, this.f14828c, this.f14829d, this.f14830e, this.f14831f, this.f14832g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @Nullable
    public String a() {
        return this.f14824f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @Nullable
    public String b() {
        return this.f14825g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @Nullable
    public String c() {
        return this.f14821c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @NonNull
    public String d() {
        return this.f14819a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @Nullable
    public String e() {
        return this.f14823e;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.d.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.a)) {
            return false;
        }
        CrashlyticsReport.d.a aVar = (CrashlyticsReport.d.a) obj;
        if (this.f14819a.equals(aVar.d()) && this.f14820b.equals(aVar.g()) && ((str = this.f14821c) != null ? str.equals(aVar.c()) : aVar.c() == null) && ((bVar = this.f14822d) != null ? bVar.equals(aVar.f()) : aVar.f() == null) && ((str2 = this.f14823e) != null ? str2.equals(aVar.e()) : aVar.e() == null) && ((str3 = this.f14824f) != null ? str3.equals(aVar.a()) : aVar.a() == null)) {
            String str4 = this.f14825g;
            if (str4 == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @Nullable
    public CrashlyticsReport.d.a.b f() {
        return this.f14822d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
    @NonNull
    public String g() {
        return this.f14820b;
    }

    public int hashCode() {
        int hashCode = (((this.f14819a.hashCode() ^ 1000003) * 1000003) ^ this.f14820b.hashCode()) * 1000003;
        String str = this.f14821c;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        CrashlyticsReport.d.a.b bVar = this.f14822d;
        int hashCode3 = (hashCode2 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        String str2 = this.f14823e;
        int hashCode4 = (hashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f14824f;
        int hashCode5 = (hashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f14825g;
        return hashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "Application{identifier=" + this.f14819a + ", version=" + this.f14820b + ", displayVersion=" + this.f14821c + ", organization=" + this.f14822d + ", installationUuid=" + this.f14823e + ", developmentPlatform=" + this.f14824f + ", developmentPlatformVersion=" + this.f14825g + "}";
    }

    private g(String str, String str2, @Nullable String str3, @Nullable CrashlyticsReport.d.a.b bVar, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this.f14819a = str;
        this.f14820b = str2;
        this.f14821c = str3;
        this.f14822d = bVar;
        this.f14823e = str4;
        this.f14824f = str5;
        this.f14825g = str6;
    }
}
