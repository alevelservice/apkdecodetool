package e.f.i.a.a;

import android.graphics.Bitmap;
import java.util.List;

/* compiled from: AnimatedImageResultBuilder.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final c f17478a;

    /* renamed from: b, reason: collision with root package name */
    private e.f.c.g.a<Bitmap> f17479b;

    /* renamed from: c, reason: collision with root package name */
    private List<e.f.c.g.a<Bitmap>> f17480c;

    /* renamed from: d, reason: collision with root package name */
    private int f17481d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(c cVar) {
        this.f17478a = cVar;
    }

    public f a(e.f.c.g.a<Bitmap> aVar) {
        this.f17479b = e.f.c.g.a.a((e.f.c.g.a) aVar);
        return this;
    }

    public List<e.f.c.g.a<Bitmap>> b() {
        return e.f.c.g.a.a(this.f17480c);
    }

    public int c() {
        return this.f17481d;
    }

    public c d() {
        return this.f17478a;
    }

    public e.f.c.g.a<Bitmap> e() {
        return e.f.c.g.a.a((e.f.c.g.a) this.f17479b);
    }

    public f a(int i2) {
        this.f17481d = i2;
        return this;
    }

    public f a(List<e.f.c.g.a<Bitmap>> list) {
        this.f17480c = e.f.c.g.a.a(list);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e a() {
        try {
            return new e(this);
        } finally {
            e.f.c.g.a.b(this.f17479b);
            this.f17479b = null;
            e.f.c.g.a.c(this.f17480c);
            this.f17480c = null;
        }
    }
}
