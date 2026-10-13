package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class a<O extends d> {

    /* renamed from: a, reason: collision with root package name */
    private final AbstractC0084a<?, O> f4996a;

    /* renamed from: b, reason: collision with root package name */
    private final g<?> f4997b;

    /* renamed from: c, reason: collision with root package name */
    private final String f4998c;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @VisibleForTesting
    @KeepForSdk
    /* renamed from: com.google.android.gms.common.api.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0084a<T extends f, O> extends e<T, O> {
        @KeepForSdk
        @Deprecated
        public T a(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, O o, f.a aVar, f.b bVar) {
            return a(context, looper, cVar, (com.google.android.gms.common.internal.c) o, (com.google.android.gms.common.api.internal.f) aVar, (com.google.android.gms.common.api.internal.m) bVar);
        }

        @KeepForSdk
        public T a(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, O o, com.google.android.gms.common.api.internal.f fVar, com.google.android.gms.common.api.internal.m mVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface b {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class c<C extends b> {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public interface d {

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* renamed from: com.google.android.gms.common.api.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0085a extends c, e {
            Account getAccount();
        }

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* loaded from: classes.dex */
        public interface b extends c {
            GoogleSignInAccount a();
        }

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* loaded from: classes.dex */
        public interface c extends d {
        }

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* renamed from: com.google.android.gms.common.api.a$d$d, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0086d implements e {
            private C0086d() {
            }
        }

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* loaded from: classes.dex */
        public interface e extends d {
        }

        /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
        /* loaded from: classes.dex */
        public interface f extends c, e {
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes.dex */
    public static abstract class e<T extends b, O> {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface f extends b {
        @KeepForSdk
        void a();

        @KeepForSdk
        void a(BaseGmsClient.c cVar);

        @KeepForSdk
        void a(BaseGmsClient.e eVar);

        @KeepForSdk
        void a(IAccountAccessor iAccountAccessor, Set<Scope> set);

        @NonNull
        @KeepForSdk
        Set<Scope> c();

        @KeepForSdk
        boolean d();

        @KeepForSdk
        String e();

        @KeepForSdk
        boolean f();

        @KeepForSdk
        boolean g();

        @KeepForSdk
        int h();

        @KeepForSdk
        Feature[] i();

        @KeepForSdk
        boolean j();
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes.dex */
    public static final class g<C extends f> extends c<C> {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public interface h<T extends IInterface> extends b {
        T a(IBinder iBinder);

        void a(int i2, T t);

        String k();

        String l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> a(String str, AbstractC0084a<C, O> abstractC0084a, g<C> gVar) {
        com.google.android.gms.common.internal.m.a(abstractC0084a, "Cannot construct an Api with a null ClientBuilder");
        com.google.android.gms.common.internal.m.a(gVar, "Cannot construct an Api with a null ClientKey");
        this.f4998c = str;
        this.f4996a = abstractC0084a;
        this.f4997b = gVar;
    }

    public final c<?> a() {
        g<?> gVar = this.f4997b;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    public final String b() {
        return this.f4998c;
    }

    public final AbstractC0084a<?, O> c() {
        com.google.android.gms.common.internal.m.b(this.f4996a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f4996a;
    }
}
