package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class t {
    @KeepForSdk
    public static void a(Status status, e.i.b.b.d.i<Void> iVar) {
        a(status, null, iVar);
    }

    @KeepForSdk
    public static <TResult> void a(Status status, TResult tresult, e.i.b.b.d.i<TResult> iVar) {
        if (status.o()) {
            iVar.a((e.i.b.b.d.i<TResult>) tresult);
        } else {
            iVar.a((Exception) new com.google.android.gms.common.api.b(status));
        }
    }

    @KeepForSdk
    @Deprecated
    public static e.i.b.b.d.h<Void> a(e.i.b.b.d.h<Boolean> hVar) {
        return hVar.a(new y0());
    }
}
