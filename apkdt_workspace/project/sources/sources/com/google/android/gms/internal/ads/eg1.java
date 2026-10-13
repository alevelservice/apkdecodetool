package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eg1 extends sg1 {
    public eg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 73);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        try {
            this.f9348h.d(((Boolean) this.f9349i.invoke(null, this.f9345e.a())).booleanValue() ? m60.ENUM_TRUE : m60.ENUM_FALSE);
        } catch (InvocationTargetException unused) {
            this.f9348h.d(m60.ENUM_FAILURE);
        }
    }
}
