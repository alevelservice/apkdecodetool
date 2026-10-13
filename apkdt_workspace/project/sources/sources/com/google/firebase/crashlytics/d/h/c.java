package com.google.firebase.crashlytics.d.h;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_CrashlyticsReportWithSessionId.java */
/* loaded from: classes.dex */
public final class c extends q {

    /* renamed from: a, reason: collision with root package name */
    private final CrashlyticsReport f14411a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14412b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(CrashlyticsReport crashlyticsReport, String str) {
        if (crashlyticsReport != null) {
            this.f14411a = crashlyticsReport;
            if (str != null) {
                this.f14412b = str;
                return;
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }

    @Override // com.google.firebase.crashlytics.d.h.q
    public CrashlyticsReport a() {
        return this.f14411a;
    }

    @Override // com.google.firebase.crashlytics.d.h.q
    public String b() {
        return this.f14412b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f14411a.equals(qVar.a()) && this.f14412b.equals(qVar.b());
    }

    public int hashCode() {
        return ((this.f14411a.hashCode() ^ 1000003) * 1000003) ^ this.f14412b.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f14411a + ", sessionId=" + this.f14412b + "}";
    }
}
