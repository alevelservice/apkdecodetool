package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uy0 extends sy0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public uy0(ry0 ry0Var, ex0<? extends qz0<? extends V>> ex0Var, boolean z) {
        super(ry0Var, ex0Var, true);
    }

    @Override // com.google.android.gms.internal.ads.sy0
    public final /* synthetic */ Object a(List list) {
        ArrayList a2 = rx0.a(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            vw0 vw0Var = (vw0) it.next();
            a2.add(vw0Var != null ? vw0Var.zzaoa() : null);
        }
        return Collections.unmodifiableList(a2);
    }
}
