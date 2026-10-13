package a.g.a.j;

import java.util.HashSet;
import java.util.Iterator;

/* compiled from: ResolutionNode.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    HashSet<o> f279a = new HashSet<>(2);

    /* renamed from: b, reason: collision with root package name */
    int f280b = 0;

    public void a(o oVar) {
        this.f279a.add(oVar);
    }

    public void b() {
        this.f280b = 0;
        Iterator<o> it = this.f279a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public boolean c() {
        return this.f280b == 1;
    }

    public void d() {
        this.f280b = 0;
        this.f279a.clear();
    }

    public void e() {
    }

    public void a() {
        this.f280b = 1;
        Iterator<o> it = this.f279a.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }
}
