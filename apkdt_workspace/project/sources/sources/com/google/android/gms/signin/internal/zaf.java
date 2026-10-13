package com.google.android.gms.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zaa;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public abstract class zaf extends zaa implements zac {
    public zaf() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zaa
    protected boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 3) {
            zaa((ConnectionResult) com.google.android.gms.internal.base.a.a(parcel, ConnectionResult.CREATOR), (zab) com.google.android.gms.internal.base.a.a(parcel, zab.CREATOR));
        } else if (i2 == 4) {
            zag((Status) com.google.android.gms.internal.base.a.a(parcel, Status.CREATOR));
        } else if (i2 == 6) {
            zah((Status) com.google.android.gms.internal.base.a.a(parcel, Status.CREATOR));
        } else if (i2 == 7) {
            zaa((Status) com.google.android.gms.internal.base.a.a(parcel, Status.CREATOR), (GoogleSignInAccount) com.google.android.gms.internal.base.a.a(parcel, GoogleSignInAccount.CREATOR));
        } else {
            if (i2 != 8) {
                return false;
            }
            zab((zak) com.google.android.gms.internal.base.a.a(parcel, zak.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
