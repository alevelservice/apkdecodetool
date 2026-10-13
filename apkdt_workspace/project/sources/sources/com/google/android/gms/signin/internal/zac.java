package com.google.android.gms.signin.internal;

import android.os.IInterface;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public interface zac extends IInterface {
    void zaa(ConnectionResult connectionResult, zab zabVar);

    void zaa(Status status, GoogleSignInAccount googleSignInAccount);

    void zab(zak zakVar);

    void zag(Status status);

    void zah(Status status);
}
