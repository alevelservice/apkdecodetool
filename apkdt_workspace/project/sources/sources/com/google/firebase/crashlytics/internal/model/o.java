package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.java */
/* loaded from: classes.dex */
final class o extends CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d {

    /* renamed from: a, reason: collision with root package name */
    private final String f14896a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14897b;

    /* renamed from: c, reason: collision with root package name */
    private final long f14898c;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d
    @NonNull
    public long a() {
        return this.f14898c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d
    @NonNull
    public String b() {
        return this.f14897b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d
    @NonNull
    public String c() {
        return this.f14896a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d abstractC0127d = (CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d) obj;
        return this.f14896a.equals(abstractC0127d.c()) && this.f14897b.equals(abstractC0127d.b()) && this.f14898c == abstractC0127d.a();
    }

    public int hashCode() {
        int hashCode = (((this.f14896a.hashCode() ^ 1000003) * 1000003) ^ this.f14897b.hashCode()) * 1000003;
        long j2 = this.f14898c;
        return hashCode ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f14896a + ", code=" + this.f14897b + ", address=" + this.f14898c + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a {

        /* renamed from: a, reason: collision with root package name */
        private String f14899a;

        /* renamed from: b, reason: collision with root package name */
        private String f14900b;

        /* renamed from: c, reason: collision with root package name */
        private Long f14901c;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a a(String str) {
            if (str != null) {
                this.f14900b = str;
                return this;
            }
            throw new NullPointerException("Null code");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a b(String str) {
            if (str != null) {
                this.f14899a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a a(long j2) {
            this.f14901c = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d a() {
            String str = "";
            if (this.f14899a == null) {
                str = " name";
            }
            if (this.f14900b == null) {
                str = str + " code";
            }
            if (this.f14901c == null) {
                str = str + " address";
            }
            if (str.isEmpty()) {
                return new o(this.f14899a, this.f14900b, this.f14901c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private o(String str, String str2, long j2) {
        this.f14896a = str;
        this.f14897b = str2;
        this.f14898c = j2;
    }
}
