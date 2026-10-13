package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class co1 extends IOException {
    private final int type;
    private final bo1 zzbes;

    public co1(String str, bo1 bo1Var, int i2) {
        super(str);
        this.zzbes = bo1Var;
        this.type = 1;
    }

    public co1(IOException iOException, bo1 bo1Var, int i2) {
        super(iOException);
        this.zzbes = bo1Var;
        this.type = i2;
    }

    public co1(String str, IOException iOException, bo1 bo1Var, int i2) {
        super(str, iOException);
        this.zzbes = bo1Var;
        this.type = 1;
    }
}
