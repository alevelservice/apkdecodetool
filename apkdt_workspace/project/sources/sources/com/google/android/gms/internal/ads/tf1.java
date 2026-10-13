package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.ev;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tf1 extends sg1 {
    private static rg1<String> m = new rg1<>();

    /* renamed from: l, reason: collision with root package name */
    private final Context f9571l;

    public tf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3, Context context) {
        super(cf1Var, str, str2, bVar, i2, 29);
        this.f9571l = context;
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        this.f9348h.c("E");
        AtomicReference<String> a2 = m.a(this.f9571l.getPackageName());
        if (a2.get() == null) {
            synchronized (a2) {
                if (a2.get() == null) {
                    a2.set((String) this.f9349i.invoke(null, this.f9571l));
                }
            }
        }
        String str = a2.get();
        synchronized (this.f9348h) {
            this.f9348h.c(qd0.a(str.getBytes(), true));
        }
    }
}
