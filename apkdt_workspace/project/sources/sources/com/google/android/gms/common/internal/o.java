package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.a;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class o<T extends IInterface> extends f<T> {
    private final a.h<T> z;

    public a.h<T> B() {
        return this.z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected T a(IBinder iBinder) {
        return this.z.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String v() {
        return this.z.k();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected String w() {
        return this.z.l();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected void a(int i2, T t) {
        this.z.a(i2, t);
    }
}
