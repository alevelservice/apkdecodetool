package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class h71 {

    /* renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<g71, List<Throwable>> f7018a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f7019b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f7019b.poll();
        while (poll != null) {
            this.f7018a.remove(poll);
            poll = this.f7019b.poll();
        }
        List<Throwable> list = this.f7018a.get(new g71(th, null));
        if (!z || list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f7018a.putIfAbsent(new g71(th, this.f7019b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
