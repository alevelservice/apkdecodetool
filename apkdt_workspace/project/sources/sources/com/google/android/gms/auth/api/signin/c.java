package com.google.android.gms.auth.api.signin;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamite.DynamiteModule;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public class c extends com.google.android.gms.common.api.e<GoogleSignInOptions> {

    /* renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    private static int f4843j;

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    /* loaded from: classes.dex */
    private static class a implements l.a<d, GoogleSignInAccount> {
        private a() {
        }

        @Override // com.google.android.gms.common.internal.l.a
        @Nullable
        public final /* synthetic */ GoogleSignInAccount a(d dVar) {
            return dVar.a();
        }

        /* synthetic */ a(i iVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public enum b {

        /* renamed from: a, reason: collision with root package name */
        public static final int f4844a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f4845b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f4846c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f4847d = 4;

        /* renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ int[] f4848e = {f4844a, f4845b, f4846c, f4847d};

        public static int[] a() {
            return (int[]) f4848e.clone();
        }
    }

    static {
        new a(null);
        f4843j = b.f4844a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, com.google.android.gms.auth.a.a.f4694f, googleSignInOptions, new com.google.android.gms.common.api.internal.a());
    }

    private final synchronized int j() {
        if (f4843j == b.f4844a) {
            Context e2 = e();
            com.google.android.gms.common.c a2 = com.google.android.gms.common.c.a();
            int a3 = a2.a(e2, com.google.android.gms.common.h.f5182a);
            if (a3 == 0) {
                f4843j = b.f4847d;
            } else if (a2.a(e2, a3, (String) null) == null && DynamiteModule.a(e2, "com.google.android.gms.auth.api.fallback") != 0) {
                f4843j = b.f4846c;
            } else {
                f4843j = b.f4845b;
            }
        }
        return f4843j;
    }

    public e.i.b.b.d.h<Void> h() {
        return l.a(com.google.android.gms.auth.api.signin.internal.g.b(b(), e(), j() == b.f4846c));
    }

    public e.i.b.b.d.h<Void> i() {
        return l.a(com.google.android.gms.auth.api.signin.internal.g.a(b(), e(), j() == b.f4846c));
    }
}
