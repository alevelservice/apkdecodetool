package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_CustomAttribute.java */
/* loaded from: classes.dex */
final class c extends CrashlyticsReport.b {

    /* renamed from: a, reason: collision with root package name */
    private final String f14785a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14786b;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
    @NonNull
    public String a() {
        return this.f14785a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
    @NonNull
    public String b() {
        return this.f14786b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.b)) {
            return false;
        }
        CrashlyticsReport.b bVar = (CrashlyticsReport.b) obj;
        return this.f14785a.equals(bVar.a()) && this.f14786b.equals(bVar.b());
    }

    public int hashCode() {
        return ((this.f14785a.hashCode() ^ 1000003) * 1000003) ^ this.f14786b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f14785a + ", value=" + this.f14786b + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_CustomAttribute.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.b.a {

        /* renamed from: a, reason: collision with root package name */
        private String f14787a;

        /* renamed from: b, reason: collision with root package name */
        private String f14788b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b.a
        public CrashlyticsReport.b.a a(String str) {
            if (str != null) {
                this.f14787a = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b.a
        public CrashlyticsReport.b.a b(String str) {
            if (str != null) {
                this.f14788b = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b.a
        public CrashlyticsReport.b a() {
            String str = "";
            if (this.f14787a == null) {
                str = " key";
            }
            if (this.f14788b == null) {
                str = str + " value";
            }
            if (str.isEmpty()) {
                return new c(this.f14787a, this.f14788b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private c(String str, String str2) {
        this.f14785a = str;
        this.f14786b = str2;
    }
}
