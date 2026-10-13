package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class tq1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ qq1 f9627e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tq1(qq1 qq1Var) {
        this.f9627e = qq1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List list;
        obj = this.f9627e.f8996g;
        synchronized (obj) {
            z = this.f9627e.f8997h;
            if (z) {
                z2 = this.f9627e.f8998i;
                if (z2) {
                    qq1.a(this.f9627e, false);
                    qd.a("App went background");
                    list = this.f9627e.f8999j;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            ((sq1) it.next()).a(false);
                        } catch (Exception e2) {
                            qd.b("", e2);
                        }
                    }
                }
            }
            qd.a("App is still foreground");
        }
    }
}
