package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class e2 implements d2 {
    @Override // com.google.android.gms.internal.clearcut.d2
    public final int a(int i2, Object obj, Object obj2) {
        c2 c2Var = (c2) obj;
        if (c2Var.isEmpty()) {
            return 0;
        }
        Iterator it = c2Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final Object a(Object obj, Object obj2) {
        c2 c2Var = (c2) obj;
        c2 c2Var2 = (c2) obj2;
        if (!c2Var2.isEmpty()) {
            if (!c2Var.isMutable()) {
                c2Var = c2Var.zzca();
            }
            c2Var.zza(c2Var2);
        }
        return c2Var;
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final boolean a(Object obj) {
        return !((c2) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final Map<?, ?> b(Object obj) {
        return (c2) obj;
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final Object d(Object obj) {
        ((c2) obj).zzv();
        return obj;
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final Map<?, ?> e(Object obj) {
        return (c2) obj;
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final b2<?, ?> f(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.clearcut.d2
    public final Object g(Object obj) {
        return c2.zzbz().zzca();
    }
}
