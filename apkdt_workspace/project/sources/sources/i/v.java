package i;

import i.r;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;

/* compiled from: MultipartBody.java */
/* loaded from: classes2.dex */
public final class v extends a0 {

    /* renamed from: e, reason: collision with root package name */
    public static final u f18802e = u.a("multipart/mixed");

    /* renamed from: f, reason: collision with root package name */
    public static final u f18803f;

    /* renamed from: g, reason: collision with root package name */
    private static final byte[] f18804g;

    /* renamed from: h, reason: collision with root package name */
    private static final byte[] f18805h;

    /* renamed from: i, reason: collision with root package name */
    private static final byte[] f18806i;

    /* renamed from: a, reason: collision with root package name */
    private final j.f f18807a;

    /* renamed from: b, reason: collision with root package name */
    private final u f18808b;

    /* renamed from: c, reason: collision with root package name */
    private final List<b> f18809c;

    /* renamed from: d, reason: collision with root package name */
    private long f18810d = -1;

    /* compiled from: MultipartBody.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final j.f f18811a;

        /* renamed from: b, reason: collision with root package name */
        private u f18812b;

        /* renamed from: c, reason: collision with root package name */
        private final List<b> f18813c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a a(u uVar) {
            if (uVar != null) {
                if (uVar.b().equals("multipart")) {
                    this.f18812b = uVar;
                    return this;
                }
                throw new IllegalArgumentException("multipart != " + uVar);
            }
            throw new NullPointerException("type == null");
        }

        public a(String str) {
            this.f18812b = v.f18802e;
            this.f18813c = new ArrayList();
            this.f18811a = j.f.encodeUtf8(str);
        }

        public a a(String str, String str2) {
            a(b.a(str, str2));
            return this;
        }

        public a a(String str, @Nullable String str2, a0 a0Var) {
            a(b.a(str, str2, a0Var));
            return this;
        }

        public a a(b bVar) {
            if (bVar != null) {
                this.f18813c.add(bVar);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        public v a() {
            if (!this.f18813c.isEmpty()) {
                return new v(this.f18811a, this.f18812b, this.f18813c);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    static {
        u.a("multipart/alternative");
        u.a("multipart/digest");
        u.a("multipart/parallel");
        f18803f = u.a("multipart/form-data");
        f18804g = new byte[]{58, 32};
        f18805h = new byte[]{13, 10};
        f18806i = new byte[]{45, 45};
    }

    v(j.f fVar, u uVar, List<b> list) {
        this.f18807a = fVar;
        this.f18808b = u.a(uVar + "; boundary=" + fVar.utf8());
        this.f18809c = i.g0.c.a(list);
    }

    public b a(int i2) {
        return this.f18809c.get(i2);
    }

    @Override // i.a0
    public u b() {
        return this.f18808b;
    }

    public int c() {
        return this.f18809c.size();
    }

    @Override // i.a0
    public long a() {
        long j2 = this.f18810d;
        if (j2 != -1) {
            return j2;
        }
        long a2 = a((j.d) null, true);
        this.f18810d = a2;
        return a2;
    }

    @Override // i.a0
    public void a(j.d dVar) {
        a(dVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long a(@Nullable j.d dVar, boolean z) {
        j.c cVar;
        if (z) {
            dVar = new j.c();
            cVar = dVar;
        } else {
            cVar = 0;
        }
        int size = this.f18809c.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f18809c.get(i2);
            r rVar = bVar.f18814a;
            a0 a0Var = bVar.f18815b;
            dVar.write(f18806i);
            dVar.a(this.f18807a);
            dVar.write(f18805h);
            if (rVar != null) {
                int b2 = rVar.b();
                for (int i3 = 0; i3 < b2; i3++) {
                    dVar.a(rVar.a(i3)).write(f18804g).a(rVar.b(i3)).write(f18805h);
                }
            }
            u b3 = a0Var.b();
            if (b3 != null) {
                dVar.a("Content-Type: ").a(b3.toString()).write(f18805h);
            }
            long a2 = a0Var.a();
            if (a2 != -1) {
                dVar.a("Content-Length: ").b(a2).write(f18805h);
            } else if (z) {
                cVar.n();
                return -1L;
            }
            dVar.write(f18805h);
            if (z) {
                j2 += a2;
            } else {
                a0Var.a(dVar);
            }
            dVar.write(f18805h);
        }
        dVar.write(f18806i);
        dVar.a(this.f18807a);
        dVar.write(f18806i);
        dVar.write(f18805h);
        if (!z) {
            return j2;
        }
        long z2 = j2 + cVar.z();
        cVar.n();
        return z2;
    }

    /* compiled from: MultipartBody.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        final r f18814a;

        /* renamed from: b, reason: collision with root package name */
        final a0 f18815b;

        private b(@Nullable r rVar, a0 a0Var) {
            this.f18814a = rVar;
            this.f18815b = a0Var;
        }

        public static b a(@Nullable r rVar, a0 a0Var) {
            if (a0Var != null) {
                if (rVar != null && rVar.a("Content-Type") != null) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type");
                }
                if (rVar != null && rVar.a("Content-Length") != null) {
                    throw new IllegalArgumentException("Unexpected header: Content-Length");
                }
                return new b(rVar, a0Var);
            }
            throw new NullPointerException("body == null");
        }

        public static b a(String str, String str2) {
            return a(str, null, a0.a((u) null, str2));
        }

        public static b a(String str, @Nullable String str2, a0 a0Var) {
            if (str != null) {
                StringBuilder sb = new StringBuilder("form-data; name=");
                v.a(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    v.a(sb, str2);
                }
                r.a aVar = new r.a();
                aVar.c("Content-Disposition", sb.toString());
                return a(aVar.a(), a0Var);
            }
            throw new NullPointerException("name == null");
        }
    }

    static StringBuilder a(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '\n') {
                sb.append("%0A");
            } else if (charAt == '\r') {
                sb.append("%0D");
            } else if (charAt != '\"') {
                sb.append(charAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }
}
