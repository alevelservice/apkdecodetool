package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class g5 implements d5 {
    @Override // com.google.android.gms.internal.measurement.d5
    public final c5<?, ?> a(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final Object b(Object obj) {
        ((e5) obj).zzry();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final Map<?, ?> c(Object obj) {
        return (e5) obj;
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final Map<?, ?> d(Object obj) {
        return (e5) obj;
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final boolean e(Object obj) {
        return !((e5) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final Object f(Object obj) {
        return e5.zzvl().zzvm();
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final Object a(Object obj, Object obj2) {
        e5 e5Var = (e5) obj;
        e5 e5Var2 = (e5) obj2;
        if (!e5Var2.isEmpty()) {
            if (!e5Var.isMutable()) {
                e5Var = e5Var.zzvm();
            }
            e5Var.zza(e5Var2);
        }
        return e5Var;
    }

    @Override // com.google.android.gms.internal.measurement.d5
    public final int a(int i2, Object obj, Object obj2) {
        e5 e5Var = (e5) obj;
        if (e5Var.isEmpty()) {
            return 0;
        }
        Iterator it = e5Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
