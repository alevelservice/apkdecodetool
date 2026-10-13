package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.encoders.annotations.Encodable;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.java */
/* loaded from: classes.dex */
final class m extends CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a {

    /* renamed from: a, reason: collision with root package name */
    private final long f14878a;

    /* renamed from: b, reason: collision with root package name */
    private final long f14879b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14880c;

    /* renamed from: d, reason: collision with root package name */
    private final String f14881d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a {

        /* renamed from: a, reason: collision with root package name */
        private Long f14882a;

        /* renamed from: b, reason: collision with root package name */
        private Long f14883b;

        /* renamed from: c, reason: collision with root package name */
        private String f14884c;

        /* renamed from: d, reason: collision with root package name */
        private String f14885d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a a(long j2) {
            this.f14882a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a b(long j2) {
            this.f14883b = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a a(String str) {
            if (str != null) {
                this.f14884c = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a b(@Nullable String str) {
            this.f14885d = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a
        public CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a a() {
            String str = "";
            if (this.f14882a == null) {
                str = " baseAddress";
            }
            if (this.f14883b == null) {
                str = str + " size";
            }
            if (this.f14884c == null) {
                str = str + " name";
            }
            if (str.isEmpty()) {
                return new m(this.f14882a.longValue(), this.f14883b.longValue(), this.f14884c, this.f14885d);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a
    @NonNull
    public long a() {
        return this.f14878a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a
    @NonNull
    public String b() {
        return this.f14880c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a
    public long c() {
        return this.f14879b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a
    @Nullable
    @Encodable.Ignore
    public String d() {
        return this.f14881d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a abstractC0123a = (CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a) obj;
        if (this.f14878a == abstractC0123a.a() && this.f14879b == abstractC0123a.c() && this.f14880c.equals(abstractC0123a.b())) {
            String str = this.f14881d;
            if (str == null) {
                if (abstractC0123a.d() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0123a.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j2 = this.f14878a;
        long j3 = this.f14879b;
        int hashCode = (((((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ this.f14880c.hashCode()) * 1000003;
        String str = this.f14881d;
        return (str == null ? 0 : str.hashCode()) ^ hashCode;
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f14878a + ", size=" + this.f14879b + ", name=" + this.f14880c + ", uuid=" + this.f14881d + "}";
    }

    private m(long j2, long j3, String str, @Nullable String str2) {
        this.f14878a = j2;
        this.f14879b = j3;
        this.f14880c = str;
        this.f14881d = str2;
    }
}
