package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class er1 implements Comparator<kr1> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public er1(br1 br1Var) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(kr1 kr1Var, kr1 kr1Var2) {
        kr1 kr1Var3 = kr1Var;
        kr1 kr1Var4 = kr1Var2;
        int i2 = kr1Var3.f7739c - kr1Var4.f7739c;
        return i2 != 0 ? i2 : (int) (kr1Var3.f7737a - kr1Var4.f7737a);
    }
}
