package com.google.android.datatransport.cct.f;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.f.o;

/* compiled from: AutoValue_NetworkConnectionInfo.java */
/* loaded from: classes.dex */
final class i extends o {

    /* renamed from: a, reason: collision with root package name */
    private final o.c f4351a;

    /* renamed from: b, reason: collision with root package name */
    private final o.b f4352b;

    /* compiled from: AutoValue_NetworkConnectionInfo.java */
    /* loaded from: classes.dex */
    static final class b extends o.a {

        /* renamed from: a, reason: collision with root package name */
        private o.c f4353a;

        /* renamed from: b, reason: collision with root package name */
        private o.b f4354b;

        @Override // com.google.android.datatransport.cct.f.o.a
        public o.a a(@Nullable o.c cVar) {
            this.f4353a = cVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.o.a
        public o.a a(@Nullable o.b bVar) {
            this.f4354b = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.f.o.a
        public o a() {
            return new i(this.f4353a, this.f4354b);
        }
    }

    @Override // com.google.android.datatransport.cct.f.o
    @Nullable
    public o.b a() {
        return this.f4352b;
    }

    @Override // com.google.android.datatransport.cct.f.o
    @Nullable
    public o.c b() {
        return this.f4351a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.c cVar = this.f4351a;
        if (cVar != null ? cVar.equals(oVar.b()) : oVar.b() == null) {
            o.b bVar = this.f4352b;
            if (bVar == null) {
                if (oVar.a() == null) {
                    return true;
                }
            } else if (bVar.equals(oVar.a())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        o.c cVar = this.f4351a;
        int hashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        o.b bVar = this.f4352b;
        return hashCode ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f4351a + ", mobileSubtype=" + this.f4352b + "}";
    }

    private i(@Nullable o.c cVar, @Nullable o.b bVar) {
        this.f4351a = cVar;
        this.f4352b = bVar;
    }
}
