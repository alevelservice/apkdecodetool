package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Application_Organization.java */
/* loaded from: classes.dex */
final class h extends CrashlyticsReport.d.a.b {

    /* renamed from: a, reason: collision with root package name */
    private final String f14833a;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a.b
    @NonNull
    public String a() {
        return this.f14833a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.d.a.b) {
            return this.f14833a.equals(((CrashlyticsReport.d.a.b) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f14833a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.f14833a + "}";
    }
}
