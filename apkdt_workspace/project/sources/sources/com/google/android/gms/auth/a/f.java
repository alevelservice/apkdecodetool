package com.google.android.gms.auth.a;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.h;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
final class f extends a.AbstractC0084a<h, GoogleSignInOptions> {
    @Override // com.google.android.gms.common.api.a.AbstractC0084a
    public final /* synthetic */ h a(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, @Nullable GoogleSignInOptions googleSignInOptions, f.a aVar, f.b bVar) {
        return new h(context, looper, cVar, googleSignInOptions, aVar, bVar);
    }
}
