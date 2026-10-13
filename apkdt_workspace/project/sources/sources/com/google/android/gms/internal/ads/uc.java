package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uc {

    /* renamed from: a, reason: collision with root package name */
    private Map<Integer, Bitmap> f9705a = new ConcurrentHashMap();

    public uc() {
        new AtomicInteger(0);
    }

    public final Bitmap a(Integer num) {
        return this.f9705a.get(num);
    }
}
