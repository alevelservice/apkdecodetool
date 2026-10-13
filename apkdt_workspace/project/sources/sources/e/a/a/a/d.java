package e.a.a.a;

import e.a.a.a.c.a;
import java.util.LinkedList;
import java.util.Queue;

/* compiled from: EventQueue.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private Queue<a> f16805a = new LinkedList();

    public void a(a aVar) {
        this.f16805a.offer(aVar);
    }

    public boolean b() {
        return this.f16805a.isEmpty();
    }

    public a a() {
        return this.f16805a.poll();
    }
}
