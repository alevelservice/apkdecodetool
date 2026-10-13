package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application.java */
/* loaded from: classes.dex */
final class k extends CrashlyticsReport.d.AbstractC0121d.a {

    /* renamed from: a, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.a.b f14862a;

    /* renamed from: b, reason: collision with root package name */
    private final v<CrashlyticsReport.b> f14863b;

    /* renamed from: c, reason: collision with root package name */
    private final Boolean f14864c;

    /* renamed from: d, reason: collision with root package name */
    private final int f14865d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a {

        /* renamed from: a, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.a.b f14866a;

        /* renamed from: b, reason: collision with root package name */
        private v<CrashlyticsReport.b> f14867b;

        /* renamed from: c, reason: collision with root package name */
        private Boolean f14868c;

        /* renamed from: d, reason: collision with root package name */
        private Integer f14869d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a
        public CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a a(CrashlyticsReport.d.AbstractC0121d.a.b bVar) {
            if (bVar != null) {
                this.f14866a = bVar;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(CrashlyticsReport.d.AbstractC0121d.a aVar) {
            this.f14866a = aVar.c();
            this.f14867b = aVar.b();
            this.f14868c = aVar.a();
            this.f14869d = Integer.valueOf(aVar.d());
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a
        public CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a a(v<CrashlyticsReport.b> vVar) {
            this.f14867b = vVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a
        public CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a a(@Nullable Boolean bool) {
            this.f14868c = bool;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a
        public CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a a(int i2) {
            this.f14869d = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a
        public CrashlyticsReport.d.AbstractC0121d.a a() {
            String str = "";
            if (this.f14866a == null) {
                str = " execution";
            }
            if (this.f14869d == null) {
                str = str + " uiOrientation";
            }
            if (str.isEmpty()) {
                return new k(this.f14866a, this.f14867b, this.f14868c, this.f14869d.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a
    @Nullable
    public Boolean a() {
        return this.f14864c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a
    @Nullable
    public v<CrashlyticsReport.b> b() {
        return this.f14863b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a
    @NonNull
    public CrashlyticsReport.d.AbstractC0121d.a.b c() {
        return this.f14862a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a
    public int d() {
        return this.f14865d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a
    public CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a e() {
        return new b(this);
    }

    public boolean equals(Object obj) {
        v<CrashlyticsReport.b> vVar;
        Boolean bool;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a aVar = (CrashlyticsReport.d.AbstractC0121d.a) obj;
        return this.f14862a.equals(aVar.c()) && ((vVar = this.f14863b) != null ? vVar.equals(aVar.b()) : aVar.b() == null) && ((bool = this.f14864c) != null ? bool.equals(aVar.a()) : aVar.a() == null) && this.f14865d == aVar.d();
    }

    public int hashCode() {
        int hashCode = (this.f14862a.hashCode() ^ 1000003) * 1000003;
        v<CrashlyticsReport.b> vVar = this.f14863b;
        int hashCode2 = (hashCode ^ (vVar == null ? 0 : vVar.hashCode())) * 1000003;
        Boolean bool = this.f14864c;
        return ((hashCode2 ^ (bool != null ? bool.hashCode() : 0)) * 1000003) ^ this.f14865d;
    }

    public String toString() {
        return "Application{execution=" + this.f14862a + ", customAttributes=" + this.f14863b + ", background=" + this.f14864c + ", uiOrientation=" + this.f14865d + "}";
    }

    private k(CrashlyticsReport.d.AbstractC0121d.a.b bVar, @Nullable v<CrashlyticsReport.b> vVar, @Nullable Boolean bool, int i2) {
        this.f14862a = bVar;
        this.f14863b = vVar;
        this.f14864c = bool;
        this.f14865d = i2;
    }
}
