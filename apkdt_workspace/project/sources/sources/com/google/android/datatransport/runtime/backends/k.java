package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* compiled from: CreationContextFactory_Factory.java */
/* loaded from: classes.dex */
public final class k implements com.google.android.datatransport.runtime.dagger.internal.b<j> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Context> f4376a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f4377b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f4378c;

    public k(javax.inject.a<Context> aVar, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar2, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar3) {
        this.f4376a = aVar;
        this.f4377b = aVar2;
        this.f4378c = aVar3;
    }

    public static k a(javax.inject.a<Context> aVar, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar2, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar3) {
        return new k(aVar, aVar2, aVar3);
    }

    public static j a(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        return new j(context, aVar, aVar2);
    }

    @Override // javax.inject.a
    public j get() {
        return a(this.f4376a.get(), this.f4377b.get(), this.f4378c.get());
    }
}
