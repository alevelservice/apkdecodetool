package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b1 extends com.google.android.gms.ads.internal.c<zzaep> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(Context context, Looper looper, BaseGmsClient.a aVar, BaseGmsClient.b bVar) {
        super(z7.c(context), looper, 166, aVar, bVar, null);
    }

    public final zzaep A() {
        return (zzaep) super.u();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        if (queryLocalInterface instanceof zzaep) {
            return (zzaep) queryLocalInterface;
        }
        return new zzaes(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    protected final String v() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    protected final String w() {
        return "com.google.android.gms.ads.service.HTTP";
    }
}
