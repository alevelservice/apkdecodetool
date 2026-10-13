package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private static l f4875b;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private b f4876a;

    private l(Context context) {
        this.f4876a = b.a(context);
        this.f4876a.b();
        this.f4876a.c();
    }

    public static synchronized l a(@NonNull Context context) {
        l b2;
        synchronized (l.class) {
            b2 = b(context.getApplicationContext());
        }
        return b2;
    }

    private static synchronized l b(Context context) {
        synchronized (l.class) {
            if (f4875b != null) {
                return f4875b;
            }
            l lVar = new l(context);
            f4875b = lVar;
            return lVar;
        }
    }

    public final synchronized void a() {
        this.f4876a.a();
    }

    public final synchronized void a(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f4876a.a(googleSignInAccount, googleSignInOptions);
    }
}
