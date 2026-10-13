package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class ka1 implements ha1 {
    @Override // com.google.android.gms.internal.ads.ha1
    public final Map<?, ?> a(Object obj) {
        return (ia1) obj;
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final boolean b(Object obj) {
        return !((ia1) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final Object c(Object obj) {
        ((ia1) obj).zzaxe();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final Object d(Object obj) {
        return ia1.zzban().zzbao();
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final ga1<?, ?> e(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final Map<?, ?> f(Object obj) {
        return (ia1) obj;
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final Object a(Object obj, Object obj2) {
        ia1 ia1Var = (ia1) obj;
        ia1 ia1Var2 = (ia1) obj2;
        if (!ia1Var2.isEmpty()) {
            if (!ia1Var.isMutable()) {
                ia1Var = ia1Var.zzbao();
            }
            ia1Var.zza(ia1Var2);
        }
        return ia1Var;
    }

    @Override // com.google.android.gms.internal.ads.ha1
    public final int a(int i2, Object obj, Object obj2) {
        ia1 ia1Var = (ia1) obj;
        if (ia1Var.isEmpty()) {
            return 0;
        }
        Iterator it = ia1Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
