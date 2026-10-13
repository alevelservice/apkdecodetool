package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zab;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public interface IResolveAccountCallbacks extends IInterface {

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends zaa implements IResolveAccountCallbacks {

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* loaded from: classes.dex */
        public static class Proxy extends zab implements IResolveAccountCallbacks {
            Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
            }

            @Override // com.google.android.gms.common.internal.IResolveAccountCallbacks
            public void onAccountResolutionComplete(ResolveAccountResponse resolveAccountResponse) {
                Parcel zaa = zaa();
                com.google.android.gms.internal.base.a.a(zaa, resolveAccountResponse);
                zab(2, zaa);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        }

        public static IResolveAccountCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            if (queryLocalInterface instanceof IResolveAccountCallbacks) {
                return (IResolveAccountCallbacks) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zaa
        protected boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 2) {
                return false;
            }
            onAccountResolutionComplete((ResolveAccountResponse) com.google.android.gms.internal.base.a.a(parcel, ResolveAccountResponse.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    void onAccountResolutionComplete(ResolveAccountResponse resolveAccountResponse);
}
