package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;

/* loaded from: classes.dex */
final class n extends a.AbstractC0084a<com.google.android.gms.internal.location.i, a.d.C0086d> {
    @Override // com.google.android.gms.common.api.a.AbstractC0084a
    public final /* synthetic */ com.google.android.gms.internal.location.i a(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, a.d.C0086d c0086d, f.a aVar, f.b bVar) {
        return new com.google.android.gms.internal.location.i(context, looper, aVar, bVar, "locationServices", cVar);
    }
}
