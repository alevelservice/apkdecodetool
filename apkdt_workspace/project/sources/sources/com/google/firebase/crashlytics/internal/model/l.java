package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java */
/* loaded from: classes.dex */
final class l extends CrashlyticsReport.d.AbstractC0121d.a.b {

    /* renamed from: a, reason: collision with root package name */
    private final v<CrashlyticsReport.d.AbstractC0121d.a.b.e> f14870a;

    /* renamed from: b, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.a.b.c f14871b;

    /* renamed from: c, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d f14872c;

    /* renamed from: d, reason: collision with root package name */
    private final v<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> f14873d;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b
    @NonNull
    public v<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> a() {
        return this.f14873d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b
    @NonNull
    public CrashlyticsReport.d.AbstractC0121d.a.b.c b() {
        return this.f14871b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b
    @NonNull
    public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d c() {
        return this.f14872c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b
    @NonNull
    public v<CrashlyticsReport.d.AbstractC0121d.a.b.e> d() {
        return this.f14870a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a.b)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b bVar = (CrashlyticsReport.d.AbstractC0121d.a.b) obj;
        return this.f14870a.equals(bVar.d()) && this.f14871b.equals(bVar.b()) && this.f14872c.equals(bVar.c()) && this.f14873d.equals(bVar.a());
    }

    public int hashCode() {
        return ((((((this.f14870a.hashCode() ^ 1000003) * 1000003) ^ this.f14871b.hashCode()) * 1000003) ^ this.f14872c.hashCode()) * 1000003) ^ this.f14873d.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f14870a + ", exception=" + this.f14871b + ", signal=" + this.f14872c + ", binaries=" + this.f14873d + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b {

        /* renamed from: a, reason: collision with root package name */
        private v<CrashlyticsReport.d.AbstractC0121d.a.b.e> f14874a;

        /* renamed from: b, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.a.b.c f14875b;

        /* renamed from: c, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d f14876c;

        /* renamed from: d, reason: collision with root package name */
        private v<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> f14877d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b a(CrashlyticsReport.d.AbstractC0121d.a.b.c cVar) {
            if (cVar != null) {
                this.f14875b = cVar;
                return this;
            }
            throw new NullPointerException("Null exception");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b b(v<CrashlyticsReport.d.AbstractC0121d.a.b.e> vVar) {
            if (vVar != null) {
                this.f14874a = vVar;
                return this;
            }
            throw new NullPointerException("Null threads");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b a(CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d abstractC0127d) {
            if (abstractC0127d != null) {
                this.f14876c = abstractC0127d;
                return this;
            }
            throw new NullPointerException("Null signal");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b a(v<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> vVar) {
            if (vVar != null) {
                this.f14877d = vVar;
                return this;
            }
            throw new NullPointerException("Null binaries");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b
        public CrashlyticsReport.d.AbstractC0121d.a.b a() {
            String str = "";
            if (this.f14874a == null) {
                str = " threads";
            }
            if (this.f14875b == null) {
                str = str + " exception";
            }
            if (this.f14876c == null) {
                str = str + " signal";
            }
            if (this.f14877d == null) {
                str = str + " binaries";
            }
            if (str.isEmpty()) {
                return new l(this.f14874a, this.f14875b, this.f14876c, this.f14877d);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private l(v<CrashlyticsReport.d.AbstractC0121d.a.b.e> vVar, CrashlyticsReport.d.AbstractC0121d.a.b.c cVar, CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d abstractC0127d, v<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> vVar2) {
        this.f14870a = vVar;
        this.f14871b = cVar;
        this.f14872c = abstractC0127d;
        this.f14873d = vVar2;
    }
}
