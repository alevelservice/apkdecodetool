package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.common.zzb;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public interface IAccountAccessor extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends com.google.android.gms.internal.common.zza implements IAccountAccessor {

        /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
        /* loaded from: classes.dex */
        public static class zza extends zzb implements IAccountAccessor {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.IAccountAccessor
            public final Account getAccount() {
                Parcel zza = zza(2, zza());
                Account account = (Account) com.google.android.gms.internal.common.a.a(zza, Account.CREATOR);
                zza.recycle();
                return account;
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        public static IAccountAccessor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof IAccountAccessor) {
                return (IAccountAccessor) queryLocalInterface;
            }
            return new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zza
        protected final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 2) {
                return false;
            }
            Account account = getAccount();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.a.b(parcel2, account);
            return true;
        }
    }

    Account getAccount();
}
