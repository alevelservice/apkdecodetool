package com.google.android.gms.internal.phenotype;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.f;

/* loaded from: classes.dex */
public final class b extends f<zzb> {
    public b(Context context, Looper looper, c cVar, f.a aVar, f.b bVar) {
        super(context, looper, 51, cVar, aVar, bVar);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return queryLocalInterface instanceof zzb ? (zzb) queryLocalInterface : new zzc(iBinder);
    }

    @Override // com.google.android.gms.common.internal.f, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public final int h() {
        return 11925000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String v() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String w() {
        return "com.google.android.gms.phenotype.service.START";
    }
}
