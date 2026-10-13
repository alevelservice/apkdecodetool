package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class z5 implements w5 {
    @Override // com.google.android.gms.internal.vision.w5
    public final int a(int i2, Object obj, Object obj2) {
        x5 x5Var = (x5) obj;
        if (x5Var.isEmpty()) {
            return 0;
        }
        Iterator it = x5Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final u5<?, ?> b(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final Object c(Object obj) {
        ((x5) obj).zzdp();
        return obj;
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final boolean d(Object obj) {
        return !((x5) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final Object e(Object obj) {
        return x5.zzhc().zzhd();
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final Map<?, ?> f(Object obj) {
        return (x5) obj;
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final Map<?, ?> g(Object obj) {
        return (x5) obj;
    }

    @Override // com.google.android.gms.internal.vision.w5
    public final Object b(Object obj, Object obj2) {
        x5 x5Var = (x5) obj;
        x5 x5Var2 = (x5) obj2;
        if (!x5Var2.isEmpty()) {
            if (!x5Var.isMutable()) {
                x5Var = x5Var.zzhd();
            }
            x5Var.zza(x5Var2);
        }
        return x5Var;
    }
}
