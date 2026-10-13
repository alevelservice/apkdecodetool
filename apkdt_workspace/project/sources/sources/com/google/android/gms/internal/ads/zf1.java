package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.l.a;
import com.google.android.gms.internal.ads.ev;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zf1 extends sg1 {
    public zf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 24);
    }

    private final void c() {
        com.google.android.gms.ads.l.a n = this.f9345e.n();
        if (n == null) {
            return;
        }
        try {
            a.C0077a b2 = n.b();
            String a2 = kf1.a(b2.a());
            if (a2 != null) {
                synchronized (this.f9348h) {
                    this.f9348h.h(a2);
                    this.f9348h.a(b2.b());
                    this.f9348h.a(ev.c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        if (this.f9345e.h()) {
            c();
            return;
        }
        synchronized (this.f9348h) {
            this.f9348h.h((String) this.f9349i.invoke(null, this.f9345e.a()));
        }
    }

    @Override // com.google.android.gms.internal.ads.sg1, java.util.concurrent.Callable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Void call() {
        if (this.f9345e.b()) {
            return super.call();
        }
        if (!this.f9345e.h()) {
            return null;
        }
        c();
        return null;
    }
}
