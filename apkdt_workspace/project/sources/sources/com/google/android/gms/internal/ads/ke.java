package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public class ke<T> {

    /* renamed from: a, reason: collision with root package name */
    private final he<T> f7674a = new he<>();

    /* renamed from: b, reason: collision with root package name */
    private final AtomicInteger f7675b = new AtomicInteger(0);

    public ke() {
        gz0.a(this.f7674a, new ne(this), yd.f10544e);
    }

    @Deprecated
    public final void a(le<T> leVar, je jeVar) {
        gz0.a(this.f7674a, new me(this, leVar, jeVar), yd.f10544e);
    }

    @Deprecated
    public final void b() {
        this.f7674a.a(new Exception());
    }

    @Deprecated
    public final void a(T t) {
        this.f7674a.b(t);
    }

    @Deprecated
    public final int a() {
        return this.f7675b.get();
    }
}
