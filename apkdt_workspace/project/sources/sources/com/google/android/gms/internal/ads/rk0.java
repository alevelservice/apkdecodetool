package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class rk0 implements ko0<lo0<Bundle>> {

    /* renamed from: a, reason: collision with root package name */
    private final Set<String> f9143a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rk0(Set<String> set) {
        this.f9143a = set;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<lo0<Bundle>> a() {
        final ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f9143a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return gz0.a(new lo0(arrayList) { // from class: com.google.android.gms.internal.ads.qk0

            /* renamed from: a, reason: collision with root package name */
            private final ArrayList f8936a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8936a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f8936a);
            }
        });
    }
}
