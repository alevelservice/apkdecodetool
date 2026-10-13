package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gh implements Iterable<eh> {

    /* renamed from: e, reason: collision with root package name */
    private final List<eh> f6873e = new ArrayList();

    public static boolean a(tf tfVar) {
        eh b2 = b(tfVar);
        if (b2 == null) {
            return false;
        }
        b2.f6424d.b();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static eh b(tf tfVar) {
        Iterator<eh> it = com.google.android.gms.ads.internal.n.y().iterator();
        while (it.hasNext()) {
            eh next = it.next();
            if (next.f6423c == tfVar) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<eh> iterator() {
        return this.f6873e.iterator();
    }

    public final void a(eh ehVar) {
        this.f6873e.add(ehVar);
    }

    public final void b(eh ehVar) {
        this.f6873e.remove(ehVar);
    }
}
