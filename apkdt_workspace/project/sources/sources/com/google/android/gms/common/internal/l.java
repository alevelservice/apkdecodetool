package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private static final b f5328a = new w();

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface a<R extends com.google.android.gms.common.api.m, T> {
        @KeepForSdk
        T a(R r);
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public interface b {
        com.google.android.gms.common.api.b a(Status status);
    }

    @KeepForSdk
    public static <R extends com.google.android.gms.common.api.m, T> e.i.b.b.d.h<T> a(com.google.android.gms.common.api.h<R> hVar, a<R, T> aVar) {
        b bVar = f5328a;
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        hVar.a(new y(hVar, iVar, aVar, bVar));
        return iVar.a();
    }

    @KeepForSdk
    public static <R extends com.google.android.gms.common.api.m, T extends com.google.android.gms.common.api.l<R>> e.i.b.b.d.h<T> a(com.google.android.gms.common.api.h<R> hVar, T t) {
        return a(hVar, new x(t));
    }

    @KeepForSdk
    public static <R extends com.google.android.gms.common.api.m> e.i.b.b.d.h<Void> a(com.google.android.gms.common.api.h<R> hVar) {
        return a(hVar, new z());
    }
}
