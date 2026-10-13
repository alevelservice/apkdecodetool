package com.facebook.imagepipeline.producers;

import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: StatefulProducerRunnable.java */
/* loaded from: classes.dex */
public abstract class p0<T> extends e.f.c.b.h<T> {

    /* renamed from: f, reason: collision with root package name */
    private final Consumer<T> f4051f;

    /* renamed from: g, reason: collision with root package name */
    private final l0 f4052g;

    /* renamed from: h, reason: collision with root package name */
    private final String f4053h;

    /* renamed from: i, reason: collision with root package name */
    private final String f4054i;

    public p0(Consumer<T> consumer, l0 l0Var, String str, String str2) {
        this.f4051f = consumer;
        this.f4052g = l0Var;
        this.f4053h = str;
        this.f4054i = str2;
        this.f4052g.a(this.f4054i, this.f4053h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.c.b.h
    public void a(Exception exc) {
        l0 l0Var = this.f4052g;
        String str = this.f4054i;
        l0Var.a(str, this.f4053h, exc, l0Var.a(str) ? b(exc) : null);
        this.f4051f.a(exc);
    }

    @Nullable
    protected Map<String, String> b(Exception exc) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.c.b.h
    public void b(T t) {
        l0 l0Var = this.f4052g;
        String str = this.f4054i;
        l0Var.b(str, this.f4053h, l0Var.a(str) ? c(t) : null);
        this.f4051f.a(t, 1);
    }

    @Nullable
    protected Map<String, String> c(T t) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.c.b.h
    public void c() {
        l0 l0Var = this.f4052g;
        String str = this.f4054i;
        l0Var.a(str, this.f4053h, l0Var.a(str) ? d() : null);
        this.f4051f.a();
    }

    @Nullable
    protected Map<String, String> d() {
        return null;
    }
}
