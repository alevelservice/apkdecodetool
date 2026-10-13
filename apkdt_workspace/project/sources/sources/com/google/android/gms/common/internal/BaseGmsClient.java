package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IGmsCallbacks;
import com.google.android.gms.common.internal.IGmsServiceBroker;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class BaseGmsClient<T extends IInterface> {
    private static final Feature[] v = new Feature[0];

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private j0 f5224a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f5225b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.internal.h f5226c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.d f5227d;

    /* renamed from: e, reason: collision with root package name */
    final Handler f5228e;

    /* renamed from: f, reason: collision with root package name */
    private final Object f5229f;

    /* renamed from: g, reason: collision with root package name */
    private final Object f5230g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("mServiceBrokerLock")
    private IGmsServiceBroker f5231h;

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    protected c f5232i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("mLock")
    private T f5233j;

    /* renamed from: k, reason: collision with root package name */
    private final ArrayList<g<?>> f5234k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("mLock")
    private i f5235l;

    @GuardedBy("mLock")
    private int m;
    private final a n;
    private final b o;
    private final int p;
    private final String q;
    private ConnectionResult r;
    private boolean s;
    private volatile zza t;

    @VisibleForTesting
    protected AtomicInteger u;

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface a {
        @KeepForSdk
        void onConnected(@Nullable Bundle bundle);

        @KeepForSdk
        void onConnectionSuspended(int i2);
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface b {
        void onConnectionFailed(@NonNull ConnectionResult connectionResult);
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface c {
        @KeepForSdk
        void a(@NonNull ConnectionResult connectionResult);
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    protected class d implements c {
        @KeepForSdk
        public d() {
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.c
        public void a(@NonNull ConnectionResult connectionResult) {
            if (!connectionResult.o()) {
                if (BaseGmsClient.this.o != null) {
                    BaseGmsClient.this.o.onConnectionFailed(connectionResult);
                }
            } else {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.a((IAccountAccessor) null, baseGmsClient.t());
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface e {
        @KeepForSdk
        void a();
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    private abstract class f extends g<Boolean> {

        /* renamed from: d, reason: collision with root package name */
        private final int f5237d;

        /* renamed from: e, reason: collision with root package name */
        private final Bundle f5238e;

        @BinderThread
        protected f(int i2, Bundle bundle) {
            super(true);
            this.f5237d = i2;
            this.f5238e = bundle;
        }

        protected abstract void a(ConnectionResult connectionResult);

        @Override // com.google.android.gms.common.internal.BaseGmsClient.g
        protected final /* synthetic */ void a(Boolean bool) {
            if (bool != null) {
                int i2 = this.f5237d;
                if (i2 == 0) {
                    if (e()) {
                        return;
                    }
                    BaseGmsClient.this.b(1, null);
                    a(new ConnectionResult(8, null));
                    return;
                }
                if (i2 != 10) {
                    BaseGmsClient.this.b(1, null);
                    Bundle bundle = this.f5238e;
                    a(new ConnectionResult(this.f5237d, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
                    return;
                }
                BaseGmsClient.this.b(1, null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), BaseGmsClient.this.w(), BaseGmsClient.this.v()));
            }
            BaseGmsClient.this.b(1, null);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.g
        protected final void c() {
        }

        protected abstract boolean e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public abstract class g<TListener> {

        /* renamed from: a, reason: collision with root package name */
        private TListener f5240a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f5241b = false;

        public g(TListener tlistener) {
            this.f5240a = tlistener;
        }

        public final void a() {
            synchronized (this) {
                this.f5240a = null;
            }
        }

        protected abstract void a(TListener tlistener);

        public final void b() {
            a();
            synchronized (BaseGmsClient.this.f5234k) {
                BaseGmsClient.this.f5234k.remove(this);
            }
        }

        protected abstract void c();

        public final void d() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f5240a;
                if (this.f5241b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    sb.toString();
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e2) {
                    c();
                    throw e2;
                }
            } else {
                c();
            }
            synchronized (this) {
                this.f5241b = true;
            }
            b();
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    final class h extends com.google.android.gms.internal.common.f {
        public h(Looper looper) {
            super(looper);
        }

        private static void a(Message message) {
            g gVar = (g) message.obj;
            gVar.c();
            gVar.b();
        }

        private static boolean b(Message message) {
            int i2 = message.what;
            return i2 == 2 || i2 == 1 || i2 == 7;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ConnectionResult connectionResult;
            ConnectionResult connectionResult2;
            if (BaseGmsClient.this.u.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                    return;
                }
                return;
            }
            int i2 = message.what;
            if ((i2 == 1 || i2 == 7 || ((i2 == 4 && !BaseGmsClient.this.m()) || message.what == 5)) && !BaseGmsClient.this.d()) {
                a(message);
                return;
            }
            int i3 = message.what;
            if (i3 == 4) {
                BaseGmsClient.this.r = new ConnectionResult(message.arg2);
                if (!BaseGmsClient.this.C() || BaseGmsClient.this.s) {
                    if (BaseGmsClient.this.r != null) {
                        connectionResult2 = BaseGmsClient.this.r;
                    } else {
                        connectionResult2 = new ConnectionResult(8);
                    }
                    BaseGmsClient.this.f5232i.a(connectionResult2);
                    BaseGmsClient.this.a(connectionResult2);
                    return;
                }
                BaseGmsClient.this.b(3, null);
                return;
            }
            if (i3 == 5) {
                if (BaseGmsClient.this.r != null) {
                    connectionResult = BaseGmsClient.this.r;
                } else {
                    connectionResult = new ConnectionResult(8);
                }
                BaseGmsClient.this.f5232i.a(connectionResult);
                BaseGmsClient.this.a(connectionResult);
                return;
            }
            if (i3 == 3) {
                Object obj = message.obj;
                ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
                BaseGmsClient.this.f5232i.a(connectionResult3);
                BaseGmsClient.this.a(connectionResult3);
                return;
            }
            if (i3 != 6) {
                if (i3 == 2 && !BaseGmsClient.this.f()) {
                    a(message);
                    return;
                }
                if (b(message)) {
                    ((g) message.obj).d();
                    return;
                }
                int i4 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i4);
                sb.toString();
                new Exception();
                return;
            }
            BaseGmsClient.this.b(5, null);
            if (BaseGmsClient.this.n != null) {
                BaseGmsClient.this.n.onConnectionSuspended(message.arg2);
            }
            BaseGmsClient.this.a(message.arg2);
            BaseGmsClient.this.a(5, 1, (int) null);
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public final class i implements ServiceConnection {

        /* renamed from: e, reason: collision with root package name */
        private final int f5244e;

        public i(int i2) {
            this.f5244e = i2;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IGmsServiceBroker zzaVar;
            if (iBinder == null) {
                BaseGmsClient.this.c(16);
                return;
            }
            synchronized (BaseGmsClient.this.f5230g) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                if (iBinder == null) {
                    zzaVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    if (queryLocalInterface != null && (queryLocalInterface instanceof IGmsServiceBroker)) {
                        zzaVar = (IGmsServiceBroker) queryLocalInterface;
                    } else {
                        zzaVar = new IGmsServiceBroker.Stub.zza(iBinder);
                    }
                }
                baseGmsClient.f5231h = zzaVar;
            }
            BaseGmsClient.this.a(0, (Bundle) null, this.f5244e);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (BaseGmsClient.this.f5230g) {
                BaseGmsClient.this.f5231h = null;
            }
            Handler handler = BaseGmsClient.this.f5228e;
            handler.sendMessage(handler.obtainMessage(6, this.f5244e, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public final class j extends f {
        @BinderThread
        public j(int i2, @Nullable Bundle bundle) {
            super(i2, null);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.f
        protected final void a(ConnectionResult connectionResult) {
            if (!BaseGmsClient.this.m() || !BaseGmsClient.this.C()) {
                BaseGmsClient.this.f5232i.a(connectionResult);
                BaseGmsClient.this.a(connectionResult);
            } else {
                BaseGmsClient.this.c(16);
            }
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.f
        protected final boolean e() {
            BaseGmsClient.this.f5232i.a(ConnectionResult.f4971i);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public final class k extends f {

        /* renamed from: g, reason: collision with root package name */
        private final IBinder f5247g;

        @BinderThread
        public k(int i2, IBinder iBinder, Bundle bundle) {
            super(i2, bundle);
            this.f5247g = iBinder;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.f
        protected final void a(ConnectionResult connectionResult) {
            if (BaseGmsClient.this.o != null) {
                BaseGmsClient.this.o.onConnectionFailed(connectionResult);
            }
            BaseGmsClient.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.f
        protected final boolean e() {
            try {
                String interfaceDescriptor = this.f5247g.getInterfaceDescriptor();
                if (!BaseGmsClient.this.v().equals(interfaceDescriptor)) {
                    String v = BaseGmsClient.this.v();
                    StringBuilder sb = new StringBuilder(String.valueOf(v).length() + 34 + String.valueOf(interfaceDescriptor).length());
                    sb.append("service descriptor mismatch: ");
                    sb.append(v);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    sb.toString();
                    return false;
                }
                IInterface a2 = BaseGmsClient.this.a(this.f5247g);
                if (a2 == null) {
                    return false;
                }
                if (!BaseGmsClient.this.a(2, 4, (int) a2) && !BaseGmsClient.this.a(3, 4, (int) a2)) {
                    return false;
                }
                BaseGmsClient.this.r = null;
                Bundle p = BaseGmsClient.this.p();
                if (BaseGmsClient.this.n != null) {
                    BaseGmsClient.this.n.onConnected(p);
                }
                return true;
            } catch (RemoteException unused) {
                return false;
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class zzd extends IGmsCallbacks.zza {

        /* renamed from: e, reason: collision with root package name */
        private BaseGmsClient f5249e;

        /* renamed from: f, reason: collision with root package name */
        private final int f5250f;

        public zzd(@NonNull BaseGmsClient baseGmsClient, int i2) {
            this.f5249e = baseGmsClient;
            this.f5250f = i2;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        @BinderThread
        public final void onPostInitComplete(int i2, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            m.a(this.f5249e, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f5249e.a(i2, iBinder, bundle, this.f5250f);
            this.f5249e = null;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        @BinderThread
        public final void zza(int i2, @Nullable Bundle bundle) {
            new Exception();
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        @BinderThread
        public final void zza(int i2, @NonNull IBinder iBinder, @NonNull zza zzaVar) {
            m.a(this.f5249e, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            m.a(zzaVar);
            this.f5249e.a(zzaVar);
            onPostInitComplete(i2, iBinder, zzaVar.f5346e);
        }
    }

    static {
        new String[]{"service_esmobile", "service_googleme"};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseGmsClient(android.content.Context r10, android.os.Looper r11, int r12, com.google.android.gms.common.internal.BaseGmsClient.a r13, com.google.android.gms.common.internal.BaseGmsClient.b r14, java.lang.String r15) {
        /*
            r9 = this;
            com.google.android.gms.common.internal.h r3 = com.google.android.gms.common.internal.h.a(r10)
            com.google.android.gms.common.d r4 = com.google.android.gms.common.d.a()
            com.google.android.gms.common.internal.m.a(r13)
            r6 = r13
            com.google.android.gms.common.internal.BaseGmsClient$a r6 = (com.google.android.gms.common.internal.BaseGmsClient.a) r6
            com.google.android.gms.common.internal.m.a(r14)
            r7 = r14
            com.google.android.gms.common.internal.BaseGmsClient$b r7 = (com.google.android.gms.common.internal.BaseGmsClient.b) r7
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.BaseGmsClient.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.BaseGmsClient$a, com.google.android.gms.common.internal.BaseGmsClient$b, java.lang.String):void");
    }

    @Nullable
    private final String A() {
        String str = this.q;
        return str == null ? this.f5225b.getClass().getName() : str;
    }

    private final boolean B() {
        boolean z;
        synchronized (this.f5229f) {
            z = this.m == 3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean C() {
        if (this.s || TextUtils.isEmpty(v()) || TextUtils.isEmpty(s())) {
            return false;
        }
        try {
            Class.forName(v());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(zza zzaVar) {
        this.t = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i2, T t) {
        j0 j0Var;
        m.a((i2 == 4) == (t != null));
        synchronized (this.f5229f) {
            this.m = i2;
            this.f5233j = t;
            a(i2, (int) t);
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (this.f5235l != null && this.f5224a != null) {
                        String d2 = this.f5224a.d();
                        String a2 = this.f5224a.a();
                        StringBuilder sb = new StringBuilder(String.valueOf(d2).length() + 70 + String.valueOf(a2).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(d2);
                        sb.append(" on ");
                        sb.append(a2);
                        sb.toString();
                        this.f5226c.a(this.f5224a.d(), this.f5224a.a(), this.f5224a.c(), this.f5235l, A(), this.f5224a.b());
                        this.u.incrementAndGet();
                    }
                    this.f5235l = new i(this.u.get());
                    if (this.m == 3 && s() != null) {
                        j0Var = new j0(q().getPackageName(), s(), true, 129, false);
                    } else {
                        j0Var = new j0(x(), w(), false, 129, y());
                    }
                    this.f5224a = j0Var;
                    if (this.f5224a.b() && h() < 17895000) {
                        String valueOf = String.valueOf(this.f5224a.d());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                    if (!this.f5226c.a(new h.a(this.f5224a.d(), this.f5224a.a(), this.f5224a.c(), this.f5224a.b()), this.f5235l, A())) {
                        String d3 = this.f5224a.d();
                        String a3 = this.f5224a.a();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(d3).length() + 34 + String.valueOf(a3).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(d3);
                        sb2.append(" on ");
                        sb2.append(a3);
                        sb2.toString();
                        a(16, (Bundle) null, this.u.get());
                    }
                } else if (i2 == 4) {
                    a((BaseGmsClient<T>) t);
                }
            } else if (this.f5235l != null) {
                this.f5226c.a(this.f5224a.d(), this.f5224a.a(), this.f5224a.c(), this.f5235l, A(), this.f5224a.b());
                this.f5235l = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(int i2) {
        int i3;
        if (B()) {
            i3 = 5;
            this.s = true;
        } else {
            i3 = 4;
        }
        Handler handler = this.f5228e;
        handler.sendMessage(handler.obtainMessage(i3, this.u.get(), 16));
    }

    @Nullable
    @KeepForSdk
    protected abstract T a(IBinder iBinder);

    @KeepForSdk
    void a(int i2, T t) {
    }

    @KeepForSdk
    public boolean d() {
        boolean z;
        synchronized (this.f5229f) {
            z = this.m == 2 || this.m == 3;
        }
        return z;
    }

    @KeepForSdk
    public String e() {
        j0 j0Var;
        if (f() && (j0Var = this.f5224a) != null) {
            return j0Var.a();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    @KeepForSdk
    public boolean f() {
        boolean z;
        synchronized (this.f5229f) {
            z = this.m == 4;
        }
        return z;
    }

    @KeepForSdk
    public boolean g() {
        return true;
    }

    @KeepForSdk
    public int h() {
        return com.google.android.gms.common.d.f5167a;
    }

    @Nullable
    @KeepForSdk
    public final Feature[] i() {
        zza zzaVar = this.t;
        if (zzaVar == null) {
            return null;
        }
        return zzaVar.f5347f;
    }

    @KeepForSdk
    public boolean j() {
        return false;
    }

    @KeepForSdk
    public void k() {
        int a2 = this.f5227d.a(this.f5225b, h());
        if (a2 != 0) {
            b(1, null);
            a(new d(), a2, (PendingIntent) null);
        } else {
            a(new d());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public final void l() {
        if (!f()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    @KeepForSdk
    protected boolean m() {
        return false;
    }

    @KeepForSdk
    public Account n() {
        return null;
    }

    @KeepForSdk
    public Feature[] o() {
        return v;
    }

    @KeepForSdk
    public Bundle p() {
        return null;
    }

    @KeepForSdk
    public final Context q() {
        return this.f5225b;
    }

    @KeepForSdk
    protected Bundle r() {
        return new Bundle();
    }

    @Nullable
    @KeepForSdk
    protected String s() {
        return null;
    }

    @KeepForSdk
    protected Set<Scope> t() {
        return Collections.EMPTY_SET;
    }

    @KeepForSdk
    public final T u() {
        T t;
        synchronized (this.f5229f) {
            if (this.m != 5) {
                l();
                m.b(this.f5233j != null, "Client is connected but service is null");
                t = this.f5233j;
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    @NonNull
    @KeepForSdk
    protected abstract String v();

    @NonNull
    @KeepForSdk
    protected abstract String w();

    @KeepForSdk
    protected String x() {
        return "com.google.android.gms";
    }

    @KeepForSdk
    protected boolean y() {
        return false;
    }

    @KeepForSdk
    public boolean z() {
        return false;
    }

    @KeepForSdk
    @CallSuper
    protected void a(@NonNull T t) {
        System.currentTimeMillis();
    }

    @KeepForSdk
    @CallSuper
    protected void a(int i2) {
        System.currentTimeMillis();
    }

    @KeepForSdk
    @CallSuper
    protected void a(ConnectionResult connectionResult) {
        connectionResult.j();
        System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @KeepForSdk
    public BaseGmsClient(Context context, Looper looper, com.google.android.gms.common.internal.h hVar, com.google.android.gms.common.d dVar, int i2, a aVar, b bVar, String str) {
        this.f5229f = new Object();
        this.f5230g = new Object();
        this.f5234k = new ArrayList<>();
        this.m = 1;
        this.r = null;
        this.s = false;
        this.t = null;
        this.u = new AtomicInteger(0);
        m.a(context, "Context must not be null");
        this.f5225b = context;
        m.a(looper, "Looper must not be null");
        m.a(hVar, "Supervisor must not be null");
        this.f5226c = hVar;
        m.a(dVar, "API availability must not be null");
        this.f5227d = dVar;
        this.f5228e = new h(looper);
        this.p = i2;
        this.n = aVar;
        this.o = bVar;
        this.q = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(int i2, int i3, T t) {
        synchronized (this.f5229f) {
            if (this.m != i2) {
                return false;
            }
            b(i3, t);
            return true;
        }
    }

    @KeepForSdk
    public void a(@NonNull c cVar) {
        m.a(cVar, "Connection progress callbacks cannot be null.");
        this.f5232i = cVar;
        b(2, null);
    }

    @KeepForSdk
    public void a() {
        this.u.incrementAndGet();
        synchronized (this.f5234k) {
            int size = this.f5234k.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f5234k.get(i2).a();
            }
            this.f5234k.clear();
        }
        synchronized (this.f5230g) {
            this.f5231h = null;
        }
        b(1, null);
    }

    @VisibleForTesting
    @KeepForSdk
    protected void a(@NonNull c cVar, int i2, @Nullable PendingIntent pendingIntent) {
        m.a(cVar, "Connection progress callbacks cannot be null.");
        this.f5232i = cVar;
        Handler handler = this.f5228e;
        handler.sendMessage(handler.obtainMessage(3, this.u.get(), i2, pendingIntent));
    }

    @KeepForSdk
    protected void a(int i2, IBinder iBinder, Bundle bundle, int i3) {
        Handler handler = this.f5228e;
        handler.sendMessage(handler.obtainMessage(1, i3, -1, new k(i2, iBinder, bundle)));
    }

    protected final void a(int i2, @Nullable Bundle bundle, int i3) {
        Handler handler = this.f5228e;
        handler.sendMessage(handler.obtainMessage(7, i3, -1, new j(i2, null)));
    }

    @KeepForSdk
    @WorkerThread
    public void a(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Bundle r = r();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.p);
        getServiceRequest.f5257h = this.f5225b.getPackageName();
        getServiceRequest.f5260k = r;
        if (set != null) {
            getServiceRequest.f5259j = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (j()) {
            getServiceRequest.f5261l = n() != null ? n() : new Account("<<default account>>", "com.google");
            if (iAccountAccessor != null) {
                getServiceRequest.f5258i = iAccountAccessor.asBinder();
            }
        } else if (z()) {
            getServiceRequest.f5261l = n();
        }
        getServiceRequest.m = v;
        getServiceRequest.n = o();
        try {
            try {
                synchronized (this.f5230g) {
                    if (this.f5231h != null) {
                        this.f5231h.getService(new zzd(this, this.u.get()), getServiceRequest);
                    }
                }
            } catch (RemoteException | RuntimeException unused) {
                a(8, (IBinder) null, (Bundle) null, this.u.get());
            }
        } catch (DeadObjectException unused2) {
            b(1);
        } catch (SecurityException e2) {
            throw e2;
        }
    }

    @KeepForSdk
    public void b(int i2) {
        Handler handler = this.f5228e;
        handler.sendMessage(handler.obtainMessage(6, this.u.get(), i2));
    }

    @KeepForSdk
    public void a(@NonNull e eVar) {
        eVar.a();
    }
}
