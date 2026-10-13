package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static com.google.android.gms.common.m.a f4874a = new com.google.android.gms.common.m.a("GoogleSignInCommon", new String[0]);

    public static com.google.android.gms.common.api.h<Status> a(com.google.android.gms.common.api.f fVar, Context context, boolean z) {
        f4874a.a("Signing out", new Object[0]);
        a(context);
        if (z) {
            return com.google.android.gms.common.api.i.a(Status.f4988i, fVar);
        }
        return fVar.b(new j(fVar));
    }

    public static com.google.android.gms.common.api.h<Status> b(com.google.android.gms.common.api.f fVar, Context context, boolean z) {
        f4874a.a("Revoking access", new Object[0]);
        String d2 = b.a(context).d();
        a(context);
        if (z) {
            return d.a(d2);
        }
        return fVar.b(new k(fVar));
    }

    private static void a(Context context) {
        l.a(context).a();
        Iterator<com.google.android.gms.common.api.f> it = com.google.android.gms.common.api.f.c().iterator();
        if (!it.hasNext()) {
            com.google.android.gms.common.api.internal.g.c();
        } else {
            it.next().b();
            throw null;
        }
    }
}
