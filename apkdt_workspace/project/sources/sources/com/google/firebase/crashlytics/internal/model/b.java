package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport.java */
/* loaded from: classes.dex */
final class b extends CrashlyticsReport {

    /* renamed from: b, reason: collision with root package name */
    private final String f14769b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14770c;

    /* renamed from: d, reason: collision with root package name */
    private final int f14771d;

    /* renamed from: e, reason: collision with root package name */
    private final String f14772e;

    /* renamed from: f, reason: collision with root package name */
    private final String f14773f;

    /* renamed from: g, reason: collision with root package name */
    private final String f14774g;

    /* renamed from: h, reason: collision with root package name */
    private final CrashlyticsReport.d f14775h;

    /* renamed from: i, reason: collision with root package name */
    private final CrashlyticsReport.c f14776i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport.java */
    /* renamed from: com.google.firebase.crashlytics.internal.model.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0134b extends CrashlyticsReport.a {

        /* renamed from: a, reason: collision with root package name */
        private String f14777a;

        /* renamed from: b, reason: collision with root package name */
        private String f14778b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f14779c;

        /* renamed from: d, reason: collision with root package name */
        private String f14780d;

        /* renamed from: e, reason: collision with root package name */
        private String f14781e;

        /* renamed from: f, reason: collision with root package name */
        private String f14782f;

        /* renamed from: g, reason: collision with root package name */
        private CrashlyticsReport.d f14783g;

        /* renamed from: h, reason: collision with root package name */
        private CrashlyticsReport.c f14784h;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a a(int i2) {
            this.f14779c = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a b(String str) {
            if (str != null) {
                this.f14782f = str;
                return this;
            }
            throw new NullPointerException("Null displayVersion");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a c(String str) {
            if (str != null) {
                this.f14778b = str;
                return this;
            }
            throw new NullPointerException("Null gmpAppId");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a d(String str) {
            if (str != null) {
                this.f14780d = str;
                return this;
            }
            throw new NullPointerException("Null installationUuid");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a e(String str) {
            if (str != null) {
                this.f14777a = str;
                return this;
            }
            throw new NullPointerException("Null sdkVersion");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0134b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a a(String str) {
            if (str != null) {
                this.f14781e = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        private C0134b(CrashlyticsReport crashlyticsReport) {
            this.f14777a = crashlyticsReport.g();
            this.f14778b = crashlyticsReport.c();
            this.f14779c = Integer.valueOf(crashlyticsReport.f());
            this.f14780d = crashlyticsReport.d();
            this.f14781e = crashlyticsReport.a();
            this.f14782f = crashlyticsReport.b();
            this.f14783g = crashlyticsReport.h();
            this.f14784h = crashlyticsReport.e();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a a(CrashlyticsReport.d dVar) {
            this.f14783g = dVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport.a a(CrashlyticsReport.c cVar) {
            this.f14784h = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
        public CrashlyticsReport a() {
            String str = "";
            if (this.f14777a == null) {
                str = " sdkVersion";
            }
            if (this.f14778b == null) {
                str = str + " gmpAppId";
            }
            if (this.f14779c == null) {
                str = str + " platform";
            }
            if (this.f14780d == null) {
                str = str + " installationUuid";
            }
            if (this.f14781e == null) {
                str = str + " buildVersion";
            }
            if (this.f14782f == null) {
                str = str + " displayVersion";
            }
            if (str.isEmpty()) {
                return new b(this.f14777a, this.f14778b, this.f14779c.intValue(), this.f14780d, this.f14781e, this.f14782f, this.f14783g, this.f14784h);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @NonNull
    public String a() {
        return this.f14773f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @NonNull
    public String b() {
        return this.f14774g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @NonNull
    public String c() {
        return this.f14770c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @NonNull
    public String d() {
        return this.f14772e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @Nullable
    public CrashlyticsReport.c e() {
        return this.f14776i;
    }

    public boolean equals(Object obj) {
        CrashlyticsReport.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport)) {
            return false;
        }
        CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
        if (this.f14769b.equals(crashlyticsReport.g()) && this.f14770c.equals(crashlyticsReport.c()) && this.f14771d == crashlyticsReport.f() && this.f14772e.equals(crashlyticsReport.d()) && this.f14773f.equals(crashlyticsReport.a()) && this.f14774g.equals(crashlyticsReport.b()) && ((dVar = this.f14775h) != null ? dVar.equals(crashlyticsReport.h()) : crashlyticsReport.h() == null)) {
            CrashlyticsReport.c cVar = this.f14776i;
            if (cVar == null) {
                if (crashlyticsReport.e() == null) {
                    return true;
                }
            } else if (cVar.equals(crashlyticsReport.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public int f() {
        return this.f14771d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @NonNull
    public String g() {
        return this.f14769b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    @Nullable
    public CrashlyticsReport.d h() {
        return this.f14775h;
    }

    public int hashCode() {
        int hashCode = (((((((((((this.f14769b.hashCode() ^ 1000003) * 1000003) ^ this.f14770c.hashCode()) * 1000003) ^ this.f14771d) * 1000003) ^ this.f14772e.hashCode()) * 1000003) ^ this.f14773f.hashCode()) * 1000003) ^ this.f14774g.hashCode()) * 1000003;
        CrashlyticsReport.d dVar = this.f14775h;
        int hashCode2 = (hashCode ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        CrashlyticsReport.c cVar = this.f14776i;
        return hashCode2 ^ (cVar != null ? cVar.hashCode() : 0);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    protected CrashlyticsReport.a j() {
        return new C0134b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f14769b + ", gmpAppId=" + this.f14770c + ", platform=" + this.f14771d + ", installationUuid=" + this.f14772e + ", buildVersion=" + this.f14773f + ", displayVersion=" + this.f14774g + ", session=" + this.f14775h + ", ndkPayload=" + this.f14776i + "}";
    }

    private b(String str, String str2, int i2, String str3, String str4, String str5, @Nullable CrashlyticsReport.d dVar, @Nullable CrashlyticsReport.c cVar) {
        this.f14769b = str;
        this.f14770c = str2;
        this.f14771d = i2;
        this.f14772e = str3;
        this.f14773f = str4;
        this.f14774g = str5;
        this.f14775h = dVar;
        this.f14776i = cVar;
    }
}
