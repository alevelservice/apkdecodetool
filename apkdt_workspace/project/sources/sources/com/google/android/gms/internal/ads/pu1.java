package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class pu1 implements com.google.android.gms.ads.h {

    /* renamed from: a, reason: collision with root package name */
    private final String f8789a;

    public pu1(zzwb zzwbVar) {
        String str;
        try {
            str = zzwbVar.getDescription();
        } catch (RemoteException e2) {
            qd.b("", e2);
            str = null;
        }
        this.f8789a = str;
    }

    public final String toString() {
        return this.f8789a;
    }
}
