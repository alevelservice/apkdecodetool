package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public abstract class zze extends zza implements zzf {
    public zze() {
        super("com.google.android.gms.auth.api.phone.internal.IAutofillPermissionStateCallback");
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zza
    protected final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zza((Status) b.a(parcel, Status.CREATOR), parcel.readInt());
        return true;
    }
}
