package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ya implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f10520e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ wa f10521f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ya(wa waVar, Context context) {
        this.f10521f = waVar;
        this.f10520e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f10521f.f10067d;
        synchronized (obj) {
            this.f10521f.f10068e = wa.c(this.f10520e);
            obj2 = this.f10521f.f10067d;
            obj2.notifyAll();
        }
    }
}
