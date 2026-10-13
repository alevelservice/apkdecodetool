package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kn implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ hn f7723a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kn(hn hnVar) {
        this.f7723a = hnVar;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        boolean a2;
        qn qnVar;
        Executor executor;
        a2 = this.f7723a.a((Map<String, String>) map);
        if (a2) {
            if (!((Boolean) mu1.e().a(aw1.e3)).booleanValue()) {
                qnVar = this.f7723a.f7123d;
                qnVar.c();
            } else {
                executor = this.f7723a.f7122c;
                executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.jn

                    /* renamed from: e, reason: collision with root package name */
                    private final kn f7531e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7531e = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        qn qnVar2;
                        qnVar2 = this.f7531e.f7723a.f7123d;
                        qnVar2.c();
                    }
                });
            }
        }
    }
}
