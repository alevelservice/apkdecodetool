package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.nu;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ih0<AdT, AdapterT, ListenerT extends nu> implements ad0<AdT> {

    /* renamed from: a, reason: collision with root package name */
    private final ed0<AdapterT, ListenerT> f7294a;

    /* renamed from: b, reason: collision with root package name */
    private final dd0<AdT, AdapterT, ListenerT> f7295b;

    /* renamed from: c, reason: collision with root package name */
    private final zu0 f7296c;

    /* renamed from: d, reason: collision with root package name */
    private final tz0 f7297d;

    public ih0(zu0 zu0Var, tz0 tz0Var, ed0<AdapterT, ListenerT> ed0Var, dd0<AdT, AdapterT, ListenerT> dd0Var) {
        this.f7296c = zu0Var;
        this.f7297d = tz0Var;
        this.f7295b = dd0Var;
        this.f7294a = ed0Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<AdT> a(final vs0 vs0Var, final ns0 ns0Var) {
        final bd0<AdapterT, ListenerT> bd0Var;
        Iterator<String> it = ns0Var.q.iterator();
        while (true) {
            if (!it.hasNext()) {
                bd0Var = null;
                break;
            }
            try {
                bd0Var = this.f7294a.a(it.next(), ns0Var.s);
                break;
            } catch (Throwable unused) {
            }
        }
        if (bd0Var == null) {
            return gz0.a((Throwable) new pf0("unable to instantiate mediation adapter class"));
        }
        he heVar = new he();
        bd0Var.f5766c.zza(new jh0(this, heVar, bd0Var));
        if (ns0Var.E) {
            Bundle bundle = vs0Var.f9985a.f9004a.f10195d.q;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        return this.f7296c.a((zu0) wu0.ADAPTER_LOAD_AD_SYN).a(new iu0(this, vs0Var, ns0Var, bd0Var) { // from class: com.google.android.gms.internal.ads.hh0

            /* renamed from: a, reason: collision with root package name */
            private final ih0 f7068a;

            /* renamed from: b, reason: collision with root package name */
            private final vs0 f7069b;

            /* renamed from: c, reason: collision with root package name */
            private final ns0 f7070c;

            /* renamed from: d, reason: collision with root package name */
            private final bd0 f7071d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7068a = this;
                this.f7069b = vs0Var;
                this.f7070c = ns0Var;
                this.f7071d = bd0Var;
            }

            @Override // com.google.android.gms.internal.ads.iu0
            public final void run() {
                this.f7068a.a(this.f7069b, this.f7070c, this.f7071d);
            }
        }, this.f7297d).a((ru0<?>) wu0.ADAPTER_LOAD_AD_ACK).a((qz0) heVar).a((ru0<O2>) wu0.ADAPTER_WRAP_ADAPTER).a(new fu0(this, vs0Var, ns0Var, bd0Var) { // from class: com.google.android.gms.internal.ads.kh0

            /* renamed from: a, reason: collision with root package name */
            private final ih0 f7695a;

            /* renamed from: b, reason: collision with root package name */
            private final vs0 f7696b;

            /* renamed from: c, reason: collision with root package name */
            private final ns0 f7697c;

            /* renamed from: d, reason: collision with root package name */
            private final bd0 f7698d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7695a = this;
                this.f7696b = vs0Var;
                this.f7697c = ns0Var;
                this.f7698d = bd0Var;
            }

            @Override // com.google.android.gms.internal.ads.fu0
            public final Object apply(Object obj) {
                return this.f7695a.a(this.f7696b, this.f7697c, this.f7698d, (Void) obj);
            }
        }).a();
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        return !ns0Var.q.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object a(vs0 vs0Var, ns0 ns0Var, bd0 bd0Var, Void r4) {
        return this.f7295b.b(vs0Var, ns0Var, bd0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(vs0 vs0Var, ns0 ns0Var, bd0 bd0Var) {
        this.f7295b.a(vs0Var, ns0Var, bd0Var);
    }
}
