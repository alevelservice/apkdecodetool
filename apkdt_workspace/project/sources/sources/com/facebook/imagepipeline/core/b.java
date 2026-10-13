package com.facebook.imagepipeline.core;

import com.facebook.cache.disk.d;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: DiskStorageCacheFactory.java */
/* loaded from: classes.dex */
public class b implements f {

    /* renamed from: a, reason: collision with root package name */
    private c f3686a;

    public b(c cVar) {
        this.f3686a = cVar;
    }

    public static com.facebook.cache.disk.d a(com.facebook.cache.disk.b bVar, com.facebook.cache.disk.c cVar) {
        return a(bVar, cVar, Executors.newSingleThreadExecutor());
    }

    public static com.facebook.cache.disk.d a(com.facebook.cache.disk.b bVar, com.facebook.cache.disk.c cVar, Executor executor) {
        return new com.facebook.cache.disk.d(cVar, bVar.h(), new d.c(bVar.k(), bVar.j(), bVar.f()), bVar.d(), bVar.c(), bVar.g(), bVar.e(), executor, bVar.i());
    }

    @Override // com.facebook.imagepipeline.core.f
    public com.facebook.cache.disk.h a(com.facebook.cache.disk.b bVar) {
        return a(bVar, this.f3686a.a(bVar));
    }
}
