package e.f.f.d;

import android.content.Context;
import android.graphics.drawable.Animatable;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import com.facebook.common.internal.j;
import e.f.f.d.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

/* compiled from: AbstractDraweeControllerBuilder.java */
/* loaded from: classes.dex */
public abstract class b<BUILDER extends b<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements e.f.f.i.d {
    private static final d<Object> p = new a();
    private static final NullPointerException q = new NullPointerException("No image request was specified!");
    private static final AtomicLong r = new AtomicLong();

    /* renamed from: a, reason: collision with root package name */
    private final Context f17277a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<d> f17278b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private Object f17279c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private REQUEST f17280d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private REQUEST f17281e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private REQUEST[] f17282f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f17283g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private j<e.f.d.c<IMAGE>> f17284h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private d<? super INFO> f17285i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private e f17286j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f17287k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f17288l;
    private boolean m;
    private String n;

    @Nullable
    private e.f.f.i.a o;

    /* compiled from: AbstractDraweeControllerBuilder.java */
    /* loaded from: classes.dex */
    static class a extends e.f.f.d.c<Object> {
        a() {
        }

        @Override // e.f.f.d.c, e.f.f.d.d
        public void a(String str, @Nullable Object obj, @Nullable Animatable animatable) {
            if (animatable != null) {
                animatable.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeControllerBuilder.java */
    /* renamed from: e.f.f.d.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0190b implements j<e.f.d.c<IMAGE>> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.f.f.i.a f17289a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f17290b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f17291c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Object f17292d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ c f17293e;

        C0190b(e.f.f.i.a aVar, String str, Object obj, Object obj2, c cVar) {
            this.f17289a = aVar;
            this.f17290b = str;
            this.f17291c = obj;
            this.f17292d = obj2;
            this.f17293e = cVar;
        }

        public String toString() {
            g.b a2 = g.a(this);
            a2.a("request", this.f17291c.toString());
            return a2.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.common.internal.j
        public e.f.d.c<IMAGE> get() {
            return b.this.a(this.f17289a, this.f17290b, this.f17291c, this.f17292d, this.f17293e);
        }
    }

    /* compiled from: AbstractDraweeControllerBuilder.java */
    /* loaded from: classes.dex */
    public enum c {
        FULL_FETCH,
        DISK_CACHE,
        BITMAP_MEMORY_CACHE
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Context context, Set<d> set) {
        this.f17277a = context;
        this.f17278b = set;
        m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String l() {
        return String.valueOf(r.getAndIncrement());
    }

    private void m() {
        this.f17279c = null;
        this.f17280d = null;
        this.f17281e = null;
        this.f17282f = null;
        this.f17283g = true;
        this.f17285i = null;
        this.f17286j = null;
        this.f17287k = false;
        this.f17288l = false;
        this.o = null;
        this.n = null;
    }

    protected abstract e.f.d.c<IMAGE> a(e.f.f.i.a aVar, String str, REQUEST request, Object obj, c cVar);

    public BUILDER b(REQUEST request) {
        this.f17280d = request;
        i();
        return this;
    }

    @Nullable
    public Object c() {
        return this.f17279c;
    }

    @Nullable
    public String d() {
        return this.n;
    }

    @Nullable
    public e e() {
        return this.f17286j;
    }

    @Nullable
    public REQUEST f() {
        return this.f17280d;
    }

    @Nullable
    public e.f.f.i.a g() {
        return this.o;
    }

    public boolean h() {
        return this.m;
    }

    protected final BUILDER i() {
        return this;
    }

    protected abstract e.f.f.d.a j();

    protected void k() {
        boolean z = false;
        h.b(this.f17282f == null || this.f17280d == null, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.f17284h == null || (this.f17282f == null && this.f17280d == null && this.f17281e == null)) {
            z = true;
        }
        h.b(z, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    @Override // e.f.f.i.d
    public /* bridge */ /* synthetic */ e.f.f.i.d a(@Nullable e.f.f.i.a aVar) {
        a(aVar);
        return this;
    }

    protected void c(e.f.f.d.a aVar) {
        if (this.f17287k) {
            aVar.m().a(this.f17287k);
            b(aVar);
        }
    }

    public BUILDER a(Object obj) {
        this.f17279c = obj;
        i();
        return this;
    }

    protected e.f.f.d.a b() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractDraweeControllerBuilder#buildController");
        }
        e.f.f.d.a j2 = j();
        j2.a(h());
        j2.a(d());
        j2.a(e());
        c(j2);
        a(j2);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return j2;
    }

    public BUILDER a(boolean z) {
        this.f17288l = z;
        i();
        return this;
    }

    @Override // e.f.f.i.d
    public BUILDER a(@Nullable e.f.f.i.a aVar) {
        this.o = aVar;
        i();
        return this;
    }

    @Override // e.f.f.i.d
    public e.f.f.d.a a() {
        REQUEST request;
        k();
        if (this.f17280d == null && this.f17282f == null && (request = this.f17281e) != null) {
            this.f17280d = request;
            this.f17281e = null;
        }
        return b();
    }

    protected void b(e.f.f.d.a aVar) {
        if (aVar.k() == null) {
            aVar.a(e.f.f.h.a.a(this.f17277a));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j<e.f.d.c<IMAGE>> a(e.f.f.i.a aVar, String str) {
        j<e.f.d.c<IMAGE>> jVar = this.f17284h;
        if (jVar != null) {
            return jVar;
        }
        j<e.f.d.c<IMAGE>> jVar2 = null;
        REQUEST request = this.f17280d;
        if (request != null) {
            jVar2 = a(aVar, str, request);
        } else {
            REQUEST[] requestArr = this.f17282f;
            if (requestArr != null) {
                jVar2 = a(aVar, str, requestArr, this.f17283g);
            }
        }
        if (jVar2 != null && this.f17281e != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(jVar2);
            arrayList.add(a(aVar, str, this.f17281e));
            jVar2 = e.f.d.g.a(arrayList, false);
        }
        return jVar2 == null ? e.f.d.d.a(q) : jVar2;
    }

    protected j<e.f.d.c<IMAGE>> a(e.f.f.i.a aVar, String str, REQUEST[] requestArr, boolean z) {
        ArrayList arrayList = new ArrayList(requestArr.length * 2);
        if (z) {
            for (REQUEST request : requestArr) {
                arrayList.add(a(aVar, str, (String) request, c.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : requestArr) {
            arrayList.add(a(aVar, str, request2));
        }
        return e.f.d.f.a(arrayList);
    }

    protected j<e.f.d.c<IMAGE>> a(e.f.f.i.a aVar, String str, REQUEST request) {
        return a(aVar, str, (String) request, c.FULL_FETCH);
    }

    protected j<e.f.d.c<IMAGE>> a(e.f.f.i.a aVar, String str, REQUEST request, c cVar) {
        return new C0190b(aVar, str, request, c(), cVar);
    }

    protected void a(e.f.f.d.a aVar) {
        Set<d> set = this.f17278b;
        if (set != null) {
            Iterator<d> it = set.iterator();
            while (it.hasNext()) {
                aVar.a(it.next());
            }
        }
        d<? super INFO> dVar = this.f17285i;
        if (dVar != null) {
            aVar.a((d) dVar);
        }
        if (this.f17288l) {
            aVar.a((d) p);
        }
    }
}
