package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.java */
/* loaded from: classes.dex */
final class q extends CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b {

    /* renamed from: a, reason: collision with root package name */
    private final long f14908a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14909b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14910c;

    /* renamed from: d, reason: collision with root package name */
    private final long f14911d;

    /* renamed from: e, reason: collision with root package name */
    private final int f14912e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a {

        /* renamed from: a, reason: collision with root package name */
        private Long f14913a;

        /* renamed from: b, reason: collision with root package name */
        private String f14914b;

        /* renamed from: c, reason: collision with root package name */
        private String f14915c;

        /* renamed from: d, reason: collision with root package name */
        private Long f14916d;

        /* renamed from: e, reason: collision with root package name */
        private Integer f14917e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a a(String str) {
            this.f14915c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a b(long j2) {
            this.f14913a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a a(long j2) {
            this.f14916d = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a b(String str) {
            if (str != null) {
                this.f14914b = str;
                return this;
            }
            throw new NullPointerException("Null symbol");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a a(int i2) {
            this.f14917e = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a
        public CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b a() {
            String str = "";
            if (this.f14913a == null) {
                str = " pc";
            }
            if (this.f14914b == null) {
                str = str + " symbol";
            }
            if (this.f14916d == null) {
                str = str + " offset";
            }
            if (this.f14917e == null) {
                str = str + " importance";
            }
            if (str.isEmpty()) {
                return new q(this.f14913a.longValue(), this.f14914b, this.f14915c, this.f14916d.longValue(), this.f14917e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b
    @Nullable
    public String a() {
        return this.f14910c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b
    public int b() {
        return this.f14912e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b
    public long c() {
        return this.f14911d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b
    public long d() {
        return this.f14908a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b
    @NonNull
    public String e() {
        return this.f14909b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b abstractC0130b = (CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b) obj;
        return this.f14908a == abstractC0130b.d() && this.f14909b.equals(abstractC0130b.e()) && ((str = this.f14910c) != null ? str.equals(abstractC0130b.a()) : abstractC0130b.a() == null) && this.f14911d == abstractC0130b.c() && this.f14912e == abstractC0130b.b();
    }

    public int hashCode() {
        long j2 = this.f14908a;
        int hashCode = (((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ this.f14909b.hashCode()) * 1000003;
        String str = this.f14910c;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.f14911d;
        return this.f14912e ^ ((hashCode2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "Frame{pc=" + this.f14908a + ", symbol=" + this.f14909b + ", file=" + this.f14910c + ", offset=" + this.f14911d + ", importance=" + this.f14912e + "}";
    }

    private q(long j2, String str, @Nullable String str2, long j3, int i2) {
        this.f14908a = j2;
        this.f14909b = str;
        this.f14910c = str2;
        this.f14911d = j3;
        this.f14912e = i2;
    }
}
