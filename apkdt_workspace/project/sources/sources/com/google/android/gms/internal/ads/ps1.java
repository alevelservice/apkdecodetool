package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class ps1 {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    zzfy f8774a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    boolean f8775b;

    public ps1(Context context, String str, String str2) {
        aw1.a(context);
        try {
            this.f8774a = (zzfy) td.a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", os1.f8592a);
            ObjectWrapper.wrap(context);
            this.f8774a.zza(ObjectWrapper.wrap(context), str, null);
            this.f8775b = true;
        } catch (RemoteException | vd | NullPointerException unused) {
            qd.a("Cannot dynamite load clearcut");
        }
    }

    public final xs1 a(byte[] bArr) {
        return new xs1(this, bArr);
    }

    public ps1(Context context) {
        aw1.a(context);
        if (((Boolean) mu1.e().a(aw1.I2)).booleanValue()) {
            try {
                this.f8774a = (zzfy) td.a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", rs1.f9227a);
                ObjectWrapper.wrap(context);
                this.f8774a.zzb(ObjectWrapper.wrap(context), "GMA_SDK");
                this.f8775b = true;
            } catch (RemoteException | vd | NullPointerException unused) {
                qd.a("Cannot dynamite load clearcut");
            }
        }
    }

    public ps1() {
    }
}
