package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i40 {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f7223a;

    /* renamed from: b, reason: collision with root package name */
    private final ao f7224b;

    /* renamed from: c, reason: collision with root package name */
    private final nx f7225c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i40(Executor executor, ao aoVar, nx nxVar) {
        this.f7223a = executor;
        this.f7225c = nxVar;
        this.f7224b = aoVar;
    }

    public final void a(final fi fiVar) {
        if (fiVar == null) {
            return;
        }
        this.f7225c.a(fiVar.getView());
        this.f7225c.a(new fq1(fiVar) { // from class: com.google.android.gms.internal.ads.l40

            /* renamed from: e, reason: collision with root package name */
            private final fi f7810e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7810e = fiVar;
            }

            @Override // com.google.android.gms.internal.ads.fq1
            public final void zza(cq1 cq1Var) {
                oj zzyy = this.f7810e.zzyy();
                Rect rect = cq1Var.f6090d;
                zzyy.a(rect.left, rect.top, false);
            }
        }, this.f7223a);
        this.f7225c.a(new fq1(fiVar) { // from class: com.google.android.gms.internal.ads.k40

            /* renamed from: e, reason: collision with root package name */
            private final fi f7610e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7610e = fiVar;
            }

            @Override // com.google.android.gms.internal.ads.fq1
            public final void zza(cq1 cq1Var) {
                fi fiVar2 = this.f7610e;
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", cq1Var.f6096j ? "1" : ZimPlatform.REASON_0);
                fiVar2.zza("onAdVisibilityChanged", hashMap);
            }
        }, this.f7223a);
        this.f7225c.a(this.f7224b, this.f7223a);
        this.f7224b.a(fiVar);
        fiVar.zza("/trackActiveViewUnit", new o0(this) { // from class: com.google.android.gms.internal.ads.n40

            /* renamed from: a, reason: collision with root package name */
            private final i40 f8271a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8271a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f8271a.b((fi) obj, map);
            }
        });
        fiVar.zza("/untrackActiveViewUnit", new o0(this) { // from class: com.google.android.gms.internal.ads.m40

            /* renamed from: a, reason: collision with root package name */
            private final i40 f8021a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8021a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f8021a.a((fi) obj, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(fi fiVar, Map map) {
        this.f7224b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(fi fiVar, Map map) {
        this.f7224b.a();
    }
}
