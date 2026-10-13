package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import com.google.firebase.p.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OptionalProvider.java */
/* loaded from: classes.dex */
public class b0<T> implements com.google.firebase.p.b<T>, com.google.firebase.p.a<T> {

    /* renamed from: c, reason: collision with root package name */
    private static final a.InterfaceC0141a<Object> f14295c = z.a();

    /* renamed from: d, reason: collision with root package name */
    private static final com.google.firebase.p.b<Object> f14296d = a0.a();

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private a.InterfaceC0141a<T> f14297a;

    /* renamed from: b, reason: collision with root package name */
    private volatile com.google.firebase.p.b<T> f14298b;

    private b0(a.InterfaceC0141a<T> interfaceC0141a, com.google.firebase.p.b<T> bVar) {
        this.f14297a = interfaceC0141a;
        this.f14298b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b0<T> a() {
        return new b0<>(f14295c, f14296d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(com.google.firebase.p.b bVar) {
    }

    @Override // com.google.firebase.p.b
    public T get() {
        return this.f14298b.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.google.firebase.p.b<T> bVar) {
        a.InterfaceC0141a<T> interfaceC0141a;
        if (this.f14298b == f14296d) {
            synchronized (this) {
                interfaceC0141a = this.f14297a;
                this.f14297a = null;
                this.f14298b = bVar;
            }
            interfaceC0141a.a(bVar);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }
}
