package e.f.i.i;

import android.net.Uri;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.core.h;
import e.f.i.i.b;
import javax.annotation.Nullable;

/* compiled from: ImageRequestBuilder.java */
/* loaded from: classes.dex */
public class c {

    @Nullable
    private e.f.i.h.c n;

    /* renamed from: a, reason: collision with root package name */
    private Uri f17628a = null;

    /* renamed from: b, reason: collision with root package name */
    private b.EnumC0196b f17629b = b.EnumC0196b.FULL_FETCH;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.common.e f17630c = null;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private RotationOptions f17631d = null;

    /* renamed from: e, reason: collision with root package name */
    private com.facebook.imagepipeline.common.b f17632e = com.facebook.imagepipeline.common.b.a();

    /* renamed from: f, reason: collision with root package name */
    private b.a f17633f = b.a.DEFAULT;

    /* renamed from: g, reason: collision with root package name */
    private boolean f17634g = h.A().a();

    /* renamed from: h, reason: collision with root package name */
    private boolean f17635h = false;

    /* renamed from: i, reason: collision with root package name */
    private com.facebook.imagepipeline.common.d f17636i = com.facebook.imagepipeline.common.d.HIGH;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private d f17637j = null;

    /* renamed from: k, reason: collision with root package name */
    private boolean f17638k = true;

    /* renamed from: l, reason: collision with root package name */
    private boolean f17639l = true;

    @Nullable
    private Boolean m = null;

    @Nullable
    private com.facebook.imagepipeline.common.a o = null;

    @Nullable
    private Boolean p = null;

    /* compiled from: ImageRequestBuilder.java */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        public a(String str) {
            super("Invalid request builder: " + str);
        }
    }

    private c() {
    }

    public static c a(b bVar) {
        c b2 = b(bVar.p());
        b2.a(bVar.c());
        b2.a(bVar.a());
        b2.a(bVar.b());
        b2.a(bVar.d());
        b2.a(bVar.e());
        b2.a(bVar.f());
        b2.b(bVar.j());
        b2.a(bVar.i());
        b2.a(bVar.l());
        b2.a(bVar.k());
        b2.a(bVar.n());
        b2.a(bVar.t());
        return b2;
    }

    public static c b(Uri uri) {
        c cVar = new c();
        cVar.a(uri);
        return cVar;
    }

    public b.a c() {
        return this.f17633f;
    }

    public com.facebook.imagepipeline.common.b d() {
        return this.f17632e;
    }

    public b.EnumC0196b e() {
        return this.f17629b;
    }

    @Nullable
    public d f() {
        return this.f17637j;
    }

    @Nullable
    public e.f.i.h.c g() {
        return this.n;
    }

    public com.facebook.imagepipeline.common.d h() {
        return this.f17636i;
    }

    @Nullable
    public com.facebook.imagepipeline.common.e i() {
        return this.f17630c;
    }

    @Nullable
    public Boolean j() {
        return this.p;
    }

    @Nullable
    public RotationOptions k() {
        return this.f17631d;
    }

    public Uri l() {
        return this.f17628a;
    }

    public boolean m() {
        return this.f17638k && e.f.c.j.f.i(this.f17628a);
    }

    public boolean n() {
        return this.f17635h;
    }

    public boolean o() {
        return this.f17639l;
    }

    public boolean p() {
        return this.f17634g;
    }

    @Nullable
    public Boolean q() {
        return this.m;
    }

    protected void r() {
        Uri uri = this.f17628a;
        if (uri != null) {
            if (e.f.c.j.f.h(uri)) {
                if (this.f17628a.isAbsolute()) {
                    if (!this.f17628a.getPath().isEmpty()) {
                        try {
                            Integer.parseInt(this.f17628a.getPath().substring(1));
                        } catch (NumberFormatException unused) {
                            throw new a("Resource URI path must be a resource id.");
                        }
                    } else {
                        throw new a("Resource URI must not be empty");
                    }
                } else {
                    throw new a("Resource URI path must be absolute.");
                }
            }
            if (e.f.c.j.f.c(this.f17628a) && !this.f17628a.isAbsolute()) {
                throw new a("Asset URI path must be absolute.");
            }
            return;
        }
        throw new a("Source must be set!");
    }

    @Nullable
    public com.facebook.imagepipeline.common.a b() {
        return this.o;
    }

    public c b(boolean z) {
        this.f17634g = z;
        return this;
    }

    public c a(Uri uri) {
        com.facebook.common.internal.h.a(uri);
        this.f17628a = uri;
        return this;
    }

    public c a(b.EnumC0196b enumC0196b) {
        this.f17629b = enumC0196b;
        return this;
    }

    public c a(@Nullable com.facebook.imagepipeline.common.e eVar) {
        this.f17630c = eVar;
        return this;
    }

    public c a(@Nullable RotationOptions rotationOptions) {
        this.f17631d = rotationOptions;
        return this;
    }

    public c a(@Nullable com.facebook.imagepipeline.common.a aVar) {
        this.o = aVar;
        return this;
    }

    public c a(com.facebook.imagepipeline.common.b bVar) {
        this.f17632e = bVar;
        return this;
    }

    public c a(b.a aVar) {
        this.f17633f = aVar;
        return this;
    }

    public c a(boolean z) {
        this.f17635h = z;
        return this;
    }

    public c a(com.facebook.imagepipeline.common.d dVar) {
        this.f17636i = dVar;
        return this;
    }

    public c a(d dVar) {
        this.f17637j = dVar;
        return this;
    }

    public c a(e.f.i.h.c cVar) {
        this.n = cVar;
        return this;
    }

    public b a() {
        r();
        return new b(this);
    }

    public c a(@Nullable Boolean bool) {
        this.m = bool;
        return this;
    }
}
