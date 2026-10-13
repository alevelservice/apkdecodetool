package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q7 {

    /* renamed from: a, reason: collision with root package name */
    private WeakHashMap<Context, s7> f8855a = new WeakHashMap<>();

    public final Future<o7> a(Context context) {
        return yd.f10540a.submit(new p7(this, context));
    }
}
