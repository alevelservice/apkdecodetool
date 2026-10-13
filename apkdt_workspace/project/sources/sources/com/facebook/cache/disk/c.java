package com.facebook.cache.disk;

import e.f.b.a.j;
import java.util.Collection;

/* compiled from: DiskStorage.java */
/* loaded from: classes.dex */
public interface c {

    /* compiled from: DiskStorage.java */
    /* loaded from: classes.dex */
    public interface a {
        String getId();

        long i();

        long j();
    }

    /* compiled from: DiskStorage.java */
    /* loaded from: classes.dex */
    public interface b {
        e.f.a.a a(Object obj);

        void a(j jVar, Object obj);

        boolean n();
    }

    long a(a aVar);

    long a(String str);

    b a(String str, Object obj);

    boolean a();

    e.f.a.a b(String str, Object obj);

    void b();

    Collection<a> c();
}
