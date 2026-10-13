package com.google.firebase.installations.r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.r.f;

/* compiled from: AutoValue_TokenResult.java */
/* loaded from: classes.dex */
final class b extends f {

    /* renamed from: a, reason: collision with root package name */
    private final String f15114a;

    /* renamed from: b, reason: collision with root package name */
    private final long f15115b;

    /* renamed from: c, reason: collision with root package name */
    private final f.b f15116c;

    /* compiled from: AutoValue_TokenResult.java */
    /* renamed from: com.google.firebase.installations.r.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0138b extends f.a {

        /* renamed from: a, reason: collision with root package name */
        private String f15117a;

        /* renamed from: b, reason: collision with root package name */
        private Long f15118b;

        /* renamed from: c, reason: collision with root package name */
        private f.b f15119c;

        @Override // com.google.firebase.installations.r.f.a
        public f.a a(String str) {
            this.f15117a = str;
            return this;
        }

        @Override // com.google.firebase.installations.r.f.a
        public f.a a(long j2) {
            this.f15118b = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.installations.r.f.a
        public f.a a(f.b bVar) {
            this.f15119c = bVar;
            return this;
        }

        @Override // com.google.firebase.installations.r.f.a
        public f a() {
            String str = "";
            if (this.f15118b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.f15117a, this.f15118b.longValue(), this.f15119c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.installations.r.f
    @Nullable
    public f.b a() {
        return this.f15116c;
    }

    @Override // com.google.firebase.installations.r.f
    @Nullable
    public String b() {
        return this.f15114a;
    }

    @Override // com.google.firebase.installations.r.f
    @NonNull
    public long c() {
        return this.f15115b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f15114a;
        if (str != null ? str.equals(fVar.b()) : fVar.b() == null) {
            if (this.f15115b == fVar.c()) {
                f.b bVar = this.f15116c;
                if (bVar == null) {
                    if (fVar.a() == null) {
                        return true;
                    }
                } else if (bVar.equals(fVar.a())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f15114a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j2 = this.f15115b;
        int i2 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        f.b bVar = this.f15116c;
        return i2 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.f15114a + ", tokenExpirationTimestamp=" + this.f15115b + ", responseCode=" + this.f15116c + "}";
    }

    private b(@Nullable String str, long j2, @Nullable f.b bVar) {
        this.f15114a = str;
        this.f15115b = j2;
        this.f15116c = bVar;
    }
}
