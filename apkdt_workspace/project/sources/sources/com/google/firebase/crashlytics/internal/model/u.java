package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_User.java */
/* loaded from: classes.dex */
final class u extends CrashlyticsReport.d.f {

    /* renamed from: a, reason: collision with root package name */
    private final String f14940a;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.f
    @NonNull
    public String a() {
        return this.f14940a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.d.f) {
            return this.f14940a.equals(((CrashlyticsReport.d.f) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f14940a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f14940a + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_User.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.f.a {

        /* renamed from: a, reason: collision with root package name */
        private String f14941a;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.f.a
        public CrashlyticsReport.d.f.a a(String str) {
            if (str != null) {
                this.f14941a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.f.a
        public CrashlyticsReport.d.f a() {
            String str = "";
            if (this.f14941a == null) {
                str = " identifier";
            }
            if (str.isEmpty()) {
                return new u(this.f14941a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private u(String str) {
        this.f14940a = str;
    }
}
