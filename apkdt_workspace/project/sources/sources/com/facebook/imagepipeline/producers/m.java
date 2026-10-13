package com.facebook.imagepipeline.producers;

/* compiled from: DelegatingConsumer.java */
/* loaded from: classes.dex */
public abstract class m<I, O> extends b<I> {

    /* renamed from: b, reason: collision with root package name */
    private final Consumer<O> f4016b;

    public m(Consumer<O> consumer) {
        this.f4016b = consumer;
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void b(Throwable th) {
        this.f4016b.a(th);
    }

    public Consumer<O> c() {
        return this.f4016b;
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void b() {
        this.f4016b.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.b
    public void b(float f2) {
        this.f4016b.a(f2);
    }
}
