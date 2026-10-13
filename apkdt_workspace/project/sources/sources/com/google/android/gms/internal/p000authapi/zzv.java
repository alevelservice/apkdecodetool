package com.google.android.gms.internal.p000authapi;

import android.os.IInterface;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public interface zzv extends IInterface {
    void zzc(Status status, Credential credential);

    void zzc(Status status, String str);

    void zzd(Status status);
}
