package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class n1 {

    /* renamed from: a, reason: collision with root package name */
    private final Map<BasePendingResult<?>, Boolean> f5109a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    private final Map<e.i.b.b.d.i<?>, Boolean> f5110b = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(BasePendingResult<? extends com.google.android.gms.common.api.m> basePendingResult, boolean z) {
        this.f5109a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.a((h.a) new w(this, basePendingResult));
    }

    public final void b() {
        a(false, g.r);
    }

    public final void c() {
        a(true, z0.f5148a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <TResult> void a(e.i.b.b.d.i<TResult> iVar, boolean z) {
        this.f5110b.put(iVar, Boolean.valueOf(z));
        iVar.a().a(new v(this, iVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return (this.f5109a.isEmpty() && this.f5110b.isEmpty()) ? false : true;
    }

    private final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f5109a) {
            hashMap = new HashMap(this.f5109a);
        }
        synchronized (this.f5110b) {
            hashMap2 = new HashMap(this.f5110b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).b(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((e.i.b.b.d.i) entry2.getKey()).b((Exception) new com.google.android.gms.common.api.b(status));
            }
        }
    }
}
