package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class al0 implements ko0<Object> {

    /* renamed from: f, reason: collision with root package name */
    private static final Object f5593f = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final String f5594a;

    /* renamed from: b, reason: collision with root package name */
    private final String f5595b;

    /* renamed from: c, reason: collision with root package name */
    private final yr f5596c;

    /* renamed from: d, reason: collision with root package name */
    private final kt0 f5597d;

    /* renamed from: e, reason: collision with root package name */
    private final ws0 f5598e;

    public al0(String str, String str2, yr yrVar, kt0 kt0Var, ws0 ws0Var) {
        this.f5594a = str;
        this.f5595b = str2;
        this.f5596c = yrVar;
        this.f5597d = kt0Var;
        this.f5598e = ws0Var;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<Object> a() {
        final Bundle bundle = new Bundle();
        if (((Boolean) mu1.e().a(aw1.d3)).booleanValue()) {
            this.f5596c.a(this.f5598e.f10195d);
            bundle.putAll(this.f5597d.a());
        }
        return gz0.a(new lo0(this, bundle) { // from class: com.google.android.gms.internal.ads.dl0

            /* renamed from: a, reason: collision with root package name */
            private final al0 f6250a;

            /* renamed from: b, reason: collision with root package name */
            private final Bundle f6251b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6250a = this;
                this.f6251b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Object obj) {
                this.f6250a.a(this.f6251b, (Bundle) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(Bundle bundle, Bundle bundle2) {
        if (((Boolean) mu1.e().a(aw1.d3)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) mu1.e().a(aw1.c3)).booleanValue()) {
                synchronized (f5593f) {
                    this.f5596c.a(this.f5598e.f10195d);
                    bundle2.putBundle("quality_signals", this.f5597d.a());
                }
            } else {
                this.f5596c.a(this.f5598e.f10195d);
                bundle2.putBundle("quality_signals", this.f5597d.a());
            }
        }
        bundle2.putString("seq_num", this.f5594a);
        bundle2.putString("session_id", this.f5595b);
    }
}
