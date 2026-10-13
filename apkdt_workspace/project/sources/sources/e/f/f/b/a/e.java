package e.f.f.b.a;

import android.content.Context;
import android.net.Uri;
import com.facebook.imagepipeline.common.RotationOptions;
import e.f.f.d.b;
import e.f.i.i.b;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: PipelineDraweeControllerBuilder.java */
/* loaded from: classes.dex */
public class e extends e.f.f.d.b<e, e.f.i.i.b, e.f.c.g.a<e.f.i.g.c>, e.f.i.g.f> {
    private final com.facebook.imagepipeline.core.g s;
    private final g t;

    @Nullable
    private com.facebook.common.internal.d<e.f.i.f.a> u;

    @Nullable
    private com.facebook.drawee.backends.pipeline.info.b v;

    @Nullable
    private com.facebook.drawee.backends.pipeline.info.f w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PipelineDraweeControllerBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17237a = new int[b.c.values().length];

        static {
            try {
                f17237a[b.c.FULL_FETCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17237a[b.c.DISK_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17237a[b.c.BITMAP_MEMORY_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public e(Context context, g gVar, com.facebook.imagepipeline.core.g gVar2, Set<e.f.f.d.d> set) {
        super(context, set);
        this.s = gVar2;
        this.t = gVar;
    }

    @Nullable
    private e.f.b.a.d m() {
        e.f.i.i.b f2 = f();
        e.f.i.c.f c2 = this.s.c();
        if (c2 == null || f2 == null) {
            return null;
        }
        if (f2.f() != null) {
            return c2.b(f2, c());
        }
        return c2.a(f2, c());
    }

    @Nullable
    protected e.f.i.h.c b(e.f.f.i.a aVar) {
        if (aVar instanceof d) {
            return ((d) aVar).q();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.b
    public d j() {
        d a2;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("PipelineDraweeControllerBuilder#obtainController");
        }
        try {
            e.f.f.i.a g2 = g();
            String l2 = e.f.f.d.b.l();
            if (g2 instanceof d) {
                a2 = (d) g2;
            } else {
                a2 = this.t.a();
            }
            a2.a(a(a2, l2), l2, m(), c(), this.u, this.v);
            a2.a(this.w);
            return a2;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    @Override // e.f.f.i.d
    public e a(@Nullable Uri uri) {
        if (uri == null) {
            super.b((e) null);
            return this;
        }
        e.f.i.i.c b2 = e.f.i.i.c.b(uri);
        b2.a(RotationOptions.f());
        super.b((e) b2.a());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.f.d.b
    public e.f.d.c<e.f.c.g.a<e.f.i.g.c>> a(e.f.f.i.a aVar, String str, e.f.i.i.b bVar, Object obj, b.c cVar) {
        return this.s.a(bVar, obj, a(cVar), b(aVar));
    }

    public static b.EnumC0196b a(b.c cVar) {
        int i2 = a.f17237a[cVar.ordinal()];
        if (i2 == 1) {
            return b.EnumC0196b.FULL_FETCH;
        }
        if (i2 == 2) {
            return b.EnumC0196b.DISK_CACHE;
        }
        if (i2 == 3) {
            return b.EnumC0196b.BITMAP_MEMORY_CACHE;
        }
        throw new RuntimeException("Cache level" + cVar + "is not supported. ");
    }
}
