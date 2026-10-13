package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class xs1 {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f10421a;

    /* renamed from: b, reason: collision with root package name */
    private int f10422b;

    /* renamed from: c, reason: collision with root package name */
    private int f10423c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ ps1 f10424d;

    private xs1(ps1 ps1Var, byte[] bArr) {
        this.f10424d = ps1Var;
        this.f10421a = bArr;
    }

    public final synchronized void a() {
        try {
            if (this.f10424d.f8775b) {
                this.f10424d.f8774a.zzc(this.f10421a);
                this.f10424d.f8774a.zzl(this.f10422b);
                this.f10424d.f8774a.zzm(this.f10423c);
                this.f10424d.f8774a.zza(null);
                this.f10424d.f8774a.zzdf();
            }
        } catch (RemoteException e2) {
            qd.a("Clearcut log failed", e2);
        }
    }

    public final xs1 b(int i2) {
        this.f10423c = i2;
        return this;
    }

    public final xs1 a(int i2) {
        this.f10422b = i2;
        return this;
    }
}
