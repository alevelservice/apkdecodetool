package com.google.android.gms.auth.a;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.h;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.internal.p000authapi.j;
import com.google.android.gms.internal.p000authapi.l;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a.g<l> f4689a = new a.g<>();

    /* renamed from: b, reason: collision with root package name */
    public static final a.g<h> f4690b = new a.g<>();

    /* renamed from: c, reason: collision with root package name */
    private static final a.AbstractC0084a<l, C0079a> f4691c = new e();

    /* renamed from: d, reason: collision with root package name */
    private static final a.AbstractC0084a<h, GoogleSignInOptions> f4692d = new f();

    /* renamed from: e, reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<C0079a> f4693e;

    /* renamed from: f, reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<GoogleSignInOptions> f4694f;

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    @Deprecated
    /* renamed from: com.google.android.gms.auth.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0079a implements a.d.f {

        /* renamed from: h, reason: collision with root package name */
        public static final C0079a f4695h = new C0080a().a();

        /* renamed from: e, reason: collision with root package name */
        private final String f4696e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f4697f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        private final String f4698g;

        /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
        @Deprecated
        /* renamed from: com.google.android.gms.auth.a.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0080a {

            /* renamed from: a, reason: collision with root package name */
            protected String f4699a;

            /* renamed from: b, reason: collision with root package name */
            protected Boolean f4700b;

            /* renamed from: c, reason: collision with root package name */
            @Nullable
            protected String f4701c;

            public C0080a() {
                this.f4700b = false;
            }

            @ShowFirstParty
            public C0080a a(String str) {
                this.f4701c = str;
                return this;
            }

            @ShowFirstParty
            public C0079a a() {
                return new C0079a(this);
            }

            @ShowFirstParty
            public C0080a(C0079a c0079a) {
                this.f4700b = false;
                this.f4699a = c0079a.f4696e;
                this.f4700b = Boolean.valueOf(c0079a.f4697f);
                this.f4701c = c0079a.f4698g;
            }
        }

        public C0079a(C0080a c0080a) {
            this.f4696e = c0080a.f4699a;
            this.f4697f = c0080a.f4700b.booleanValue();
            this.f4698g = c0080a.f4701c;
        }

        @Nullable
        public final String a() {
            return this.f4698g;
        }

        public final Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.f4696e);
            bundle.putBoolean("force_save_dialog", this.f4697f);
            bundle.putString("log_session_id", this.f4698g);
            return bundle;
        }

        @Nullable
        public final String c() {
            return this.f4696e;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0079a)) {
                return false;
            }
            C0079a c0079a = (C0079a) obj;
            return k.a(this.f4696e, c0079a.f4696e) && this.f4697f == c0079a.f4697f && k.a(this.f4698g, c0079a.f4698g);
        }

        public int hashCode() {
            return k.a(this.f4696e, Boolean.valueOf(this.f4697f), this.f4698g);
        }
    }

    static {
        com.google.android.gms.common.api.a<c> aVar = b.f4704c;
        f4693e = new com.google.android.gms.common.api.a<>("Auth.CREDENTIALS_API", f4691c, f4689a);
        f4694f = new com.google.android.gms.common.api.a<>("Auth.GOOGLE_SIGN_IN_API", f4692d, f4690b);
        com.google.android.gms.auth.api.proxy.a aVar2 = b.f4705d;
        new j();
        new com.google.android.gms.auth.api.signin.internal.e();
    }
}
