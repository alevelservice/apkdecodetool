package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s80 {
    public static Set<ox<vt>> a(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<com.google.android.gms.ads.doubleclick.a>> b(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<qu>> c(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<ot>> d(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<jt>> e(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<wt>> f(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<st1>> g(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<fv0>> h(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    public static Set<ox<sv>> i(c90 c90Var, Executor executor) {
        return a(c90Var, executor);
    }

    private static <T> Set<ox<T>> a(T t, Executor executor) {
        if (((Boolean) mu1.e().a(aw1.Y0)).booleanValue()) {
            return Collections.singleton(new ox(t, executor));
        }
        return Collections.emptySet();
    }
}
