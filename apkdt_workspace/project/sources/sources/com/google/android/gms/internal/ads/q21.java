package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.ev;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q21 extends d01 {
    private q21(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static q21 a(String str, Context context, boolean z) {
        d01.a(context, z);
        return new q21(context, str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.d01
    public final List<Callable<Void>> a(cf1 cf1Var, Context context, ev.b bVar, yq yqVar) {
        if (cf1Var.d() != null && this.y) {
            int c2 = cf1Var.c();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(super.a(cf1Var, context, bVar, yqVar));
            arrayList.add(new zf1(cf1Var, "XH9P571BKuLP93qYQxkRpy1PUNifzwu73ZoDGVFo2YZ/YFYubO2Lb3GWBfhhanl4", "NeE5pLFr5wX1ANovtLOsJqP768Ctmq/FMTICBM52x6A=", bVar, c2, 24));
            return arrayList;
        }
        return super.a(cf1Var, context, bVar, yqVar);
    }
}
