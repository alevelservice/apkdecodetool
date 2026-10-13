package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yf1 implements Callable {

    /* renamed from: e, reason: collision with root package name */
    private final cf1 f10555e;

    /* renamed from: f, reason: collision with root package name */
    private final ev.b f10556f;

    public yf1(cf1 cf1Var, ev.b bVar) {
        this.f10555e = cf1Var;
        this.f10556f = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Void call() {
        if (this.f10555e.m() != null) {
            this.f10555e.m().get();
        }
        ev l2 = this.f10555e.l();
        if (l2 == null) {
            return null;
        }
        try {
            synchronized (this.f10556f) {
                ev.b bVar = this.f10556f;
                byte[] e2 = l2.e();
                bVar.a(e2, 0, e2.length, q81.c());
            }
            return null;
        } catch (o91 unused) {
            return null;
        }
    }
}
