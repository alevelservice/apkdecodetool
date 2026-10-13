package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class v71 implements Comparator<t71> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(t71 t71Var, t71 t71Var2) {
        int a2;
        int a3;
        t71 t71Var3 = t71Var;
        t71 t71Var4 = t71Var2;
        d81 d81Var = (d81) t71Var3.iterator();
        d81 d81Var2 = (d81) t71Var4.iterator();
        while (d81Var.hasNext() && d81Var2.hasNext()) {
            a2 = t71.a(d81Var.nextByte());
            a3 = t71.a(d81Var2.nextByte());
            int compare = Integer.compare(a2, a3);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(t71Var3.size(), t71Var4.size());
    }
}
