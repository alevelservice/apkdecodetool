package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eg0<AdT> implements qy0<vs0, AdT> {

    /* renamed from: a, reason: collision with root package name */
    private final zu0 f6416a;

    /* renamed from: b, reason: collision with root package name */
    private final mt f6417b;

    /* renamed from: c, reason: collision with root package name */
    private final iv0 f6418c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f6419d;

    /* renamed from: e, reason: collision with root package name */
    private final ScheduledExecutorService f6420e;

    /* renamed from: f, reason: collision with root package name */
    private final tq<AdT> f6421f;

    /* renamed from: g, reason: collision with root package name */
    private final zf0 f6422g;

    public eg0(zu0 zu0Var, zf0 zf0Var, mt mtVar, iv0 iv0Var, tq<AdT> tqVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f6416a = zu0Var;
        this.f6422g = zf0Var;
        this.f6417b = mtVar;
        this.f6418c = iv0Var;
        this.f6421f = tqVar;
        this.f6419d = executor;
        this.f6420e = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(ns0 ns0Var, ad0 ad0Var, vs0 vs0Var, Throwable th) {
        zf0 zf0Var = this.f6422g;
        qz0 a2 = gz0.a(ad0Var.a(vs0Var, ns0Var), ns0Var.I, TimeUnit.MILLISECONDS, this.f6420e);
        zf0Var.a(ns0Var, a2);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final /* synthetic */ qz0 b(vs0 vs0Var) {
        final vs0 vs0Var2 = vs0Var;
        hu0 a2 = this.f6416a.a((zu0) wu0.RENDER_CONFIG_INIT).a(gz0.a((Throwable) new bg0("No ad configs", 3))).a();
        this.f6417b.a(new gn(vs0Var2, this.f6418c), this.f6419d);
        int i2 = 0;
        for (final ns0 ns0Var : vs0Var2.f9986b.f9629a) {
            Iterator<String> it = ns0Var.f8415a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                final ad0<AdT> a3 = this.f6421f.a(ns0Var.f8416b, next);
                if (a3 != null && a3.b(vs0Var2, ns0Var)) {
                    ru0<I> a4 = this.f6416a.a((zu0) wu0.RENDER_CONFIG_WATERFALL, (qz0) a2);
                    StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 26);
                    sb.append("render-config-");
                    sb.append(i2);
                    sb.append("-");
                    sb.append(next);
                    a2 = a4.a(sb.toString()).a(Throwable.class, new qy0(this, ns0Var, a3, vs0Var2) { // from class: com.google.android.gms.internal.ads.dg0

                        /* renamed from: a, reason: collision with root package name */
                        private final eg0 f6216a;

                        /* renamed from: b, reason: collision with root package name */
                        private final ns0 f6217b;

                        /* renamed from: c, reason: collision with root package name */
                        private final ad0 f6218c;

                        /* renamed from: d, reason: collision with root package name */
                        private final vs0 f6219d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f6216a = this;
                            this.f6217b = ns0Var;
                            this.f6218c = a3;
                            this.f6219d = vs0Var2;
                        }

                        @Override // com.google.android.gms.internal.ads.qy0
                        public final qz0 b(Object obj) {
                            return this.f6216a.a(this.f6217b, this.f6218c, this.f6219d, (Throwable) obj);
                        }
                    }).a();
                    break;
                }
            }
            i2++;
        }
        return a2;
    }
}
