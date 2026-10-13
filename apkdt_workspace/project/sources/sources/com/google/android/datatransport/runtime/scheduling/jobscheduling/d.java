package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Set;

/* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
/* loaded from: classes.dex */
final class d extends g.b {

    /* renamed from: a, reason: collision with root package name */
    private final long f4398a;

    /* renamed from: b, reason: collision with root package name */
    private final long f4399b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<g.c> f4400c;

    /* compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
    /* loaded from: classes.dex */
    static final class b extends g.b.a {

        /* renamed from: a, reason: collision with root package name */
        private Long f4401a;

        /* renamed from: b, reason: collision with root package name */
        private Long f4402b;

        /* renamed from: c, reason: collision with root package name */
        private Set<g.c> f4403c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b.a a(long j2) {
            this.f4401a = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b.a b(long j2) {
            this.f4402b = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b.a a(Set<g.c> set) {
            if (set != null) {
                this.f4403c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public g.b a() {
            String str = "";
            if (this.f4401a == null) {
                str = " delta";
            }
            if (this.f4402b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f4403c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new d(this.f4401a.longValue(), this.f4402b.longValue(), this.f4403c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    long a() {
        return this.f4398a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    Set<g.c> b() {
        return this.f4400c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    long c() {
        return this.f4399b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g.b)) {
            return false;
        }
        g.b bVar = (g.b) obj;
        return this.f4398a == bVar.a() && this.f4399b == bVar.c() && this.f4400c.equals(bVar.b());
    }

    public int hashCode() {
        long j2 = this.f4398a;
        int i2 = (((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003;
        long j3 = this.f4399b;
        return this.f4400c.hashCode() ^ ((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f4398a + ", maxAllowedDelay=" + this.f4399b + ", flags=" + this.f4400c + "}";
    }

    private d(long j2, long j3, Set<g.c> set) {
        this.f4398a = j2;
        this.f4399b = j3;
        this.f4400c = set;
    }
}
