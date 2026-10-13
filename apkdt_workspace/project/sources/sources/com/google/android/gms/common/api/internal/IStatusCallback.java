package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zab;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public interface IStatusCallback extends IInterface {

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends com.google.android.gms.internal.base.zaa implements IStatusCallback {

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* loaded from: classes.dex */
        public static class zaa extends zab implements IStatusCallback {
            zaa(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.api.internal.IStatusCallback");
            }

            @Override // com.google.android.gms.common.api.internal.IStatusCallback
            public final void onResult(Status status) {
                Parcel zaa = zaa();
                com.google.android.gms.internal.base.a.a(zaa, status);
                zac(1, zaa);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        public static IStatusCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
            if (queryLocalInterface instanceof IStatusCallback) {
                return (IStatusCallback) queryLocalInterface;
            }
            return new zaa(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zaa
        protected boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 1) {
                return false;
            }
            onResult((Status) com.google.android.gms.internal.base.a.a(parcel, Status.CREATOR));
            return true;
        }
    }

    void onResult(Status status);
}
