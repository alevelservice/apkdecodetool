package com.facebook.imagepipeline.producers;

import java.io.FileInputStream;
import java.util.concurrent.Executor;

/* compiled from: LocalFileFetchProducer.java */
/* loaded from: classes.dex */
public class z extends y {
    public z(Executor executor, e.f.c.f.h hVar) {
        super(executor, hVar);
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        return b(new FileInputStream(bVar.o().toString()), (int) bVar.o().length());
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "LocalFileFetchProducer";
    }
}
