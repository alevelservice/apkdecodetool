package com.google.android.gms.internal.clearcut;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes.dex */
public final class t2 extends com.google.android.gms.common.api.e<a.d.C0086d> implements com.google.android.gms.clearcut.c {
    @VisibleForTesting
    private t2(@NonNull Context context) {
        super(context, com.google.android.gms.clearcut.a.o, (a.d) null, new com.google.android.gms.common.api.internal.a());
    }

    public static com.google.android.gms.clearcut.c a(@NonNull Context context) {
        return new t2(context);
    }

    @Override // com.google.android.gms.clearcut.c
    public final com.google.android.gms.common.api.h<Status> a(zze zzeVar) {
        i5 i5Var = new i5(zzeVar, b());
        a((t2) i5Var);
        return i5Var;
    }
}
