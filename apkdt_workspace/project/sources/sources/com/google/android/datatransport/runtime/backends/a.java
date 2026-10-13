package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.g;
import java.util.Arrays;

/* compiled from: AutoValue_BackendRequest.java */
/* loaded from: classes.dex */
final class a extends g {

    /* renamed from: a, reason: collision with root package name */
    private final Iterable<e.i.b.a.i.h> f4362a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f4363b;

    @Override // com.google.android.datatransport.runtime.backends.g
    public Iterable<e.i.b.a.i.h> a() {
        return this.f4362a;
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    @Nullable
    public byte[] b() {
        return this.f4363b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f4362a.equals(gVar.a())) {
            if (Arrays.equals(this.f4363b, gVar instanceof a ? ((a) gVar).f4363b : gVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f4362a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f4363b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f4362a + ", extras=" + Arrays.toString(this.f4363b) + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_BackendRequest.java */
    /* loaded from: classes.dex */
    public static final class b extends g.a {

        /* renamed from: a, reason: collision with root package name */
        private Iterable<e.i.b.a.i.h> f4364a;

        /* renamed from: b, reason: collision with root package name */
        private byte[] f4365b;

        @Override // com.google.android.datatransport.runtime.backends.g.a
        public g.a a(Iterable<e.i.b.a.i.h> iterable) {
            if (iterable != null) {
                this.f4364a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // com.google.android.datatransport.runtime.backends.g.a
        public g.a a(@Nullable byte[] bArr) {
            this.f4365b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.g.a
        public g a() {
            String str = "";
            if (this.f4364a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f4364a, this.f4365b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private a(Iterable<e.i.b.a.i.h> iterable, @Nullable byte[] bArr) {
        this.f4362a = iterable;
        this.f4363b = bArr;
    }
}
