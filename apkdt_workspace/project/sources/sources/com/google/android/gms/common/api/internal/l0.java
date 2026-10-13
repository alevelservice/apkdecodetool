package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class l0<O extends a.d> extends z {

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.api.e<O> f5103b;

    public l0(com.google.android.gms.common.api.e<O> eVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f5103b = eVar;
    }

    @Override // com.google.android.gms.common.api.f
    public final <A extends a.b, R extends com.google.android.gms.common.api.m, T extends d<R, A>> T a(@NonNull T t) {
        this.f5103b.b((com.google.android.gms.common.api.e<O>) t);
        return t;
    }

    @Override // com.google.android.gms.common.api.f
    public final <A extends a.b, T extends d<? extends com.google.android.gms.common.api.m, A>> T b(@NonNull T t) {
        this.f5103b.c(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.f
    public final Looper a() {
        return this.f5103b.g();
    }
}
