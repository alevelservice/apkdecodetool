package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event.java */
/* loaded from: classes.dex */
final class j extends CrashlyticsReport.d.AbstractC0121d {

    /* renamed from: a, reason: collision with root package name */
    private final long f14852a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14853b;

    /* renamed from: c, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.a f14854c;

    /* renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.c f14855d;

    /* renamed from: e, reason: collision with root package name */
    private final CrashlyticsReport.d.AbstractC0121d.AbstractC0132d f14856e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.b {

        /* renamed from: a, reason: collision with root package name */
        private Long f14857a;

        /* renamed from: b, reason: collision with root package name */
        private String f14858b;

        /* renamed from: c, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.a f14859c;

        /* renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.c f14860d;

        /* renamed from: e, reason: collision with root package name */
        private CrashlyticsReport.d.AbstractC0121d.AbstractC0132d f14861e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.b
        public CrashlyticsReport.d.AbstractC0121d.b a(long j2) {
            this.f14857a = Long.valueOf(j2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.b
        public CrashlyticsReport.d.AbstractC0121d.b a(String str) {
            if (str != null) {
                this.f14858b = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        private b(CrashlyticsReport.d.AbstractC0121d abstractC0121d) {
            this.f14857a = Long.valueOf(abstractC0121d.d());
            this.f14858b = abstractC0121d.e();
            this.f14859c = abstractC0121d.a();
            this.f14860d = abstractC0121d.b();
            this.f14861e = abstractC0121d.c();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.b
        public CrashlyticsReport.d.AbstractC0121d.b a(CrashlyticsReport.d.AbstractC0121d.a aVar) {
            if (aVar != null) {
                this.f14859c = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.b
        public CrashlyticsReport.d.AbstractC0121d.b a(CrashlyticsReport.d.AbstractC0121d.c cVar) {
            if (cVar != null) {
                this.f14860d = cVar;
                return this;
            }
            throw new NullPointerException("Null device");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.b
        public CrashlyticsReport.d.AbstractC0121d.b a(CrashlyticsReport.d.AbstractC0121d.AbstractC0132d abstractC0132d) {
            this.f14861e = abstractC0132d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.b
        public CrashlyticsReport.d.AbstractC0121d a() {
            String str = "";
            if (this.f14857a == null) {
                str = " timestamp";
            }
            if (this.f14858b == null) {
                str = str + " type";
            }
            if (this.f14859c == null) {
                str = str + " app";
            }
            if (this.f14860d == null) {
                str = str + " device";
            }
            if (str.isEmpty()) {
                return new j(this.f14857a.longValue(), this.f14858b, this.f14859c, this.f14860d, this.f14861e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d
    @NonNull
    public CrashlyticsReport.d.AbstractC0121d.a a() {
        return this.f14854c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d
    @NonNull
    public CrashlyticsReport.d.AbstractC0121d.c b() {
        return this.f14855d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d
    @Nullable
    public CrashlyticsReport.d.AbstractC0121d.AbstractC0132d c() {
        return this.f14856e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d
    public long d() {
        return this.f14852a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d
    @NonNull
    public String e() {
        return this.f14853b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d abstractC0121d = (CrashlyticsReport.d.AbstractC0121d) obj;
        if (this.f14852a == abstractC0121d.d() && this.f14853b.equals(abstractC0121d.e()) && this.f14854c.equals(abstractC0121d.a()) && this.f14855d.equals(abstractC0121d.b())) {
            CrashlyticsReport.d.AbstractC0121d.AbstractC0132d abstractC0132d = this.f14856e;
            if (abstractC0132d == null) {
                if (abstractC0121d.c() == null) {
                    return true;
                }
            } else if (abstractC0132d.equals(abstractC0121d.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d
    public CrashlyticsReport.d.AbstractC0121d.b f() {
        return new b(this);
    }

    public int hashCode() {
        long j2 = this.f14852a;
        int hashCode = (((((((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ this.f14853b.hashCode()) * 1000003) ^ this.f14854c.hashCode()) * 1000003) ^ this.f14855d.hashCode()) * 1000003;
        CrashlyticsReport.d.AbstractC0121d.AbstractC0132d abstractC0132d = this.f14856e;
        return (abstractC0132d == null ? 0 : abstractC0132d.hashCode()) ^ hashCode;
    }

    public String toString() {
        return "Event{timestamp=" + this.f14852a + ", type=" + this.f14853b + ", app=" + this.f14854c + ", device=" + this.f14855d + ", log=" + this.f14856e + "}";
    }

    private j(long j2, String str, CrashlyticsReport.d.AbstractC0121d.a aVar, CrashlyticsReport.d.AbstractC0121d.c cVar, @Nullable CrashlyticsReport.d.AbstractC0121d.AbstractC0132d abstractC0132d) {
        this.f14852a = j2;
        this.f14853b = str;
        this.f14854c = aVar;
        this.f14855d = cVar;
        this.f14856e = abstractC0132d;
    }
}
