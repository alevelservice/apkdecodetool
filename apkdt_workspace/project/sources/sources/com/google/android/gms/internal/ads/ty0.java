package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ly0;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ty0<V> extends ly0<Object, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ty0(ex0<? extends qz0<?>> ex0Var, boolean z, Executor executor, Callable<V> callable) {
        a((ly0.a) new yy0(this, ex0Var, z, new wy0(this, callable, executor)));
    }
}
