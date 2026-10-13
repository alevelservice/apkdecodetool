package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class c4 {

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private static final dc<h2> f5916b = new f4();

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    private static final dc<h2> f5917c = new e4();

    /* renamed from: a, reason: collision with root package name */
    private final q2 f5918a;

    public c4(Context context, zzawv zzawvVar, String str) {
        this.f5918a = new q2(context, zzawvVar, str, f5916b, f5917c);
    }

    public final <I, O> t3<I, O> a(String str, z3<I> z3Var, v3<O> v3Var) {
        return new h4(this.f5918a, str, z3Var, v3Var);
    }

    public final l4 a() {
        return new l4(this.f5918a);
    }
}
