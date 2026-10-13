package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Map;

/* compiled from: AutoValue_SchedulerConfig.java */
/* loaded from: classes.dex */
final class c extends g {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4396a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<e.i.b.a.d, g.b> f4397b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.google.android.datatransport.runtime.time.a aVar, Map<e.i.b.a.d, g.b> map) {
        if (aVar != null) {
            this.f4396a = aVar;
            if (map != null) {
                this.f4397b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g
    com.google.android.datatransport.runtime.time.a a() {
        return this.f4396a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g
    Map<e.i.b.a.d, g.b> b() {
        return this.f4397b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f4396a.equals(gVar.a()) && this.f4397b.equals(gVar.b());
    }

    public int hashCode() {
        return ((this.f4396a.hashCode() ^ 1000003) * 1000003) ^ this.f4397b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f4396a + ", values=" + this.f4397b + "}";
    }
}
