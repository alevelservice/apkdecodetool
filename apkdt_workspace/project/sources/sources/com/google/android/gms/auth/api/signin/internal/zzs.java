package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000authapi.zzc;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public abstract class zzs extends zzc implements zzt {
    public zzs() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.p000authapi.zzc
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 101:
                zzc((GoogleSignInAccount) com.google.android.gms.internal.p000authapi.g.a(parcel, GoogleSignInAccount.CREATOR), (Status) com.google.android.gms.internal.p000authapi.g.a(parcel, Status.CREATOR));
                break;
            case 102:
                zze((Status) com.google.android.gms.internal.p000authapi.g.a(parcel, Status.CREATOR));
                break;
            case 103:
                zzf((Status) com.google.android.gms.internal.p000authapi.g.a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
