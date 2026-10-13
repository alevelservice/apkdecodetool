package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gg0<AdT> implements oe1<eg0<AdT>> {
    public static <AdT> eg0<AdT> a(zu0 zu0Var, zf0 zf0Var, mt mtVar, iv0 iv0Var, tq<AdT> tqVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        return new eg0<>(zu0Var, zf0Var, mtVar, iv0Var, tqVar, executor, scheduledExecutorService);
    }
}
