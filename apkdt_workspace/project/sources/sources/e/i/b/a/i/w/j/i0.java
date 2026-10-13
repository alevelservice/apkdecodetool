package e.i.b.a.i.w.j;

import android.content.Context;

/* compiled from: SchemaManager_Factory.java */
/* loaded from: classes.dex */
public final class i0 implements com.google.android.datatransport.runtime.dagger.internal.b<h0> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Context> f17784a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<String> f17785b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<Integer> f17786c;

    public i0(javax.inject.a<Context> aVar, javax.inject.a<String> aVar2, javax.inject.a<Integer> aVar3) {
        this.f17784a = aVar;
        this.f17785b = aVar2;
        this.f17786c = aVar3;
    }

    public static i0 a(javax.inject.a<Context> aVar, javax.inject.a<String> aVar2, javax.inject.a<Integer> aVar3) {
        return new i0(aVar, aVar2, aVar3);
    }

    public static h0 a(Context context, String str, int i2) {
        return new h0(context, str, i2);
    }

    @Override // javax.inject.a
    public h0 get() {
        return a(this.f17784a.get(), this.f17785b.get(), this.f17786c.get().intValue());
    }
}
