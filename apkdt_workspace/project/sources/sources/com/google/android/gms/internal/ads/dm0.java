package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dm0 implements ko0<em0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f6254a;

    public dm0(Context context, tz0 tz0Var) {
        this.f6254a = tz0Var;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<em0> a() {
        return this.f6254a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.gm0

            /* renamed from: e, reason: collision with root package name */
            private final dm0 f6932e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6932e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String n;
                String l2;
                String str;
                com.google.android.gms.ads.internal.n.c();
                wq1 d2 = com.google.android.gms.ads.internal.n.g().i().d();
                Bundle bundle = null;
                if (d2 != null && d2 != null && (!com.google.android.gms.ads.internal.n.g().i().b() || !com.google.android.gms.ads.internal.n.g().i().m())) {
                    if (d2.d()) {
                        d2.a();
                    }
                    pq1 c2 = d2.c();
                    if (c2 != null) {
                        n = c2.c();
                        str = c2.d();
                        l2 = c2.e();
                        if (n != null) {
                            com.google.android.gms.ads.internal.n.g().i().b(n);
                        }
                        if (l2 != null) {
                            com.google.android.gms.ads.internal.n.g().i().c(l2);
                        }
                    } else {
                        n = com.google.android.gms.ads.internal.n.g().i().n();
                        l2 = com.google.android.gms.ads.internal.n.g().i().l();
                        str = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!com.google.android.gms.ads.internal.n.g().i().m()) {
                        if (l2 != null && !TextUtils.isEmpty(l2)) {
                            bundle2.putString("v_fp_vertical", l2);
                        } else {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        }
                    }
                    if (n != null && !com.google.android.gms.ads.internal.n.g().i().b()) {
                        bundle2.putString("fingerprint", n);
                        if (!n.equals(str)) {
                            bundle2.putString("v_fp", str);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new em0(bundle);
            }
        });
    }
}
