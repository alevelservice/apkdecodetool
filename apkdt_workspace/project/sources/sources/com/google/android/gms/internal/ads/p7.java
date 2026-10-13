package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p7 implements Callable<o7> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f8656e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ q7 f8657f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p7(q7 q7Var, Context context) {
        this.f8657f = q7Var;
        this.f8656e = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ o7 call() {
        WeakHashMap weakHashMap;
        o7 a2;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f8657f.f8855a;
        s7 s7Var = (s7) weakHashMap.get(this.f8656e);
        if (s7Var != null) {
            if (!(s7Var.f9282a + ((Long) mu1.e().a(aw1.e1)).longValue() < com.google.android.gms.ads.internal.n.j().a())) {
                a2 = new n7(this.f8656e, s7Var.f9283b).a();
                weakHashMap2 = this.f8657f.f8855a;
                weakHashMap2.put(this.f8656e, new s7(this.f8657f, a2));
                return a2;
            }
        }
        a2 = new n7(this.f8656e).a();
        weakHashMap2 = this.f8657f.f8855a;
        weakHashMap2.put(this.f8656e, new s7(this.f8657f, a2));
        return a2;
    }
}
