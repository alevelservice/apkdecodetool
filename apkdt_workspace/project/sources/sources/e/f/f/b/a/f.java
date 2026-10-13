package e.f.f.b.a;

import android.content.Context;
import android.content.res.Resources;
import com.facebook.common.internal.j;
import e.f.c.b.i;
import e.f.i.c.p;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: PipelineDraweeControllerBuilderSupplier.java */
/* loaded from: classes.dex */
public class f implements j<e> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17238a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.g f17239b;

    /* renamed from: c, reason: collision with root package name */
    private final g f17240c;

    /* renamed from: d, reason: collision with root package name */
    private final Set<e.f.f.d.d> f17241d;

    public f(Context context, @Nullable b bVar) {
        this(context, com.facebook.imagepipeline.core.j.n(), bVar);
    }

    public f(Context context, com.facebook.imagepipeline.core.j jVar, @Nullable b bVar) {
        this(context, jVar, null, bVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.common.internal.j
    public e get() {
        return new e(this.f17238a, this.f17240c, this.f17239b, this.f17241d);
    }

    public f(Context context, com.facebook.imagepipeline.core.j jVar, Set<e.f.f.d.d> set, @Nullable b bVar) {
        this.f17238a = context;
        this.f17239b = jVar.e();
        if (bVar == null) {
            this.f17240c = new g();
            g gVar = this.f17240c;
            Resources resources = context.getResources();
            e.f.f.c.a c2 = e.f.f.c.a.c();
            e.f.i.f.a a2 = jVar.a(context);
            i b2 = i.b();
            p<e.f.b.a.d, e.f.i.g.c> b3 = this.f17239b.b();
            if (bVar != null) {
                bVar.a();
                throw null;
            }
            if (bVar == null) {
                gVar.a(resources, c2, a2, b2, b3, null, null);
                this.f17241d = set;
                return;
            } else {
                bVar.b();
                throw null;
            }
        }
        bVar.c();
        throw null;
    }
}
