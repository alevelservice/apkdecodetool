package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Device.java */
/* loaded from: classes.dex */
final class r extends CrashlyticsReport.d.AbstractC0121d.c {

    /* renamed from: a, reason: collision with root package name */
    private final Double f14918a;

    /* renamed from: b, reason: collision with root package name */
    private final int f14919b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f14920c;

    /* renamed from: d, reason: collision with root package name */
    private final int f14921d;

    /* renamed from: e, reason: collision with root package name */
    private final long f14922e;

    /* renamed from: f, reason: collision with root package name */
    private final long f14923f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Device.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.d.AbstractC0121d.c.a {

        /* renamed from: a, reason: collision with root package name */
        private Double f14924a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f14925b;

        /* renamed from: c, reason: collision with root package name */
        private Boolean f14926c;

        /* renamed from: d, reason: collision with root package name */
        private Integer f14927d;

        /* renamed from: e, reason: collision with root package name */
        private Long f14928e;

        /* renamed from: f, reason: collision with root package name */
        private Long f14929f;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c.a a(Double d2) {
            this.f14924a = d2;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c.a b(int i2) {
            this.f14927d = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c.a a(int i2) {
            this.f14925b = Integer.valueOf(i2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c.a b(long j2) {
            this.f14928e = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c.a a(boolean z) {
            this.f14926c = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c.a a(long j2) {
            this.f14929f = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c.a
        public CrashlyticsReport.d.AbstractC0121d.c a() {
            String str = "";
            if (this.f14925b == null) {
                str = " batteryVelocity";
            }
            if (this.f14926c == null) {
                str = str + " proximityOn";
            }
            if (this.f14927d == null) {
                str = str + " orientation";
            }
            if (this.f14928e == null) {
                str = str + " ramUsed";
            }
            if (this.f14929f == null) {
                str = str + " diskUsed";
            }
            if (str.isEmpty()) {
                return new r(this.f14924a, this.f14925b.intValue(), this.f14926c.booleanValue(), this.f14927d.intValue(), this.f14928e.longValue(), this.f14929f.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c
    @Nullable
    public Double a() {
        return this.f14918a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c
    public int b() {
        return this.f14919b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c
    public long c() {
        return this.f14923f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c
    public int d() {
        return this.f14921d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c
    public long e() {
        return this.f14922e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.AbstractC0121d.c)) {
            return false;
        }
        CrashlyticsReport.d.AbstractC0121d.c cVar = (CrashlyticsReport.d.AbstractC0121d.c) obj;
        Double d2 = this.f14918a;
        if (d2 != null ? d2.equals(cVar.a()) : cVar.a() == null) {
            if (this.f14919b == cVar.b() && this.f14920c == cVar.f() && this.f14921d == cVar.d() && this.f14922e == cVar.e() && this.f14923f == cVar.c()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.AbstractC0121d.c
    public boolean f() {
        return this.f14920c;
    }

    public int hashCode() {
        Double d2 = this.f14918a;
        int hashCode = ((((((((d2 == null ? 0 : d2.hashCode()) ^ 1000003) * 1000003) ^ this.f14919b) * 1000003) ^ (this.f14920c ? 1231 : 1237)) * 1000003) ^ this.f14921d) * 1000003;
        long j2 = this.f14922e;
        long j3 = this.f14923f;
        return ((hashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f14918a + ", batteryVelocity=" + this.f14919b + ", proximityOn=" + this.f14920c + ", orientation=" + this.f14921d + ", ramUsed=" + this.f14922e + ", diskUsed=" + this.f14923f + "}";
    }

    private r(@Nullable Double d2, int i2, boolean z, int i3, long j2, long j3) {
        this.f14918a = d2;
        this.f14919b = i2;
        this.f14920c = z;
        this.f14921d = i3;
        this.f14922e = j2;
        this.f14923f = j3;
    }
}
