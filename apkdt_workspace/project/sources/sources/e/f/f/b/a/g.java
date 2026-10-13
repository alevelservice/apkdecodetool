package e.f.f.b.a;

import android.content.res.Resources;
import com.facebook.common.internal.j;
import e.f.i.c.p;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: PipelineDraweeControllerFactory.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private Resources f17242a;

    /* renamed from: b, reason: collision with root package name */
    private e.f.f.c.a f17243b;

    /* renamed from: c, reason: collision with root package name */
    private e.f.i.f.a f17244c;

    /* renamed from: d, reason: collision with root package name */
    private Executor f17245d;

    /* renamed from: e, reason: collision with root package name */
    private p<e.f.b.a.d, e.f.i.g.c> f17246e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private com.facebook.common.internal.d<e.f.i.f.a> f17247f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private j<Boolean> f17248g;

    public void a(Resources resources, e.f.f.c.a aVar, e.f.i.f.a aVar2, Executor executor, p<e.f.b.a.d, e.f.i.g.c> pVar, @Nullable com.facebook.common.internal.d<e.f.i.f.a> dVar, @Nullable j<Boolean> jVar) {
        this.f17242a = resources;
        this.f17243b = aVar;
        this.f17244c = aVar2;
        this.f17245d = executor;
        this.f17246e = pVar;
        this.f17247f = dVar;
        this.f17248g = jVar;
    }

    public d a() {
        d a2 = a(this.f17242a, this.f17243b, this.f17244c, this.f17245d, this.f17246e, this.f17247f);
        j<Boolean> jVar = this.f17248g;
        if (jVar != null) {
            a2.b(jVar.get().booleanValue());
        }
        return a2;
    }

    protected d a(Resources resources, e.f.f.c.a aVar, e.f.i.f.a aVar2, Executor executor, p<e.f.b.a.d, e.f.i.g.c> pVar, @Nullable com.facebook.common.internal.d<e.f.i.f.a> dVar) {
        return new d(resources, aVar, aVar2, executor, pVar, dVar);
    }
}
