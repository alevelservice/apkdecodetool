package e.i.b.a.i;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import e.i.b.a.i.m;
import java.util.Arrays;

/* compiled from: AutoValue_TransportContext.java */
/* loaded from: classes.dex */
final class c extends m {

    /* renamed from: a, reason: collision with root package name */
    private final String f17680a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f17681b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.d f17682c;

    @Override // e.i.b.a.i.m
    public String a() {
        return this.f17680a;
    }

    @Override // e.i.b.a.i.m
    @Nullable
    public byte[] b() {
        return this.f17681b;
    }

    @Override // e.i.b.a.i.m
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public e.i.b.a.d c() {
        return this.f17682c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f17680a.equals(mVar.a())) {
            if (Arrays.equals(this.f17681b, mVar instanceof c ? ((c) mVar).f17681b : mVar.b()) && this.f17682c.equals(mVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f17680a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17681b)) * 1000003) ^ this.f17682c.hashCode();
    }

    /* compiled from: AutoValue_TransportContext.java */
    /* loaded from: classes.dex */
    static final class b extends m.a {

        /* renamed from: a, reason: collision with root package name */
        private String f17683a;

        /* renamed from: b, reason: collision with root package name */
        private byte[] f17684b;

        /* renamed from: c, reason: collision with root package name */
        private e.i.b.a.d f17685c;

        @Override // e.i.b.a.i.m.a
        public m.a a(String str) {
            if (str != null) {
                this.f17683a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // e.i.b.a.i.m.a
        public m.a a(@Nullable byte[] bArr) {
            this.f17684b = bArr;
            return this;
        }

        @Override // e.i.b.a.i.m.a
        public m.a a(e.i.b.a.d dVar) {
            if (dVar != null) {
                this.f17685c = dVar;
                return this;
            }
            throw new NullPointerException("Null priority");
        }

        @Override // e.i.b.a.i.m.a
        public m a() {
            String str = "";
            if (this.f17683a == null) {
                str = " backendName";
            }
            if (this.f17685c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new c(this.f17683a, this.f17684b, this.f17685c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private c(String str, @Nullable byte[] bArr, e.i.b.a.d dVar) {
        this.f17680a = str;
        this.f17681b = bArr;
        this.f17682c = dVar;
    }
}
