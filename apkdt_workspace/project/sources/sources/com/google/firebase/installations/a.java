package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.installations.l;

/* compiled from: AutoValue_InstallationTokenResult.java */
/* loaded from: classes.dex */
final class a extends l {

    /* renamed from: a, reason: collision with root package name */
    private final String f15045a;

    /* renamed from: b, reason: collision with root package name */
    private final long f15046b;

    /* renamed from: c, reason: collision with root package name */
    private final long f15047c;

    @Override // com.google.firebase.installations.l
    @NonNull
    public String a() {
        return this.f15045a;
    }

    @Override // com.google.firebase.installations.l
    @NonNull
    public long b() {
        return this.f15047c;
    }

    @Override // com.google.firebase.installations.l
    @NonNull
    public long c() {
        return this.f15046b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f15045a.equals(lVar.a()) && this.f15046b == lVar.c() && this.f15047c == lVar.b();
    }

    public int hashCode() {
        int hashCode = (this.f15045a.hashCode() ^ 1000003) * 1000003;
        long j2 = this.f15046b;
        long j3 = this.f15047c;
        return ((hashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f15045a + ", tokenExpirationTimestamp=" + this.f15046b + ", tokenCreationTimestamp=" + this.f15047c + "}";
    }

    /* compiled from: AutoValue_InstallationTokenResult.java */
    /* loaded from: classes.dex */
    static final class b extends l.a {

        /* renamed from: a, reason: collision with root package name */
        private String f15048a;

        /* renamed from: b, reason: collision with root package name */
        private Long f15049b;

        /* renamed from: c, reason: collision with root package name */
        private Long f15050c;

        @Override // com.google.firebase.installations.l.a
        public l.a a(String str) {
            if (str != null) {
                this.f15048a = str;
                return this;
            }
            throw new NullPointerException("Null token");
        }

        @Override // com.google.firebase.installations.l.a
        public l.a b(long j2) {
            this.f15049b = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.installations.l.a
        public l.a a(long j2) {
            this.f15050c = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.firebase.installations.l.a
        public l a() {
            String str = "";
            if (this.f15048a == null) {
                str = " token";
            }
            if (this.f15049b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f15050c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.f15048a, this.f15049b.longValue(), this.f15050c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private a(String str, long j2, long j3) {
        this.f15045a = str;
        this.f15046b = j2;
        this.f15047c = j3;
    }
}
