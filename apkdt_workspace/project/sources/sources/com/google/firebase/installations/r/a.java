package com.google.firebase.installations.r;

import androidx.annotation.Nullable;
import com.google.firebase.installations.r.d;

/* compiled from: AutoValue_InstallationResponse.java */
/* loaded from: classes.dex */
final class a extends d {

    /* renamed from: a, reason: collision with root package name */
    private final String f15104a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15105b;

    /* renamed from: c, reason: collision with root package name */
    private final String f15106c;

    /* renamed from: d, reason: collision with root package name */
    private final f f15107d;

    /* renamed from: e, reason: collision with root package name */
    private final d.b f15108e;

    /* compiled from: AutoValue_InstallationResponse.java */
    /* loaded from: classes.dex */
    static final class b extends d.a {

        /* renamed from: a, reason: collision with root package name */
        private String f15109a;

        /* renamed from: b, reason: collision with root package name */
        private String f15110b;

        /* renamed from: c, reason: collision with root package name */
        private String f15111c;

        /* renamed from: d, reason: collision with root package name */
        private f f15112d;

        /* renamed from: e, reason: collision with root package name */
        private d.b f15113e;

        @Override // com.google.firebase.installations.r.d.a
        public d.a a(String str) {
            this.f15110b = str;
            return this;
        }

        @Override // com.google.firebase.installations.r.d.a
        public d.a b(String str) {
            this.f15111c = str;
            return this;
        }

        @Override // com.google.firebase.installations.r.d.a
        public d.a c(String str) {
            this.f15109a = str;
            return this;
        }

        @Override // com.google.firebase.installations.r.d.a
        public d.a a(f fVar) {
            this.f15112d = fVar;
            return this;
        }

        @Override // com.google.firebase.installations.r.d.a
        public d.a a(d.b bVar) {
            this.f15113e = bVar;
            return this;
        }

        @Override // com.google.firebase.installations.r.d.a
        public d a() {
            return new a(this.f15109a, this.f15110b, this.f15111c, this.f15112d, this.f15113e);
        }
    }

    @Override // com.google.firebase.installations.r.d
    @Nullable
    public f a() {
        return this.f15107d;
    }

    @Override // com.google.firebase.installations.r.d
    @Nullable
    public String b() {
        return this.f15105b;
    }

    @Override // com.google.firebase.installations.r.d
    @Nullable
    public String c() {
        return this.f15106c;
    }

    @Override // com.google.firebase.installations.r.d
    @Nullable
    public d.b d() {
        return this.f15108e;
    }

    @Override // com.google.firebase.installations.r.d
    @Nullable
    public String e() {
        return this.f15104a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f15104a;
        if (str != null ? str.equals(dVar.e()) : dVar.e() == null) {
            String str2 = this.f15105b;
            if (str2 != null ? str2.equals(dVar.b()) : dVar.b() == null) {
                String str3 = this.f15106c;
                if (str3 != null ? str3.equals(dVar.c()) : dVar.c() == null) {
                    f fVar = this.f15107d;
                    if (fVar != null ? fVar.equals(dVar.a()) : dVar.a() == null) {
                        d.b bVar = this.f15108e;
                        if (bVar == null) {
                            if (dVar.d() == null) {
                                return true;
                            }
                        } else if (bVar.equals(dVar.d())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f15104a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f15105b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f15106c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        f fVar = this.f15107d;
        int hashCode4 = (hashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        d.b bVar = this.f15108e;
        return hashCode4 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f15104a + ", fid=" + this.f15105b + ", refreshToken=" + this.f15106c + ", authToken=" + this.f15107d + ", responseCode=" + this.f15108e + "}";
    }

    private a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable f fVar, @Nullable d.b bVar) {
        this.f15104a = str;
        this.f15105b = str2;
        this.f15106c = str3;
        this.f15107d = fVar;
        this.f15108e = bVar;
    }
}
