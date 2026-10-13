package com.google.android.gms.internal.vision;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class l3 implements Comparator<j3> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(j3 j3Var, j3 j3Var2) {
        int a2;
        int a3;
        j3 j3Var3 = j3Var;
        j3 j3Var4 = j3Var2;
        s3 s3Var = (s3) j3Var3.iterator();
        s3 s3Var2 = (s3) j3Var4.iterator();
        while (s3Var.hasNext() && s3Var2.hasNext()) {
            a2 = j3.a(s3Var.nextByte());
            a3 = j3.a(s3Var2.nextByte());
            int compare = Integer.compare(a2, a3);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(j3Var3.size(), j3Var4.size());
    }
}
