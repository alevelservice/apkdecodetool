package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class sh {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<do1> f9352a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    private long f9353b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        Iterator<do1> it = this.f9352a.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> a2 = it.next().a();
            if (a2 != null) {
                for (Map.Entry<String, List<String>> entry : a2.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f9353b = Math.max(this.f9353b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        return this.f9353b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(do1 do1Var) {
        this.f9352a.add(do1Var);
    }
}
