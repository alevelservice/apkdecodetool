package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class pk1 extends mk1 {
    public final List<ok1> A0;
    public final List<pk1> B0;
    public final long z0;

    public pk1(int i2, long j2) {
        super(i2);
        this.z0 = j2;
        this.A0 = new ArrayList();
        this.B0 = new ArrayList();
    }

    public final ok1 d(int i2) {
        int size = this.A0.size();
        for (int i3 = 0; i3 < size; i3++) {
            ok1 ok1Var = this.A0.get(i3);
            if (ok1Var.f8165a == i2) {
                return ok1Var;
            }
        }
        return null;
    }

    public final pk1 e(int i2) {
        int size = this.B0.size();
        for (int i3 = 0; i3 < size; i3++) {
            pk1 pk1Var = this.B0.get(i3);
            if (pk1Var.f8165a == i2) {
                return pk1Var;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mk1
    public final String toString() {
        String c2 = mk1.c(this.f8165a);
        String arrays = Arrays.toString(this.A0.toArray());
        String arrays2 = Arrays.toString(this.B0.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
        sb.append(c2);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
