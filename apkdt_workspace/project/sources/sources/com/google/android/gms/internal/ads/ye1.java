package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ye1<T> {

    /* renamed from: a, reason: collision with root package name */
    private final List<af1<T>> f10548a;

    /* renamed from: b, reason: collision with root package name */
    private final List<af1<Collection<T>>> f10549b;

    private ye1(int i2, int i3) {
        this.f10548a = ne1.a(i2);
        this.f10549b = ne1.a(i3);
    }

    public final ye1<T> a(af1<? extends T> af1Var) {
        this.f10548a.add(af1Var);
        return this;
    }

    public final ye1<T> b(af1<? extends Collection<? extends T>> af1Var) {
        this.f10549b.add(af1Var);
        return this;
    }

    public final we1<T> a() {
        return new we1<>(this.f10548a, this.f10549b);
    }
}
