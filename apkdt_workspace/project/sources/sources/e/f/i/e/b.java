package e.f.i.e;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import e.f.i.g.h;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: DefaultImageDecoder.java */
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    private final c f17580a;

    /* renamed from: b, reason: collision with root package name */
    private final c f17581b;

    /* renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.f f17582c;

    /* renamed from: d, reason: collision with root package name */
    private final c f17583d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final Map<e.f.h.c, c> f17584e;

    /* compiled from: DefaultImageDecoder.java */
    /* loaded from: classes.dex */
    class a implements c {
        a() {
        }

        @Override // e.f.i.e.c
        public e.f.i.g.c a(e.f.i.g.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
            e.f.h.c p = eVar.p();
            if (p == e.f.h.b.f17450a) {
                return b.this.d(eVar, i2, hVar, bVar);
            }
            if (p == e.f.h.b.f17452c) {
                return b.this.c(eVar, i2, hVar, bVar);
            }
            if (p == e.f.h.b.f17459j) {
                return b.this.b(eVar, i2, hVar, bVar);
            }
            if (p != e.f.h.c.f17461b) {
                return b.this.a(eVar, bVar);
            }
            throw new e.f.i.e.a("unknown image format", eVar);
        }
    }

    public b(c cVar, c cVar2, com.facebook.imagepipeline.platform.f fVar) {
        this(cVar, cVar2, fVar, null);
    }

    @Override // e.f.i.e.c
    public e.f.i.g.c a(e.f.i.g.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        c cVar;
        c cVar2 = bVar.f3666h;
        if (cVar2 != null) {
            return cVar2.a(eVar, i2, hVar, bVar);
        }
        e.f.h.c p = eVar.p();
        if (p == null || p == e.f.h.c.f17461b) {
            p = e.f.h.d.c(eVar.q());
            eVar.a(p);
        }
        Map<e.f.h.c, c> map = this.f17584e;
        if (map != null && (cVar = map.get(p)) != null) {
            return cVar.a(eVar, i2, hVar, bVar);
        }
        return this.f17583d.a(eVar, i2, hVar, bVar);
    }

    public e.f.i.g.c b(e.f.i.g.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        return this.f17581b.a(eVar, i2, hVar, bVar);
    }

    public e.f.i.g.c c(e.f.i.g.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        c cVar;
        if (!bVar.f3663e && (cVar = this.f17580a) != null) {
            return cVar.a(eVar, i2, hVar, bVar);
        }
        return a(eVar, bVar);
    }

    public e.f.i.g.d d(e.f.i.g.e eVar, int i2, h hVar, com.facebook.imagepipeline.common.b bVar) {
        e.f.c.g.a<Bitmap> a2 = this.f17582c.a(eVar, bVar.f3665g, null, i2, bVar.f3664f);
        try {
            a(bVar.f3667i, a2);
            return new e.f.i.g.d(a2, hVar, eVar.r(), eVar.m());
        } finally {
            a2.close();
        }
    }

    public b(c cVar, c cVar2, com.facebook.imagepipeline.platform.f fVar, @Nullable Map<e.f.h.c, c> map) {
        this.f17583d = new a();
        this.f17580a = cVar;
        this.f17581b = cVar2;
        this.f17582c = fVar;
        this.f17584e = map;
    }

    public e.f.i.g.d a(e.f.i.g.e eVar, com.facebook.imagepipeline.common.b bVar) {
        e.f.c.g.a<Bitmap> a2 = this.f17582c.a(eVar, bVar.f3665g, (Rect) null, bVar.f3664f);
        try {
            a(bVar.f3667i, a2);
            return new e.f.i.g.d(a2, e.f.i.g.g.f17609d, eVar.r(), eVar.m());
        } finally {
            a2.close();
        }
    }

    private void a(@Nullable e.f.i.k.a aVar, e.f.c.g.a<Bitmap> aVar2) {
        if (aVar == null) {
            return;
        }
        Bitmap A = aVar2.A();
        if (Build.VERSION.SDK_INT >= 12 && aVar.a()) {
            A.setHasAlpha(true);
        }
        aVar.a(A);
    }
}
