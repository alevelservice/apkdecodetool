package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* compiled from: MetadataBackendRegistry_Factory.java */
/* loaded from: classes.dex */
public final class m implements com.google.android.datatransport.runtime.dagger.internal.b<l> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Context> f4384a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<j> f4385b;

    public m(javax.inject.a<Context> aVar, javax.inject.a<j> aVar2) {
        this.f4384a = aVar;
        this.f4385b = aVar2;
    }

    public static m a(javax.inject.a<Context> aVar, javax.inject.a<j> aVar2) {
        return new m(aVar, aVar2);
    }

    public static l a(Context context, Object obj) {
        return new l(context, (j) obj);
    }

    @Override // javax.inject.a
    public l get() {
        return a(this.f4384a.get(), this.f4385b.get());
    }
}
