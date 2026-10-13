package com.google.android.gms.internal.vision;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class k1 {

    /* renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<n1, List<Throwable>> f12412a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f12413b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f12413b.poll();
        while (poll != null) {
            this.f12412a.remove(poll);
            poll = this.f12413b.poll();
        }
        List<Throwable> list = this.f12412a.get(new n1(th, null));
        if (!z || list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f12412a.putIfAbsent(new n1(th, this.f12413b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
