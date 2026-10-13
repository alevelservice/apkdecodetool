package a.g.a.j;

import a.g.a.j.e;
import java.util.ArrayList;

/* compiled from: Snapshot.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private int f281a;

    /* renamed from: b, reason: collision with root package name */
    private int f282b;

    /* renamed from: c, reason: collision with root package name */
    private int f283c;

    /* renamed from: d, reason: collision with root package name */
    private int f284d;

    /* renamed from: e, reason: collision with root package name */
    private ArrayList<a> f285e = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Snapshot.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private e f286a;

        /* renamed from: b, reason: collision with root package name */
        private e f287b;

        /* renamed from: c, reason: collision with root package name */
        private int f288c;

        /* renamed from: d, reason: collision with root package name */
        private e.c f289d;

        /* renamed from: e, reason: collision with root package name */
        private int f290e;

        public a(e eVar) {
            this.f286a = eVar;
            this.f287b = eVar.g();
            this.f288c = eVar.b();
            this.f289d = eVar.f();
            this.f290e = eVar.a();
        }

        public void a(f fVar) {
            fVar.a(this.f286a.h()).a(this.f287b, this.f288c, this.f289d, this.f290e);
        }

        public void b(f fVar) {
            this.f286a = fVar.a(this.f286a.h());
            e eVar = this.f286a;
            if (eVar != null) {
                this.f287b = eVar.g();
                this.f288c = this.f286a.b();
                this.f289d = this.f286a.f();
                this.f290e = this.f286a.a();
                return;
            }
            this.f287b = null;
            this.f288c = 0;
            this.f289d = e.c.STRONG;
            this.f290e = 0;
        }
    }

    public p(f fVar) {
        this.f281a = fVar.v();
        this.f282b = fVar.w();
        this.f283c = fVar.s();
        this.f284d = fVar.i();
        ArrayList<e> b2 = fVar.b();
        int size = b2.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f285e.add(new a(b2.get(i2)));
        }
    }

    public void a(f fVar) {
        fVar.r(this.f281a);
        fVar.s(this.f282b);
        fVar.o(this.f283c);
        fVar.g(this.f284d);
        int size = this.f285e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f285e.get(i2).a(fVar);
        }
    }

    public void b(f fVar) {
        this.f281a = fVar.v();
        this.f282b = fVar.w();
        this.f283c = fVar.s();
        this.f284d = fVar.i();
        int size = this.f285e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f285e.get(i2).b(fVar);
        }
    }
}
