package com.google.firebase.installations.q;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.q.c;
import com.google.firebase.installations.q.d;

/* compiled from: AutoValue_PersistedInstallationEntry.java */
/* loaded from: classes.dex */
final class a extends d {

    /* renamed from: a, reason: collision with root package name */
    private final String f15084a;

    /* renamed from: b, reason: collision with root package name */
    private final c.a f15085b;

    /* renamed from: c, reason: collision with root package name */
    private final String f15086c;

    /* renamed from: d, reason: collision with root package name */
    private final String f15087d;

    /* renamed from: e, reason: collision with root package name */
    private final long f15088e;

    /* renamed from: f, reason: collision with root package name */
    private final long f15089f;

    /* renamed from: g, reason: collision with root package name */
    private final String f15090g;

    /* compiled from: AutoValue_PersistedInstallationEntry.java */
    /* loaded from: classes.dex */
    static final class b extends d.a {

        /* renamed from: a, reason: collision with root package name */
        private String f15091a;

        /* renamed from: b, reason: collision with root package name */
        private c.a f15092b;

        /* renamed from: c, reason: collision with root package name */
        private String f15093c;

        /* renamed from: d, reason: collision with root package name */
        private String f15094d;

        /* renamed from: e, reason: collision with root package name */
        private Long f15095e;

        /* renamed from: f, reason: collision with root package name */
        private Long f15096f;

        /* renamed from: g, reason: collision with root package name */
        private String f15097g;

        @Override // com.google.firebase.installations.q.d.a
        public d.a a(c.a aVar) {
            if (aVar != null) {
                this.f15092b = aVar;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        @Override // com.google.firebase.installations.q.d.a
        public d.a b(String str) {
            this.f15091a = str;
            return this;
        }

        @Override // com.google.firebase.installations.q.d.a
        public d.a c(@Nullable String str) {
            this.f15097g = str;
            return this;
        }

        @Override // com.google.firebase.installations.q.d.a
        public d.a d(@Nullable String str) {
            this.f15094d = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // com.google.firebase.installations.q.d.a
        public d.a b(long j2) {
            this.f15096f = Long.valueOf(j2);
            return this;
        }

        private b(d dVar) {
            this.f15091a = dVar.c();
            this.f15092b = dVar.f();
            this.f15093c = dVar.a();
            this.f15094d = dVar.e();
            this.f15095e = Long.valueOf(dVar.b());
            this.f15096f = Long.valueOf(dVar.g());
            this.f15097g = dVar.d();
        }

        @Override // com.google.firebase.installations.q.d.a
        public d.a a(@Nullable String str) {
            this.f15093c = str;
            return this;
        }

        @Override // com.google.firebase.installations.q.d.a
        public d.a a(long j2) {
            this.f15095e = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.installations.q.d.a
        public d a() {
            String str = "";
            if (this.f15092b == null) {
                str = " registrationStatus";
            }
            if (this.f15095e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f15096f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.f15091a, this.f15092b, this.f15093c, this.f15094d, this.f15095e.longValue(), this.f15096f.longValue(), this.f15097g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    @Override // com.google.firebase.installations.q.d
    @Nullable
    public String a() {
        return this.f15086c;
    }

    @Override // com.google.firebase.installations.q.d
    public long b() {
        return this.f15088e;
    }

    @Override // com.google.firebase.installations.q.d
    @Nullable
    public String c() {
        return this.f15084a;
    }

    @Override // com.google.firebase.installations.q.d
    @Nullable
    public String d() {
        return this.f15090g;
    }

    @Override // com.google.firebase.installations.q.d
    @Nullable
    public String e() {
        return this.f15087d;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str3 = this.f15084a;
        if (str3 != null ? str3.equals(dVar.c()) : dVar.c() == null) {
            if (this.f15085b.equals(dVar.f()) && ((str = this.f15086c) != null ? str.equals(dVar.a()) : dVar.a() == null) && ((str2 = this.f15087d) != null ? str2.equals(dVar.e()) : dVar.e() == null) && this.f15088e == dVar.b() && this.f15089f == dVar.g()) {
                String str4 = this.f15090g;
                if (str4 == null) {
                    if (dVar.d() == null) {
                        return true;
                    }
                } else if (str4.equals(dVar.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.q.d
    @NonNull
    public c.a f() {
        return this.f15085b;
    }

    @Override // com.google.firebase.installations.q.d
    public long g() {
        return this.f15089f;
    }

    public int hashCode() {
        String str = this.f15084a;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f15085b.hashCode()) * 1000003;
        String str2 = this.f15086c;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f15087d;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j2 = this.f15088e;
        int i2 = (hashCode3 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f15089f;
        int i3 = (i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        String str4 = this.f15090g;
        return i3 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.q.d
    public d.a m() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f15084a + ", registrationStatus=" + this.f15085b + ", authToken=" + this.f15086c + ", refreshToken=" + this.f15087d + ", expiresInSecs=" + this.f15088e + ", tokenCreationEpochInSecs=" + this.f15089f + ", fisError=" + this.f15090g + "}";
    }

    private a(@Nullable String str, c.a aVar, @Nullable String str2, @Nullable String str3, long j2, long j3, @Nullable String str4) {
        this.f15084a = str;
        this.f15085b = aVar;
        this.f15086c = str2;
        this.f15087d = str3;
        this.f15088e = j2;
        this.f15089f = j3;
        this.f15090g = str4;
    }
}
