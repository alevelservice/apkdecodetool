package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.java */
/* loaded from: classes.dex */
final class p extends CrashlyticsReport.d.AbstractC0121d.a.b.e {

    /* renamed from: a, reason: collision with root package name */
    private final String f14902a;

    /* renamed from: b, reason: collision with root package name */
    private final int f14903b;

    /* renamed from: c, reason: collision with root package name */
    private final v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> f14904c;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e
    @NonNull
    public v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> a() {
        return this.f14904c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e
    public int b() {
        return this.f14903b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e
    @NonNull
    public String c() {
        return this.f14902a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a.b.e)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b.e eVar = (CrashlyticsReport.d.AbstractC0121d.a.b.e) obj;
        return this.f14902a.equals(eVar.c()) && this.f14903b == eVar.b() && this.f14904c.equals(eVar.a());
    }

    public int hashCode() {
        return ((((this.f14902a.hashCode() ^ 1000003) * 1000003) ^ this.f14903b) * 1000003) ^ this.f14904c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f14902a + ", importance=" + this.f14903b + ", frames=" + this.f14904c + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a {

        /* renamed from: a, reason: collision with root package name */
        private String f14905a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f14906b;

        /* renamed from: c, reason: collision with root package name */
        private v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> f14907c;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a a(String str) {
            if (str != null) {
                this.f14905a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a a(int i2) {
            this.f14906b = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a a(v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> vVar) {
            if (vVar != null) {
                this.f14907c = vVar;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e a() {
            String str = "";
            if (this.f14905a == null) {
                str = " name";
            }
            if (this.f14906b == null) {
                str = str + " importance";
            }
            if (this.f14907c == null) {
                str = str + " frames";
            }
            if (str.isEmpty()) {
                return new p(this.f14905a, this.f14906b.intValue(), this.f14907c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private p(String str, int i2, v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> vVar) {
        this.f14902a = str;
        this.f14903b = i2;
        this.f14904c = vVar;
    }
}
