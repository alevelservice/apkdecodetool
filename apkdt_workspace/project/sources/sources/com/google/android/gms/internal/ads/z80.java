package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z80 implements oe1<Set<ox<sv>>> {
    public static Set<ox<sv>> a(s80 s80Var, c90 c90Var, Executor executor) {
        Set<ox<sv>> i2 = s80.i(c90Var, executor);
        ue1.a(i2, "Cannot return null from a non-@Nullable @Provides method");
        return i2;
    }
}
