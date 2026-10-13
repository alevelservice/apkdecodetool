package e.f.i.a.b;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import com.facebook.common.internal.h;
import e.f.c.f.g;
import e.f.i.a.c.d;
import e.f.i.b.f;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: AnimatedImageFactoryImpl.java */
/* loaded from: classes.dex */
public class e implements d {

    /* renamed from: c, reason: collision with root package name */
    static c f17484c = a("com.facebook.animated.gif.GifImage");

    /* renamed from: d, reason: collision with root package name */
    static c f17485d = a("com.facebook.animated.webp.WebPImage");

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.a.c.b f17486a;

    /* renamed from: b, reason: collision with root package name */
    private final f f17487b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes.dex */
    public class a implements d.b {
        a(e eVar) {
        }

        @Override // e.f.i.a.c.d.b
        @Nullable
        public e.f.c.g.a<Bitmap> a(int i2) {
            return null;
        }

        @Override // e.f.i.a.c.d.b
        public void a(int i2, Bitmap bitmap) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageFactoryImpl.java */
    /* loaded from: classes.dex */
    public class b implements d.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f17488a;

        b(e eVar, List list) {
            this.f17488a = list;
        }

        @Override // e.f.i.a.c.d.b
        public e.f.c.g.a<Bitmap> a(int i2) {
            return e.f.c.g.a.a((e.f.c.g.a) this.f17488a.get(i2));
        }

        @Override // e.f.i.a.c.d.b
        public void a(int i2, Bitmap bitmap) {
        }
    }

    public e(e.f.i.a.c.b bVar, f fVar) {
        this.f17486a = bVar;
        this.f17487b = fVar;
    }

    @Nullable
    private static c a(String str) {
        try {
            return (c) Class.forName(str).newInstance();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // e.f.i.a.b.d
    public e.f.i.g.c b(e.f.i.g.e eVar, com.facebook.imagepipeline.common.b bVar, Bitmap.Config config) {
        e.f.i.a.a.c a2;
        if (f17485d != null) {
            e.f.c.g.a<g> j2 = eVar.j();
            h.a(j2);
            try {
                g A = j2.A();
                if (A.w() != null) {
                    a2 = f17485d.a(A.w());
                } else {
                    a2 = f17485d.a(A.x(), A.size());
                }
                return a(bVar, a2, config);
            } finally {
                e.f.c.g.a.b(j2);
            }
        }
        throw new UnsupportedOperationException("To encode animated webp please add the dependency to the animated-webp module");
    }

    @Override // e.f.i.a.b.d
    public e.f.i.g.c a(e.f.i.g.e eVar, com.facebook.imagepipeline.common.b bVar, Bitmap.Config config) {
        e.f.i.a.a.c a2;
        if (f17484c != null) {
            e.f.c.g.a<g> j2 = eVar.j();
            h.a(j2);
            try {
                g A = j2.A();
                if (A.w() != null) {
                    a2 = f17484c.a(A.w());
                } else {
                    a2 = f17484c.a(A.x(), A.size());
                }
                return a(bVar, a2, config);
            } finally {
                e.f.c.g.a.b(j2);
            }
        }
        throw new UnsupportedOperationException("To encode animated gif please add the dependency to the animated-gif module");
    }

    private e.f.i.g.c a(com.facebook.imagepipeline.common.b bVar, e.f.i.a.a.c cVar, Bitmap.Config config) {
        List<e.f.c.g.a<Bitmap>> list;
        e.f.c.g.a<Bitmap> aVar = null;
        try {
            int a2 = bVar.f3661c ? cVar.a() - 1 : 0;
            if (bVar.f3663e) {
                e.f.i.g.d dVar = new e.f.i.g.d(a(cVar, config, a2), e.f.i.g.g.f17609d, 0);
                e.f.c.g.a.b(null);
                e.f.c.g.a.c((Iterable<? extends e.f.c.g.a<?>>) null);
                return dVar;
            }
            if (bVar.f3662d) {
                list = a(cVar, config);
                try {
                    aVar = e.f.c.g.a.a((e.f.c.g.a) list.get(a2));
                } catch (Throwable th) {
                    th = th;
                    e.f.c.g.a.b(aVar);
                    e.f.c.g.a.c(list);
                    throw th;
                }
            } else {
                list = null;
            }
            if (bVar.f3660b && aVar == null) {
                aVar = a(cVar, config, a2);
            }
            e.f.i.a.a.f b2 = e.f.i.a.a.e.b(cVar);
            b2.a(aVar);
            b2.a(a2);
            b2.a(list);
            e.f.i.g.a aVar2 = new e.f.i.g.a(b2.a());
            e.f.c.g.a.b(aVar);
            e.f.c.g.a.c(list);
            return aVar2;
        } catch (Throwable th2) {
            th = th2;
            list = null;
        }
    }

    private e.f.c.g.a<Bitmap> a(e.f.i.a.a.c cVar, Bitmap.Config config, int i2) {
        e.f.c.g.a<Bitmap> a2 = a(cVar.getWidth(), cVar.getHeight(), config);
        new e.f.i.a.c.d(this.f17486a.a(e.f.i.a.a.e.a(cVar), null), new a(this)).a(i2, a2.A());
        return a2;
    }

    private List<e.f.c.g.a<Bitmap>> a(e.f.i.a.a.c cVar, Bitmap.Config config) {
        e.f.i.a.a.a a2 = this.f17486a.a(e.f.i.a.a.e.a(cVar), null);
        ArrayList arrayList = new ArrayList(a2.a());
        e.f.i.a.c.d dVar = new e.f.i.a.c.d(a2, new b(this, arrayList));
        for (int i2 = 0; i2 < a2.a(); i2++) {
            e.f.c.g.a<Bitmap> a3 = a(a2.getWidth(), a2.getHeight(), config);
            dVar.a(i2, a3.A());
            arrayList.add(a3);
        }
        return arrayList;
    }

    @SuppressLint({"NewApi"})
    private e.f.c.g.a<Bitmap> a(int i2, int i3, Bitmap.Config config) {
        e.f.c.g.a<Bitmap> b2 = this.f17487b.b(i2, i3, config);
        b2.A().eraseColor(0);
        if (Build.VERSION.SDK_INT >= 12) {
            b2.A().setHasAlpha(true);
        }
        return b2;
    }
}
