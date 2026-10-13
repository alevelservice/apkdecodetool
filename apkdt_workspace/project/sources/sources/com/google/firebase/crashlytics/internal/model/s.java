package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Log.java */
/* loaded from: classes.dex */
final class s extends CrashlyticsReport.d.AbstractC0121d.AbstractC0132d {

    /* renamed from: a, reason: collision with root package name */
    private final String f14930a;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.AbstractC0132d
    @NonNull
    public String a() {
        return this.f14930a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.d.AbstractC0121d.AbstractC0132d) {
            return this.f14930a.equals(((CrashlyticsReport.d.AbstractC0121d.AbstractC0132d) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f14930a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f14930a + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Log.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.a {

        /* renamed from: a, reason: collision with root package name */
        private String f14931a;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.a
        public CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.a a(String str) {
            if (str != null) {
                this.f14931a = str;
                return this;
            }
            throw new NullPointerException("Null content");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.a
        public CrashlyticsReport.d.AbstractC0121d.AbstractC0132d a() {
            String str = "";
            if (this.f14931a == null) {
                str = " content";
            }
            if (str.isEmpty()) {
                return new s(this.f14931a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private s(String str) {
        this.f14930a = str;
    }
}
