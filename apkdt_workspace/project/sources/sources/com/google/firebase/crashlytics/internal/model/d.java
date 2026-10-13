package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_FilesPayload.java */
/* loaded from: classes.dex */
final class d extends CrashlyticsReport.c {

    /* renamed from: a, reason: collision with root package name */
    private final v<CrashlyticsReport.c.b> f14789a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14790b;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c
    @NonNull
    public v<CrashlyticsReport.c.b> a() {
        return this.f14789a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c
    @Nullable
    public String b() {
        return this.f14790b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.c)) {
            return false;
        }
        CrashlyticsReport.c cVar = (CrashlyticsReport.c) obj;
        if (this.f14789a.equals(cVar.a())) {
            String str = this.f14790b;
            if (str == null) {
                if (cVar.b() == null) {
                    return true;
                }
            } else if (str.equals(cVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.f14789a.hashCode() ^ 1000003) * 1000003;
        String str = this.f14790b;
        return hashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f14789a + ", orgId=" + this.f14790b + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_FilesPayload.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.c.a {

        /* renamed from: a, reason: collision with root package name */
        private v<CrashlyticsReport.c.b> f14791a;

        /* renamed from: b, reason: collision with root package name */
        private String f14792b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.a
        public CrashlyticsReport.c.a a(v<CrashlyticsReport.c.b> vVar) {
            if (vVar != null) {
                this.f14791a = vVar;
                return this;
            }
            throw new NullPointerException("Null files");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.a
        public CrashlyticsReport.c.a a(String str) {
            this.f14792b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.a
        public CrashlyticsReport.c a() {
            String str = "";
            if (this.f14791a == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new d(this.f14791a, this.f14792b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private d(v<CrashlyticsReport.c.b> vVar, @Nullable String str) {
        this.f14789a = vVar;
        this.f14790b = str;
    }
}
