package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.java */
/* loaded from: classes.dex */
final class n extends CrashlyticsReport.d.AbstractC0121d.a.b.c {

    /* renamed from: a, reason: collision with root package name */
    private final String f14886a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14887b;

    /* renamed from: c, reason: collision with root package name */
    private final v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> f14888c;

    /* renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.a.b.c f14889d;

    /* renamed from: e, reason: collision with root package name */
    private final int f14890e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a {

        /* renamed from: a, reason: collision with root package name */
        private String f14891a;

        /* renamed from: b, reason: collision with root package name */
        private String f14892b;

        /* renamed from: c, reason: collision with root package name */
        private v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> f14893c;

        /* renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.a.b.c f14894d;

        /* renamed from: e, reason: collision with root package name */
        private Integer f14895e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a
        public CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a a(String str) {
            this.f14892b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a
        public CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a b(String str) {
            if (str != null) {
                this.f14891a = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a
        public CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a a(v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> vVar) {
            if (vVar != null) {
                this.f14893c = vVar;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a
        public CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a a(CrashlyticsReport.d.AbstractC0121d.a.b.c cVar) {
            this.f14894d = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a
        public CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a a(int i2) {
            this.f14895e = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a
        public CrashlyticsReport.d.AbstractC0121d.a.b.c a() {
            String str = "";
            if (this.f14891a == null) {
                str = " type";
            }
            if (this.f14893c == null) {
                str = str + " frames";
            }
            if (this.f14895e == null) {
                str = str + " overflowCount";
            }
            if (str.isEmpty()) {
                return new n(this.f14891a, this.f14892b, this.f14893c, this.f14894d, this.f14895e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c
    @Nullable
    public CrashlyticsReport.d.AbstractC0121d.a.b.c a() {
        return this.f14889d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c
    @NonNull
    public v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> b() {
        return this.f14888c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c
    public int c() {
        return this.f14890e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c
    @Nullable
    public String d() {
        return this.f14887b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.a.b.c
    @NonNull
    public String e() {
        return this.f14886a;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.d.AbstractC0121d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.a.b.c)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b.c cVar2 = (CrashlyticsReport.d.AbstractC0121d.a.b.c) obj;
        return this.f14886a.equals(cVar2.e()) && ((str = this.f14887b) != null ? str.equals(cVar2.d()) : cVar2.d() == null) && this.f14888c.equals(cVar2.b()) && ((cVar = this.f14889d) != null ? cVar.equals(cVar2.a()) : cVar2.a() == null) && this.f14890e == cVar2.c();
    }

    public int hashCode() {
        int hashCode = (this.f14886a.hashCode() ^ 1000003) * 1000003;
        String str = this.f14887b;
        int hashCode2 = (((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f14888c.hashCode()) * 1000003;
        CrashlyticsReport.d.AbstractC0121d.a.b.c cVar = this.f14889d;
        return ((hashCode2 ^ (cVar != null ? cVar.hashCode() : 0)) * 1000003) ^ this.f14890e;
    }

    public String toString() {
        return "Exception{type=" + this.f14886a + ", reason=" + this.f14887b + ", frames=" + this.f14888c + ", causedBy=" + this.f14889d + ", overflowCount=" + this.f14890e + "}";
    }

    private n(String str, @Nullable String str2, v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> vVar, @Nullable CrashlyticsReport.d.AbstractC0121d.a.b.c cVar, int i2) {
        this.f14886a = str;
        this.f14887b = str2;
        this.f14888c = vVar;
        this.f14889d = cVar;
        this.f14890e = i2;
    }
}
