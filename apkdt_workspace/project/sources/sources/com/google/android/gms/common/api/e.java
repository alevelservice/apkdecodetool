package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.g;
import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.common.api.internal.l0;
import com.google.android.gms.common.api.internal.u;
import com.google.android.gms.common.api.internal.x;
import com.google.android.gms.common.api.internal.zace;
import com.google.android.gms.common.internal.c;
import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class e<O extends a.d> implements g<O> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4999a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f5000b;

    /* renamed from: c, reason: collision with root package name */
    private final O f5001c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.b<O> f5002d;

    /* renamed from: e, reason: collision with root package name */
    private final Looper f5003e;

    /* renamed from: f, reason: collision with root package name */
    private final int f5004f;

    /* renamed from: g, reason: collision with root package name */
    private final f f5005g;

    /* renamed from: h, reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.q f5006h;

    /* renamed from: i, reason: collision with root package name */
    protected final com.google.android.gms.common.api.internal.g f5007i;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: c, reason: collision with root package name */
        @KeepForSdk
        public static final a f5008c = new C0087a().a();

        /* renamed from: a, reason: collision with root package name */
        public final com.google.android.gms.common.api.internal.q f5009a;

        /* renamed from: b, reason: collision with root package name */
        public final Looper f5010b;

        @KeepForSdk
        private a(com.google.android.gms.common.api.internal.q qVar, Account account, Looper looper) {
            this.f5009a = qVar;
            this.f5010b = looper;
        }

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        @KeepForSdk
        /* renamed from: com.google.android.gms.common.api.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0087a {

            /* renamed from: a, reason: collision with root package name */
            private com.google.android.gms.common.api.internal.q f5011a;

            /* renamed from: b, reason: collision with root package name */
            private Looper f5012b;

            @KeepForSdk
            public C0087a() {
            }

            @KeepForSdk
            public C0087a a(com.google.android.gms.common.api.internal.q qVar) {
                com.google.android.gms.common.internal.m.a(qVar, "StatusExceptionMapper must not be null.");
                this.f5011a = qVar;
                return this;
            }

            @KeepForSdk
            public C0087a a(Looper looper) {
                com.google.android.gms.common.internal.m.a(looper, "Looper must not be null.");
                this.f5012b = looper;
                return this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @KeepForSdk
            public a a() {
                if (this.f5011a == null) {
                    this.f5011a = new com.google.android.gms.common.api.internal.a();
                }
                if (this.f5012b == null) {
                    this.f5012b = Looper.getMainLooper();
                }
                return new a(this.f5011a, this.f5012b);
            }
        }
    }

    @KeepForSdk
    @MainThread
    public e(@NonNull Activity activity, com.google.android.gms.common.api.a<O> aVar, @Nullable O o, a aVar2) {
        com.google.android.gms.common.internal.m.a(activity, "Null activity is not permitted.");
        com.google.android.gms.common.internal.m.a(aVar, "Api must not be null.");
        com.google.android.gms.common.internal.m.a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f4999a = activity.getApplicationContext();
        this.f5000b = aVar;
        this.f5001c = o;
        this.f5003e = aVar2.f5010b;
        this.f5002d = com.google.android.gms.common.api.internal.b.a(this.f5000b, this.f5001c);
        this.f5005g = new l0(this);
        this.f5007i = com.google.android.gms.common.api.internal.g.a(this.f4999a);
        this.f5004f = this.f5007i.a();
        this.f5006h = aVar2.f5009a;
        if (!(activity instanceof GoogleApiActivity)) {
            x.a(activity, this.f5007i, (com.google.android.gms.common.api.internal.b<?>) this.f5002d);
        }
        this.f5007i.a((e<?>) this);
    }

    private final <A extends a.b, T extends com.google.android.gms.common.api.internal.d<? extends m, A>> T a(int i2, @NonNull T t) {
        t.b();
        this.f5007i.a(this, i2, (com.google.android.gms.common.api.internal.d<? extends m, a.b>) t);
        return t;
    }

    @KeepForSdk
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.d<? extends m, A>> T b(@NonNull T t) {
        a(0, (int) t);
        return t;
    }

    @KeepForSdk
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.d<? extends m, A>> T c(@NonNull T t) {
        a(1, (int) t);
        return t;
    }

    @KeepForSdk
    public O d() {
        return this.f5001c;
    }

    @KeepForSdk
    public Context e() {
        return this.f4999a;
    }

    public final int f() {
        return this.f5004f;
    }

    @KeepForSdk
    public Looper g() {
        return this.f5003e;
    }

    @KeepForSdk
    public <TResult, A extends a.b> e.i.b.b.d.h<TResult> b(com.google.android.gms.common.api.internal.s<A, TResult> sVar) {
        return a(1, sVar);
    }

    @KeepForSdk
    protected c.a c() {
        Account account;
        Set<Scope> emptySet;
        GoogleSignInAccount a2;
        GoogleSignInAccount a3;
        c.a aVar = new c.a();
        O o = this.f5001c;
        if ((o instanceof a.d.b) && (a3 = ((a.d.b) o).a()) != null) {
            account = a3.j();
        } else {
            O o2 = this.f5001c;
            account = o2 instanceof a.d.InterfaceC0085a ? ((a.d.InterfaceC0085a) o2).getAccount() : null;
        }
        aVar.a(account);
        O o3 = this.f5001c;
        if ((o3 instanceof a.d.b) && (a2 = ((a.d.b) o3).a()) != null) {
            emptySet = a2.s();
        } else {
            emptySet = Collections.emptySet();
        }
        aVar.a(emptySet);
        aVar.a(this.f4999a.getClass().getName());
        aVar.b(this.f4999a.getPackageName());
        return aVar;
    }

    private final <TResult, A extends a.b> e.i.b.b.d.h<TResult> a(int i2, @NonNull com.google.android.gms.common.api.internal.s<A, TResult> sVar) {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        this.f5007i.a(this, i2, sVar, iVar, this.f5006h);
        return iVar.a();
    }

    @KeepForSdk
    public f b() {
        return this.f5005g;
    }

    @KeepForSdk
    public <TResult, A extends a.b> e.i.b.b.d.h<TResult> a(com.google.android.gms.common.api.internal.s<A, TResult> sVar) {
        return a(0, sVar);
    }

    @KeepForSdk
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.d<? extends m, A>> T a(@NonNull T t) {
        a(2, (int) t);
        return t;
    }

    @KeepForSdk
    @Deprecated
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.n<A, ?>, U extends u<A, ?>> e.i.b.b.d.h<Void> a(@NonNull T t, U u) {
        com.google.android.gms.common.internal.m.a(t);
        com.google.android.gms.common.internal.m.a(u);
        com.google.android.gms.common.internal.m.a(t.b(), "Listener has already been released.");
        com.google.android.gms.common.internal.m.a(u.a(), "Listener has already been released.");
        com.google.android.gms.common.internal.m.a(t.b().equals(u.a()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.f5007i.a(this, (com.google.android.gms.common.api.internal.n<a.b, ?>) t, (u<a.b, ?>) u);
    }

    @KeepForSdk
    public e(@NonNull Context context, com.google.android.gms.common.api.a<O> aVar, @Nullable O o, a aVar2) {
        com.google.android.gms.common.internal.m.a(context, "Null context is not permitted.");
        com.google.android.gms.common.internal.m.a(aVar, "Api must not be null.");
        com.google.android.gms.common.internal.m.a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f4999a = context.getApplicationContext();
        this.f5000b = aVar;
        this.f5001c = o;
        this.f5003e = aVar2.f5010b;
        this.f5002d = com.google.android.gms.common.api.internal.b.a(this.f5000b, this.f5001c);
        this.f5005g = new l0(this);
        this.f5007i = com.google.android.gms.common.api.internal.g.a(this.f4999a);
        this.f5004f = this.f5007i.a();
        this.f5006h = aVar2.f5009a;
        this.f5007i.a((e<?>) this);
    }

    @KeepForSdk
    public e.i.b.b.d.h<Boolean> a(@NonNull k.a<?> aVar) {
        com.google.android.gms.common.internal.m.a(aVar, "Listener key cannot be null.");
        return this.f5007i.a(this, aVar);
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [com.google.android.gms.common.api.a$f] */
    @WorkerThread
    public a.f a(Looper looper, g.a<O> aVar) {
        return this.f5000b.c().a(this.f4999a, looper, c().a(), (com.google.android.gms.common.internal.c) this.f5001c, (f.a) aVar, (f.b) aVar);
    }

    @Override // com.google.android.gms.common.api.g
    public com.google.android.gms.common.api.internal.b<O> a() {
        return this.f5002d;
    }

    public zace a(Context context, Handler handler) {
        return new zace(context, handler, c().a());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(@androidx.annotation.NonNull android.app.Activity r2, com.google.android.gms.common.api.a<O> r3, @androidx.annotation.Nullable O r4, com.google.android.gms.common.api.internal.q r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.e$a$a r0 = new com.google.android.gms.common.api.e$a$a
            r0.<init>()
            r0.a(r5)
            android.os.Looper r5 = r2.getMainLooper()
            r0.a(r5)
            com.google.android.gms.common.api.e$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.e.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.q):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(@androidx.annotation.NonNull android.content.Context r2, com.google.android.gms.common.api.a<O> r3, @androidx.annotation.Nullable O r4, com.google.android.gms.common.api.internal.q r5) {
        /*
            r1 = this;
            com.google.android.gms.common.api.e$a$a r0 = new com.google.android.gms.common.api.e$a$a
            r0.<init>()
            r0.a(r5)
            com.google.android.gms.common.api.e$a r5 = r0.a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.e.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.q):void");
    }
}
