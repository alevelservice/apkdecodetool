package com.google.android.datatransport.cct.f;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.k;

/* compiled from: AutoValue_ClientInfo.java */
/* loaded from: classes.dex */
final class e extends k {

    /* renamed from: a, reason: collision with root package name */
    private final k.b f4318a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.cct.f.a f4319b;

    /* compiled from: AutoValue_ClientInfo.java */
    /* loaded from: classes.dex */
    static final class b extends k.a {

        /* renamed from: a, reason: collision with root package name */
        private k.b f4320a;

        /* renamed from: b, reason: collision with root package name */
        private com.google.android.datatransport.cct.f.a f4321b;

        @Override // com.google.android.datatransport.cct.f.k.a
        public k.a a(@Nullable k.b bVar) {
            this.f4320a = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.k.a
        public k.a a(@Nullable com.google.android.datatransport.cct.f.a aVar) {
            this.f4321b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.k.a
        public k a() {
            return new e(this.f4320a, this.f4321b);
        }
    }

    @Override // com.google.android.datatransport.cct.f.k
    @Nullable
    public com.google.android.datatransport.cct.f.a a() {
        return this.f4319b;
    }

    @Override // com.google.android.datatransport.cct.f.k
    @Nullable
    public k.b b() {
        return this.f4318a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.b bVar = this.f4318a;
        if (bVar != null ? bVar.equals(kVar.b()) : kVar.b() == null) {
            com.google.android.datatransport.cct.f.a aVar = this.f4319b;
            if (aVar == null) {
                if (kVar.a() == null) {
                    return true;
                }
            } else if (aVar.equals(kVar.a())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        k.b bVar = this.f4318a;
        int hashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.f.a aVar = this.f4319b;
        return hashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f4318a + ", androidClientInfo=" + this.f4319b + "}";
    }

    private e(@Nullable k.b bVar, @Nullable com.google.android.datatransport.cct.f.a aVar) {
        this.f4318a = bVar;
        this.f4319b = aVar;
    }
}
