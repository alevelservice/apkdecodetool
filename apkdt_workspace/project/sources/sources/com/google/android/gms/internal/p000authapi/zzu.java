package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public abstract class zzu extends zzc implements zzv {
    public zzu() {
        super("com.google.android.gms.auth.api.credentials.internal.ICredentialsCallbacks");
    }

    @Override // com.google.android.gms.internal.p000authapi.zzc
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzc((Status) g.a(parcel, Status.CREATOR), (Credential) g.a(parcel, Credential.CREATOR));
        } else if (i2 == 2) {
            zzd((Status) g.a(parcel, Status.CREATOR));
        } else {
            if (i2 != 3) {
                return false;
            }
            zzc((Status) g.a(parcel, Status.CREATOR), parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
