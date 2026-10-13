package com.google.android.gms.internal.ads;

import android.provider.Settings;
import com.google.android.gms.internal.ads.ev;
import java.lang.reflect.InvocationTargetException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qf1 extends sg1 {
    public qf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3) {
        super(cf1Var, str, str2, bVar, i2, 49);
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        this.f9348h.b(m60.ENUM_FAILURE);
        try {
            this.f9348h.b(((Boolean) this.f9349i.invoke(null, this.f9345e.a())).booleanValue() ? m60.ENUM_TRUE : m60.ENUM_FALSE);
        } catch (InvocationTargetException e2) {
            if (!(e2.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e2;
            }
        }
    }
}
