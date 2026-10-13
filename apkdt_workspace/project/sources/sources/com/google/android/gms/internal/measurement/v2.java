package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* loaded from: classes.dex */
final class v2 implements Comparator<t2> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(t2 t2Var, t2 t2Var2) {
        int a2;
        int a3;
        t2 t2Var3 = t2Var;
        t2 t2Var4 = t2Var2;
        y2 y2Var = (y2) t2Var3.iterator();
        y2 y2Var2 = (y2) t2Var4.iterator();
        while (y2Var.hasNext() && y2Var2.hasNext()) {
            a2 = t2.a(y2Var.nextByte());
            a3 = t2.a(y2Var2.nextByte());
            int compare = Integer.compare(a2, a3);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(t2Var3.size(), t2Var4.size());
    }
}
