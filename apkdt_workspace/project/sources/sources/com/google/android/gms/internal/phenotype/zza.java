package com.google.android.gms.internal.phenotype;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public class zza implements IInterface {

    /* renamed from: e, reason: collision with root package name */
    private final IBinder f12274e;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f12274e = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f12274e;
    }
}
