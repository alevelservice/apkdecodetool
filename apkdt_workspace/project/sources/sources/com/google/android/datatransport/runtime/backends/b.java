package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.h;

/* compiled from: AutoValue_BackendResponse.java */
/* loaded from: classes.dex */
final class b extends h {

    /* renamed from: a, reason: collision with root package name */
    private final h.a f4366a;

    /* renamed from: b, reason: collision with root package name */
    private final long f4367b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(h.a aVar, long j2) {
        if (aVar != null) {
            this.f4366a = aVar;
            this.f4367b = j2;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public long a() {
        return this.f4367b;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public h.a b() {
        return this.f4366a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f4366a.equals(hVar.b()) && this.f4367b == hVar.a();
    }

    public int hashCode() {
        int hashCode = (this.f4366a.hashCode() ^ 1000003) * 1000003;
        long j2 = this.f4367b;
        return hashCode ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f4366a + ", nextRequestWaitMillis=" + this.f4367b + "}";
    }
}
