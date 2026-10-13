package com.google.android.gms.auth.api.credentials;

import android.app.Activity;
import android.app.PendingIntent;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.a.a;
import com.google.android.gms.common.api.internal.q;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public class d extends com.google.android.gms.common.api.e<a.C0079a> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull Activity activity, @NonNull a.C0079a c0079a) {
        super(activity, com.google.android.gms.auth.a.a.f4693e, c0079a, (q) new com.google.android.gms.common.api.internal.a());
    }

    public PendingIntent a(@NonNull HintRequest hintRequest) {
        return com.google.android.gms.internal.p000authapi.m.a(e(), d(), hintRequest, d().a());
    }
}
