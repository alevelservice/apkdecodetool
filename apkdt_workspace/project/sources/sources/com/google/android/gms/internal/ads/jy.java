package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.j;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jy implements oe1<dy> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<j.a>>> f7580a;

    private jy(af1<Set<ox<j.a>>> af1Var) {
        this.f7580a = af1Var;
    }

    public static jy a(af1<Set<ox<j.a>>> af1Var) {
        return new jy(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new dy(this.f7580a.get());
    }
}
