package e.f.i.i;

import android.net.Uri;
import com.facebook.common.internal.g;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.File;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* compiled from: ImageRequest.java */
@Immutable
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final a f17614a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f17615b;

    /* renamed from: c, reason: collision with root package name */
    private final int f17616c;

    /* renamed from: d, reason: collision with root package name */
    private File f17617d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f17618e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f17619f;

    /* renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.common.b f17620g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.common.e f17621h;

    /* renamed from: i, reason: collision with root package name */
    private final RotationOptions f17622i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.common.a f17623j;

    /* renamed from: k, reason: collision with root package name */
    private final com.facebook.imagepipeline.common.d f17624k;

    /* renamed from: l, reason: collision with root package name */
    private final EnumC0196b f17625l;
    private final boolean m;
    private final boolean n;

    @Nullable
    private final Boolean o;

    @Nullable
    private final d p;

    @Nullable
    private final e.f.i.h.c q;

    @Nullable
    private final Boolean r;

    /* compiled from: ImageRequest.java */
    /* loaded from: classes.dex */
    public enum a {
        SMALL,
        DEFAULT
    }

    /* compiled from: ImageRequest.java */
    /* renamed from: e.f.i.i.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0196b {
        FULL_FETCH(1),
        DISK_CACHE(2),
        ENCODED_MEMORY_CACHE(3),
        BITMAP_MEMORY_CACHE(4);

        private int mValue;

        EnumC0196b(int i2) {
            this.mValue = i2;
        }

        public static EnumC0196b getMax(EnumC0196b enumC0196b, EnumC0196b enumC0196b2) {
            return enumC0196b.getValue() > enumC0196b2.getValue() ? enumC0196b : enumC0196b2;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(c cVar) {
        this.f17614a = cVar.c();
        this.f17615b = cVar.l();
        this.f17616c = a(this.f17615b);
        this.f17618e = cVar.p();
        this.f17619f = cVar.n();
        this.f17620g = cVar.d();
        this.f17621h = cVar.i();
        this.f17622i = cVar.k() == null ? RotationOptions.e() : cVar.k();
        this.f17623j = cVar.b();
        this.f17624k = cVar.h();
        this.f17625l = cVar.e();
        this.m = cVar.m();
        this.n = cVar.o();
        this.o = cVar.q();
        this.p = cVar.f();
        this.q = cVar.g();
        this.r = cVar.j();
    }

    @Nullable
    public com.facebook.imagepipeline.common.a a() {
        return this.f17623j;
    }

    public a b() {
        return this.f17614a;
    }

    public com.facebook.imagepipeline.common.b c() {
        return this.f17620g;
    }

    public boolean d() {
        return this.f17619f;
    }

    public EnumC0196b e() {
        return this.f17625l;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!g.a(this.f17615b, bVar.f17615b) || !g.a(this.f17614a, bVar.f17614a) || !g.a(this.f17617d, bVar.f17617d) || !g.a(this.f17623j, bVar.f17623j) || !g.a(this.f17620g, bVar.f17620g) || !g.a(this.f17621h, bVar.f17621h) || !g.a(this.f17622i, bVar.f17622i)) {
            return false;
        }
        d dVar = this.p;
        e.f.b.a.d a2 = dVar != null ? dVar.a() : null;
        d dVar2 = bVar.p;
        return g.a(a2, dVar2 != null ? dVar2.a() : null);
    }

    @Nullable
    public d f() {
        return this.p;
    }

    public int g() {
        com.facebook.imagepipeline.common.e eVar = this.f17621h;
        if (eVar != null) {
            return eVar.f3679b;
        }
        return 2048;
    }

    public int h() {
        com.facebook.imagepipeline.common.e eVar = this.f17621h;
        if (eVar != null) {
            return eVar.f3678a;
        }
        return 2048;
    }

    public int hashCode() {
        d dVar = this.p;
        return g.a(this.f17614a, this.f17615b, this.f17617d, this.f17623j, this.f17620g, this.f17621h, this.f17622i, dVar != null ? dVar.a() : null, this.r);
    }

    public com.facebook.imagepipeline.common.d i() {
        return this.f17624k;
    }

    public boolean j() {
        return this.f17618e;
    }

    @Nullable
    public e.f.i.h.c k() {
        return this.q;
    }

    @Nullable
    public com.facebook.imagepipeline.common.e l() {
        return this.f17621h;
    }

    @Nullable
    public Boolean m() {
        return this.r;
    }

    public RotationOptions n() {
        return this.f17622i;
    }

    public synchronized File o() {
        if (this.f17617d == null) {
            this.f17617d = new File(this.f17615b.getPath());
        }
        return this.f17617d;
    }

    public Uri p() {
        return this.f17615b;
    }

    public int q() {
        return this.f17616c;
    }

    public boolean r() {
        return this.m;
    }

    public boolean s() {
        return this.n;
    }

    @Nullable
    public Boolean t() {
        return this.o;
    }

    public String toString() {
        g.b a2 = g.a(this);
        a2.a("uri", this.f17615b);
        a2.a("cacheChoice", this.f17614a);
        a2.a("decodeOptions", this.f17620g);
        a2.a("postprocessor", this.p);
        a2.a("priority", this.f17624k);
        a2.a("resizeOptions", this.f17621h);
        a2.a("rotationOptions", this.f17622i);
        a2.a("bytesRange", this.f17623j);
        a2.a("resizingAllowedOverride", this.r);
        return a2.toString();
    }

    private static int a(Uri uri) {
        if (uri == null) {
            return -1;
        }
        if (e.f.c.j.f.i(uri)) {
            return 0;
        }
        if (e.f.c.j.f.g(uri)) {
            return e.f.c.e.a.c(e.f.c.e.a.b(uri.getPath())) ? 2 : 3;
        }
        if (e.f.c.j.f.f(uri)) {
            return 4;
        }
        if (e.f.c.j.f.c(uri)) {
            return 5;
        }
        if (e.f.c.j.f.h(uri)) {
            return 6;
        }
        if (e.f.c.j.f.b(uri)) {
            return 7;
        }
        return e.f.c.j.f.j(uri) ? 8 : -1;
    }
}
