package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import java.util.concurrent.Executor;

/* compiled from: QualifiedResourceFetchProducer.java */
/* loaded from: classes.dex */
public class m0 extends y {

    /* renamed from: c, reason: collision with root package name */
    private final ContentResolver f4017c;

    public m0(Executor executor, e.f.c.f.h hVar, ContentResolver contentResolver) {
        super(executor, hVar);
        this.f4017c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        return b(this.f4017c.openInputStream(bVar.p()), -1);
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "QualifiedResourceFetchProducer";
    }
}
