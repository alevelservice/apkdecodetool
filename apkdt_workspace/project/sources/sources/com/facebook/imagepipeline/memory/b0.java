package com.facebook.imagepipeline.memory;

import java.util.LinkedList;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: OOMSoftReferenceBucket.java */
@NotThreadSafe
/* loaded from: classes.dex */
class b0<V> extends f<V> {

    /* renamed from: f, reason: collision with root package name */
    private LinkedList<e.f.c.g.b<V>> f3804f;

    public b0(int i2, int i3, int i4) {
        super(i2, i3, i4, false);
        this.f3804f = new LinkedList<>();
    }

    @Override // com.facebook.imagepipeline.memory.f
    void a(V v) {
        e.f.c.g.b<V> poll = this.f3804f.poll();
        if (poll == null) {
            poll = new e.f.c.g.b<>();
        }
        poll.a(v);
        this.f3842c.add(poll);
    }

    @Override // com.facebook.imagepipeline.memory.f
    public V f() {
        e.f.c.g.b<V> bVar = (e.f.c.g.b) this.f3842c.poll();
        V b2 = bVar.b();
        bVar.a();
        this.f3804f.add(bVar);
        return b2;
    }
}
