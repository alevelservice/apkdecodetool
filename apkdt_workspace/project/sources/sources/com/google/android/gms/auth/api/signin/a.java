package com.google.android.gms.auth.api.signin;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class a {
    public static c a(@NonNull Context context, @NonNull GoogleSignInOptions googleSignInOptions) {
        m.a(googleSignInOptions);
        return new c(context, googleSignInOptions);
    }
}
