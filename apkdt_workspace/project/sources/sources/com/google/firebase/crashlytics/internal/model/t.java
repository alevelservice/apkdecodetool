package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_OperatingSystem.java */
/* loaded from: classes.dex */
final class t extends CrashlyticsReport.d.e {

    /* renamed from: a, reason: collision with root package name */
    private final int f14932a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14933b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14934c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f14935d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_OperatingSystem.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.e.a {

        /* renamed from: a, reason: collision with root package name */
        private Integer f14936a;

        /* renamed from: b, reason: collision with root package name */
        private String f14937b;

        /* renamed from: c, reason: collision with root package name */
        private String f14938c;

        /* renamed from: d, reason: collision with root package name */
        private Boolean f14939d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e.a
        public CrashlyticsReport.d.e.a a(int i2) {
            this.f14936a = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e.a
        public CrashlyticsReport.d.e.a b(String str) {
            if (str != null) {
                this.f14937b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e.a
        public CrashlyticsReport.d.e.a a(String str) {
            if (str != null) {
                this.f14938c = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e.a
        public CrashlyticsReport.d.e.a a(boolean z) {
            this.f14939d = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e.a
        public CrashlyticsReport.d.e a() {
            String str = "";
            if (this.f14936a == null) {
                str = " platform";
            }
            if (this.f14937b == null) {
                str = str + " version";
            }
            if (this.f14938c == null) {
                str = str + " buildVersion";
            }
            if (this.f14939d == null) {
                str = str + " jailbroken";
            }
            if (str.isEmpty()) {
                return new t(this.f14936a.intValue(), this.f14937b, this.f14938c, this.f14939d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e
    @NonNull
    public String a() {
        return this.f14934c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e
    public int b() {
        return this.f14932a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e
    @NonNull
    public String c() {
        return this.f14933b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.e
    public boolean d() {
        return this.f14935d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.e)) {
            return false;
        }
        CrashlyticsReport.d.e eVar = (CrashlyticsReport.d.e) obj;
        return this.f14932a == eVar.b() && this.f14933b.equals(eVar.c()) && this.f14934c.equals(eVar.a()) && this.f14935d == eVar.d();
    }

    public int hashCode() {
        return ((((((this.f14932a ^ 1000003) * 1000003) ^ this.f14933b.hashCode()) * 1000003) ^ this.f14934c.hashCode()) * 1000003) ^ (this.f14935d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f14932a + ", version=" + this.f14933b + ", buildVersion=" + this.f14934c + ", jailbroken=" + this.f14935d + "}";
    }

    private t(int i2, String str, String str2, boolean z) {
        this.f14932a = i2;
        this.f14933b = str;
        this.f14934c = str2;
        this.f14935d = z;
    }
}
