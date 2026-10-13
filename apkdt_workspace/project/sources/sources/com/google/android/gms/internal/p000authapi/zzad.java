package com.google.android.gms.internal.p000authapi;

import android.os.IInterface;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public interface zzad extends IInterface {
    void zzc(IStatusCallback iStatusCallback, String str);

    void zzc(zzab zzabVar, BeginSignInRequest beginSignInRequest);
}
