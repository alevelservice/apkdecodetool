package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f60 {

    /* renamed from: a, reason: collision with root package name */
    private final it f6569a;

    /* renamed from: b, reason: collision with root package name */
    private final fu f6570b;

    /* renamed from: c, reason: collision with root package name */
    private final tu f6571c;

    /* renamed from: d, reason: collision with root package name */
    private final yu f6572d;

    /* renamed from: e, reason: collision with root package name */
    private final zv f6573e;

    /* renamed from: f, reason: collision with root package name */
    private final Executor f6574f;

    /* renamed from: g, reason: collision with root package name */
    private final nx f6575g;

    /* renamed from: h, reason: collision with root package name */
    private final qn f6576h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.a f6577i;

    /* renamed from: j, reason: collision with root package name */
    private final yt f6578j;

    /* renamed from: k, reason: collision with root package name */
    private final t8 f6579k;

    /* renamed from: l, reason: collision with root package name */
    private final t11 f6580l;
    private final vv m;

    public f60(it itVar, fu fuVar, tu tuVar, yu yuVar, zv zvVar, Executor executor, nx nxVar, qn qnVar, com.google.android.gms.ads.internal.a aVar, yt ytVar, @Nullable t8 t8Var, t11 t11Var, vv vvVar) {
        this.f6569a = itVar;
        this.f6570b = fuVar;
        this.f6571c = tuVar;
        this.f6572d = yuVar;
        this.f6573e = zvVar;
        this.f6574f = executor;
        this.f6575g = nxVar;
        this.f6576h = qnVar;
        this.f6577i = aVar;
        this.f6578j = ytVar;
        this.f6579k = t8Var;
        this.f6580l = t11Var;
        this.m = vvVar;
    }

    public final void a(final fi fiVar, boolean z) {
        cz0 a2;
        fiVar.zzyy().a(new st1(this) { // from class: com.google.android.gms.internal.ads.i60

            /* renamed from: e, reason: collision with root package name */
            private final f60 f7240e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7240e = this;
            }

            @Override // com.google.android.gms.internal.ads.st1
            public final void onAdClicked() {
                this.f7240e.b();
            }
        }, this.f6571c, this.f6572d, new z(this) { // from class: com.google.android.gms.internal.ads.h60

            /* renamed from: e, reason: collision with root package name */
            private final f60 f7014e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7014e = this;
            }

            @Override // com.google.android.gms.internal.ads.z
            public final void onAppEvent(String str, String str2) {
                this.f7014e.a(str, str2);
            }
        }, new com.google.android.gms.ads.internal.overlay.p(this) { // from class: com.google.android.gms.internal.ads.k60

            /* renamed from: e, reason: collision with root package name */
            private final f60 f7620e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7620e = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.p
            public final void c() {
                this.f7620e.a();
            }
        }, z, null, this.f6577i, new q60(this), this.f6579k);
        fiVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.j60

            /* renamed from: e, reason: collision with root package name */
            private final f60 f7433e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7433e = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f7433e.a(view, motionEvent);
            }
        });
        fiVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.n60

            /* renamed from: e, reason: collision with root package name */
            private final f60 f8278e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8278e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8278e.a(view);
            }
        });
        if (((Boolean) mu1.e().a(aw1.v1)).booleanValue() && (a2 = this.f6580l.a()) != null) {
            a2.a(fiVar.getView());
        }
        this.f6575g.a(fiVar, this.f6574f);
        this.f6575g.a(new fq1(fiVar) { // from class: com.google.android.gms.internal.ads.l60

            /* renamed from: e, reason: collision with root package name */
            private final fi f7824e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7824e = fiVar;
            }

            @Override // com.google.android.gms.internal.ads.fq1
            public final void zza(cq1 cq1Var) {
                oj zzyy = this.f7824e.zzyy();
                Rect rect = cq1Var.f6090d;
                zzyy.a(rect.left, rect.top, false);
            }
        }, this.f6574f);
        this.f6575g.a(fiVar.getView());
        fiVar.zza("/trackActiveViewUnit", new o0(this, fiVar) { // from class: com.google.android.gms.internal.ads.p60

            /* renamed from: a, reason: collision with root package name */
            private final f60 f8654a;

            /* renamed from: b, reason: collision with root package name */
            private final fi f8655b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8654a = this;
                this.f8655b = fiVar;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f8654a.a(this.f8655b, (fi) obj, map);
            }
        });
        this.f6576h.a((Object) fiVar);
        if (((Boolean) mu1.e().a(aw1.F0)).booleanValue()) {
            return;
        }
        yt ytVar = this.f6578j;
        fiVar.getClass();
        ytVar.a(o60.a(fiVar), this.f6574f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b() {
        this.f6569a.onAdClicked();
    }

    public static qz0<?> a(fi fiVar, String str, String str2) {
        final he heVar = new he();
        fiVar.zzyy().a(new rj(heVar) { // from class: com.google.android.gms.internal.ads.r60

            /* renamed from: a, reason: collision with root package name */
            private final he f9046a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9046a = heVar;
            }

            @Override // com.google.android.gms.internal.ads.rj
            public final void a(boolean z) {
                he heVar2 = this.f9046a;
                if (z) {
                    heVar2.b(null);
                } else {
                    heVar2.a(new Exception("Ad Web View failed to load."));
                }
            }
        });
        fiVar.zzb(str, str2, null);
        return heVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(fi fiVar, fi fiVar2, Map map) {
        this.f6576h.a(fiVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(View view) {
        this.f6577i.a();
        t8 t8Var = this.f6579k;
        if (t8Var != null) {
            t8Var.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        this.f6577i.a();
        t8 t8Var = this.f6579k;
        if (t8Var == null) {
            return false;
        }
        t8Var.a();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a() {
        this.f6570b.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str, String str2) {
        this.f6573e.onAppEvent(str, str2);
    }
}
