package com.google.android.datatransport.cct.f;

/* compiled from: AutoValue_LogResponse.java */
/* loaded from: classes.dex */
final class h extends n {

    /* renamed from: a, reason: collision with root package name */
    private final long f4350a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(long j2) {
        this.f4350a = j2;
    }

    @Override // com.google.android.datatransport.cct.f.n
    public long a() {
        return this.f4350a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.f4350a == ((n) obj).a();
    }

    public int hashCode() {
        long j2 = this.f4350a;
        return 1000003 ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f4350a + "}";
    }
}
