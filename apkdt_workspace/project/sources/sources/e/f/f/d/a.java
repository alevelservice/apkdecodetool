package e.f.f.d;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import e.f.f.c.a;
import e.f.f.c.b;
import e.f.f.h.a;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: AbstractDraweeController.java */
@NotThreadSafe
/* loaded from: classes.dex */
public abstract class a<T, INFO> implements e.f.f.i.a, a.b, a.InterfaceC0191a {
    private static final Class<?> t = a.class;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.f.c.a f17263b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f17264c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private e.f.f.c.c f17265d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private e.f.f.h.a f17266e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    protected d<INFO> f17267f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private e.f.f.i.c f17268g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Drawable f17269h;

    /* renamed from: i, reason: collision with root package name */
    private String f17270i;

    /* renamed from: j, reason: collision with root package name */
    private Object f17271j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f17272k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f17273l;
    private boolean m;
    private boolean n;

    @Nullable
    private String o;

    @Nullable
    private e.f.d.c<T> p;

    @Nullable
    private T q;

    @Nullable
    private Drawable r;

    /* renamed from: a, reason: collision with root package name */
    private final e.f.f.c.b f17262a = e.f.f.c.b.a();
    private boolean s = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeController.java */
    /* renamed from: e.f.f.d.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0189a extends e.f.d.b<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f17274a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f17275b;

        C0189a(String str, boolean z) {
            this.f17274a = str;
            this.f17275b = z;
        }

        @Override // e.f.d.e
        public void d(e.f.d.c<T> cVar) {
            boolean b2 = cVar.b();
            a.this.a(this.f17274a, cVar, cVar.getProgress(), b2);
        }

        @Override // e.f.d.b
        public void e(e.f.d.c<T> cVar) {
            a.this.a(this.f17274a, (e.f.d.c) cVar, cVar.c(), true);
        }

        @Override // e.f.d.b
        public void f(e.f.d.c<T> cVar) {
            boolean b2 = cVar.b();
            boolean d2 = cVar.d();
            float progress = cVar.getProgress();
            T e2 = cVar.e();
            if (e2 != null) {
                a.this.a(this.f17274a, cVar, e2, progress, b2, this.f17275b, d2);
            } else if (b2) {
                a.this.a(this.f17274a, (e.f.d.c) cVar, (Throwable) new NullPointerException(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractDraweeController.java */
    /* loaded from: classes.dex */
    public static class b<INFO> extends f<INFO> {
        private b() {
        }

        public static <INFO> b<INFO> a(d<? super INFO> dVar, d<? super INFO> dVar2) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("AbstractDraweeController#createInternal");
            }
            b<INFO> bVar = new b<>();
            bVar.a(dVar);
            bVar.a(dVar2);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return bVar;
        }
    }

    public a(e.f.f.c.a aVar, Executor executor, String str, Object obj) {
        this.f17263b = aVar;
        this.f17264c = executor;
        c(str, obj);
    }

    private synchronized void c(String str, Object obj) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractDraweeController#init");
        }
        this.f17262a.a(b.a.ON_INIT_CONTROLLER);
        if (!this.s && this.f17263b != null) {
            this.f17263b.a(this);
        }
        this.f17272k = false;
        p();
        this.n = false;
        if (this.f17265d != null) {
            this.f17265d.a();
        }
        if (this.f17266e != null) {
            this.f17266e.a();
            this.f17266e.a(this);
        }
        if (this.f17267f instanceof b) {
            ((b) this.f17267f).a();
        } else {
            this.f17267f = null;
        }
        if (this.f17268g != null) {
            this.f17268g.a();
            this.f17268g.a((Drawable) null);
            this.f17268g = null;
        }
        this.f17269h = null;
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.f17270i, str);
        }
        this.f17270i = str;
        this.f17271j = obj;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    private void p() {
        boolean z = this.f17273l;
        this.f17273l = false;
        this.m = false;
        e.f.d.c<T> cVar = this.p;
        if (cVar != null) {
            cVar.close();
            this.p = null;
        }
        Drawable drawable = this.r;
        if (drawable != null) {
            a(drawable);
        }
        if (this.o != null) {
            this.o = null;
        }
        this.r = null;
        T t2 = this.q;
        if (t2 != null) {
            d("release", t2);
            e(this.q);
            this.q = null;
        }
        if (z) {
            h().a(this.f17270i);
        }
    }

    private boolean q() {
        e.f.f.c.c cVar;
        return this.m && (cVar = this.f17265d) != null && cVar.d();
    }

    protected abstract Drawable a(T t2);

    protected abstract void a(@Nullable Drawable drawable);

    public void a(@Nullable e eVar) {
    }

    public void b(d<? super INFO> dVar) {
        h.a(dVar);
        d<INFO> dVar2 = this.f17267f;
        if (dVar2 instanceof b) {
            ((b) dVar2).b(dVar);
        } else if (dVar2 == dVar) {
            this.f17267f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str, T t2) {
    }

    @Nullable
    protected abstract INFO d(T t2);

    @Override // e.f.f.h.a.InterfaceC0191a
    public boolean d() {
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.f17270i);
        }
        if (!q()) {
            return false;
        }
        this.f17265d.b();
        this.f17268g.a();
        o();
        return true;
    }

    @Override // e.f.f.i.a
    public void e() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractDraweeController#onAttach");
        }
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.f17270i, this.f17273l ? "request already submitted" : "request needs submit");
        }
        this.f17262a.a(b.a.ON_ATTACH_CONTROLLER);
        h.a(this.f17268g);
        this.f17263b.a(this);
        this.f17272k = true;
        if (!this.f17273l) {
            o();
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    protected abstract void e(@Nullable T t2);

    @Nullable
    public Animatable f() {
        Object obj = this.r;
        if (obj instanceof Animatable) {
            return (Animatable) obj;
        }
        return null;
    }

    @Nullable
    protected T g() {
        return null;
    }

    protected d<INFO> h() {
        d<INFO> dVar = this.f17267f;
        return dVar == null ? c.a() : dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Drawable i() {
        return this.f17269h;
    }

    protected abstract e.f.d.c<T> j();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public e.f.f.h.a k() {
        return this.f17266e;
    }

    public String l() {
        return this.f17270i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e.f.f.c.c m() {
        if (this.f17265d == null) {
            this.f17265d = new e.f.f.c.c();
        }
        return this.f17265d;
    }

    protected boolean n() {
        return q();
    }

    protected void o() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractDraweeController#submitRequest");
        }
        T g2 = g();
        if (g2 != null) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("AbstractDraweeController#submitRequest->cache");
            }
            this.p = null;
            this.f17273l = true;
            this.m = false;
            this.f17262a.a(b.a.ON_SUBMIT_CACHE_HIT);
            h().b(this.f17270i, this.f17271j);
            b(this.f17270i, g2);
            a(this.f17270i, this.p, g2, 1.0f, true, true, true);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
                return;
            }
            return;
        }
        this.f17262a.a(b.a.ON_DATASOURCE_SUBMIT);
        h().b(this.f17270i, this.f17271j);
        this.f17268g.a(0.0f, true);
        this.f17273l = true;
        this.m = false;
        this.p = j();
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.f17270i, Integer.valueOf(System.identityHashCode(this.p)));
        }
        this.p.a(new C0189a(this.f17270i, this.p.a()), this.f17264c);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    public String toString() {
        g.b a2 = g.a(this);
        a2.a("isAttached", this.f17272k);
        a2.a("isRequestSubmitted", this.f17273l);
        a2.a("hasFetchFailed", this.m);
        a2.a("fetchedImage", c(this.q));
        a2.a("events", this.f17262a.toString());
        return a2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Object obj) {
        c(str, obj);
        this.s = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(@Nullable Drawable drawable) {
        this.f17269h = drawable;
        e.f.f.i.c cVar = this.f17268g;
        if (cVar != null) {
            cVar.a(this.f17269h);
        }
    }

    @Override // e.f.f.c.a.b
    public void a() {
        this.f17262a.a(b.a.ON_RELEASE_CONTROLLER);
        e.f.f.c.c cVar = this.f17265d;
        if (cVar != null) {
            cVar.c();
        }
        e.f.f.h.a aVar = this.f17266e;
        if (aVar != null) {
            aVar.c();
        }
        e.f.f.i.c cVar2 = this.f17268g;
        if (cVar2 != null) {
            cVar2.a();
        }
        p();
    }

    private void d(String str, T t2) {
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.b(t, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.f17270i, str, b((a<T, INFO>) t2), Integer.valueOf(c(t2)));
        }
    }

    @Override // e.f.f.i.a
    public void b() {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractDraweeController#onDetach");
        }
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.f17270i);
        }
        this.f17262a.a(b.a.ON_DETACH_CONTROLLER);
        this.f17272k = false;
        this.f17263b.b(this);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@Nullable e.f.f.h.a aVar) {
        this.f17266e = aVar;
        e.f.f.h.a aVar2 = this.f17266e;
        if (aVar2 != null) {
            aVar2.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        this.n = z;
    }

    protected String b(@Nullable T t2) {
        return t2 != null ? t2.getClass().getSimpleName() : "<null>";
    }

    public void a(@Nullable String str) {
        this.o = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(d<? super INFO> dVar) {
        h.a(dVar);
        d<INFO> dVar2 = this.f17267f;
        if (dVar2 instanceof b) {
            ((b) dVar2).a(dVar);
        } else if (dVar2 != null) {
            this.f17267f = b.a(dVar2, dVar);
        } else {
            this.f17267f = dVar;
        }
    }

    @Override // e.f.f.i.a
    public void a(@Nullable e.f.f.i.b bVar) {
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.f17270i, bVar);
        }
        this.f17262a.a(bVar != null ? b.a.ON_SET_HIERARCHY : b.a.ON_CLEAR_HIERARCHY);
        if (this.f17273l) {
            this.f17263b.a(this);
            a();
        }
        e.f.f.i.c cVar = this.f17268g;
        if (cVar != null) {
            cVar.a((Drawable) null);
            this.f17268g = null;
        }
        if (bVar != null) {
            h.a(bVar instanceof e.f.f.i.c);
            this.f17268g = (e.f.f.i.c) bVar;
            this.f17268g.a(this.f17269h);
        }
    }

    @Override // e.f.f.i.a
    @Nullable
    public e.f.f.i.b c() {
        return this.f17268g;
    }

    protected int c(@Nullable T t2) {
        return System.identityHashCode(t2);
    }

    @Override // e.f.f.i.a
    public boolean a(MotionEvent motionEvent) {
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.f17270i, motionEvent);
        }
        e.f.f.h.a aVar = this.f17266e;
        if (aVar == null) {
            return false;
        }
        if (!aVar.b() && !n()) {
            return false;
        }
        this.f17266e.a(motionEvent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, e.f.d.c<T> cVar, @Nullable T t2, float f2, boolean z, boolean z2, boolean z3) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("AbstractDraweeController#onNewResultInternal");
            }
            if (!a(str, (e.f.d.c) cVar)) {
                d("ignore_old_datasource @ onNewResult", t2);
                e(t2);
                cVar.close();
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                    return;
                }
                return;
            }
            this.f17262a.a(z ? b.a.ON_DATASOURCE_RESULT : b.a.ON_DATASOURCE_RESULT_INT);
            try {
                Drawable a2 = a((a<T, INFO>) t2);
                T t3 = this.q;
                Drawable drawable = this.r;
                this.q = t2;
                this.r = a2;
                try {
                    if (z) {
                        d("set_final_result @ onNewResult", t2);
                        this.p = null;
                        this.f17268g.a(a2, 1.0f, z2);
                        h().a(str, d(t2), f());
                    } else if (z3) {
                        d("set_temporary_result @ onNewResult", t2);
                        this.f17268g.a(a2, 1.0f, z2);
                        h().a(str, d(t2), f());
                    } else {
                        d("set_intermediate_result @ onNewResult", t2);
                        this.f17268g.a(a2, f2, z2);
                        h().a(str, (String) d(t2));
                    }
                    if (drawable != null && drawable != a2) {
                        a(drawable);
                    }
                    if (t3 != null && t3 != t2) {
                        d("release_previous_result @ onNewResult", t3);
                        e(t3);
                    }
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                    }
                } catch (Throwable th) {
                    if (drawable != null && drawable != a2) {
                        a(drawable);
                    }
                    if (t3 != null && t3 != t2) {
                        d("release_previous_result @ onNewResult", t3);
                        e(t3);
                    }
                    throw th;
                }
            } catch (Exception e2) {
                d("drawable_failed @ onNewResult", t2);
                e(t2);
                a(str, cVar, e2, z);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        } catch (Throwable th2) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, e.f.d.c<T> cVar, Throwable th, boolean z) {
        Drawable drawable;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("AbstractDraweeController#onFailureInternal");
        }
        if (!a(str, (e.f.d.c) cVar)) {
            a("ignore_old_datasource @ onFailure", th);
            cVar.close();
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
                return;
            }
            return;
        }
        this.f17262a.a(z ? b.a.ON_DATASOURCE_FAILURE : b.a.ON_DATASOURCE_FAILURE_INT);
        if (z) {
            a("final_failed @ onFailure", th);
            this.p = null;
            this.m = true;
            if (this.n && (drawable = this.r) != null) {
                this.f17268g.a(drawable, 1.0f, true);
            } else if (q()) {
                this.f17268g.a(th);
            } else {
                this.f17268g.b(th);
            }
            h().a(this.f17270i, th);
        } else {
            a("intermediate_failed @ onFailure", th);
            h().b(this.f17270i, th);
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, e.f.d.c<T> cVar, float f2, boolean z) {
        if (!a(str, (e.f.d.c) cVar)) {
            a("ignore_old_datasource @ onProgress", (Throwable) null);
            cVar.close();
        } else {
            if (z) {
                return;
            }
            this.f17268g.a(f2, false);
        }
    }

    private boolean a(String str, e.f.d.c<T> cVar) {
        if (cVar == null && this.p == null) {
            return true;
        }
        return str.equals(this.f17270i) && cVar == this.p && this.f17273l;
    }

    private void a(String str, Throwable th) {
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(t, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.f17270i, str, th);
        }
    }
}
