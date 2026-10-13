package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class g implements Handler.Callback {
    public static final Status r = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status s = new Status(4, "The user must be signed in to make this API call.");
    private static final Object t = new Object();

    @GuardedBy("lock")
    private static g u;

    /* renamed from: h, reason: collision with root package name */
    private final Context f5050h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.android.gms.common.c f5051i;

    /* renamed from: j, reason: collision with root package name */
    private final com.google.android.gms.common.internal.j f5052j;
    private final Handler q;

    /* renamed from: e, reason: collision with root package name */
    private long f5047e = 5000;

    /* renamed from: f, reason: collision with root package name */
    private long f5048f = 120000;

    /* renamed from: g, reason: collision with root package name */
    private long f5049g = 10000;

    /* renamed from: k, reason: collision with root package name */
    private final AtomicInteger f5053k = new AtomicInteger(1);

    /* renamed from: l, reason: collision with root package name */
    private final AtomicInteger f5054l = new AtomicInteger(0);
    private final Map<com.google.android.gms.common.api.internal.b<?>, a<?>> m = new ConcurrentHashMap(5, 0.75f, 1);

    @GuardedBy("lock")
    private x n = null;

    @GuardedBy("lock")
    private final Set<com.google.android.gms.common.api.internal.b<?>> o = new a.e.b();
    private final Set<com.google.android.gms.common.api.internal.b<?>> p = new a.e.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public class b implements t0, BaseGmsClient.c {

        /* renamed from: a, reason: collision with root package name */
        private final a.f f5063a;

        /* renamed from: b, reason: collision with root package name */
        private final com.google.android.gms.common.api.internal.b<?> f5064b;

        /* renamed from: c, reason: collision with root package name */
        private IAccountAccessor f5065c = null;

        /* renamed from: d, reason: collision with root package name */
        private Set<Scope> f5066d = null;

        /* renamed from: e, reason: collision with root package name */
        private boolean f5067e = false;

        public b(a.f fVar, com.google.android.gms.common.api.internal.b<?> bVar) {
            this.f5063a = fVar;
            this.f5064b = bVar;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.c
        public final void a(@NonNull ConnectionResult connectionResult) {
            g.this.q.post(new m0(this, connectionResult));
        }

        @Override // com.google.android.gms.common.api.internal.t0
        @WorkerThread
        public final void b(ConnectionResult connectionResult) {
            ((a) g.this.m.get(this.f5064b)).a(connectionResult);
        }

        @Override // com.google.android.gms.common.api.internal.t0
        @WorkerThread
        public final void a(IAccountAccessor iAccountAccessor, Set<Scope> set) {
            if (iAccountAccessor != null && set != null) {
                this.f5065c = iAccountAccessor;
                this.f5066d = set;
                a();
            } else {
                new Exception();
                b(new ConnectionResult(4));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public final void a() {
            IAccountAccessor iAccountAccessor;
            if (!this.f5067e || (iAccountAccessor = this.f5065c) == null) {
                return;
            }
            this.f5063a.a(iAccountAccessor, this.f5066d);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ boolean a(b bVar, boolean z) {
            bVar.f5067e = true;
            return true;
        }
    }

    @KeepForSdk
    private g(Context context, Looper looper, com.google.android.gms.common.c cVar) {
        this.f5050h = context;
        this.q = new com.google.android.gms.internal.base.c(looper, this);
        this.f5051i = cVar;
        this.f5052j = new com.google.android.gms.common.internal.j(cVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static g a(Context context) {
        g gVar;
        synchronized (t) {
            if (u == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                u = new g(context.getApplicationContext(), handlerThread.getLooper(), com.google.android.gms.common.c.a());
            }
            gVar = u;
        }
        return gVar;
    }

    @WorkerThread
    private final void b(com.google.android.gms.common.api.e<?> eVar) {
        com.google.android.gms.common.api.internal.b<?> a2 = eVar.a();
        a<?> aVar = this.m.get(a2);
        if (aVar == null) {
            aVar = new a<>(eVar);
            this.m.put(a2, aVar);
        }
        if (aVar.d()) {
            this.p.add(a2);
        }
        aVar.a();
    }

    @KeepForSdk
    public static void c() {
        synchronized (t) {
            if (u != null) {
                g gVar = u;
                gVar.f5054l.incrementAndGet();
                gVar.q.sendMessageAtFrontOfQueue(gVar.q.obtainMessage(10));
            }
        }
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public boolean handleMessage(Message message) {
        a<?> aVar;
        int i2 = message.what;
        switch (i2) {
            case 1:
                this.f5049g = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.q.removeMessages(12);
                for (com.google.android.gms.common.api.internal.b<?> bVar : this.m.keySet()) {
                    Handler handler = this.q;
                    handler.sendMessageDelayed(handler.obtainMessage(12, bVar), this.f5049g);
                }
                return true;
            case 2:
                g1 g1Var = (g1) message.obj;
                Iterator<com.google.android.gms.common.api.internal.b<?>> it = g1Var.a().iterator();
                while (true) {
                    if (it.hasNext()) {
                        com.google.android.gms.common.api.internal.b<?> next = it.next();
                        a<?> aVar2 = this.m.get(next);
                        if (aVar2 == null) {
                            g1Var.a(next, new ConnectionResult(13), null);
                        } else if (aVar2.c()) {
                            g1Var.a(next, ConnectionResult.f4971i, aVar2.f().e());
                        } else if (aVar2.k() != null) {
                            g1Var.a(next, aVar2.k(), null);
                        } else {
                            aVar2.a(g1Var);
                            aVar2.a();
                        }
                    }
                }
                return true;
            case 3:
                for (a<?> aVar3 : this.m.values()) {
                    aVar3.j();
                    aVar3.a();
                }
                return true;
            case 4:
            case 8:
            case 13:
                p0 p0Var = (p0) message.obj;
                a<?> aVar4 = this.m.get(p0Var.f5117c.a());
                if (aVar4 == null) {
                    b(p0Var.f5117c);
                    aVar4 = this.m.get(p0Var.f5117c.a());
                }
                if (aVar4.d() && this.f5054l.get() != p0Var.f5116b) {
                    p0Var.f5115a.a(r);
                    aVar4.h();
                } else {
                    aVar4.a(p0Var.f5115a);
                }
                return true;
            case 5:
                int i3 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<a<?>> it2 = this.m.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        aVar = it2.next();
                        if (aVar.b() == i3) {
                        }
                    } else {
                        aVar = null;
                    }
                }
                if (aVar != null) {
                    String a2 = this.f5051i.a(connectionResult.j());
                    String k2 = connectionResult.k();
                    StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 69 + String.valueOf(k2).length());
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(a2);
                    sb.append(": ");
                    sb.append(k2);
                    aVar.a(new Status(17, sb.toString()));
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i3);
                    sb2.append(" while trying to fail enqueued calls.");
                    sb2.toString();
                    new Exception();
                }
                return true;
            case 6:
                if (com.google.android.gms.common.util.o.a() && (this.f5050h.getApplicationContext() instanceof Application)) {
                    com.google.android.gms.common.api.internal.c.a((Application) this.f5050h.getApplicationContext());
                    com.google.android.gms.common.api.internal.c.b().a(new g0(this));
                    if (!com.google.android.gms.common.api.internal.c.b().a(true)) {
                        this.f5049g = 300000L;
                    }
                }
                return true;
            case 7:
                b((com.google.android.gms.common.api.e<?>) message.obj);
                return true;
            case 9:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).e();
                }
                return true;
            case 10:
                Iterator<com.google.android.gms.common.api.internal.b<?>> it3 = this.p.iterator();
                while (it3.hasNext()) {
                    this.m.remove(it3.next()).h();
                }
                this.p.clear();
                return true;
            case 11:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).g();
                }
                return true;
            case 12:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).l();
                }
                return true;
            case 14:
                y yVar = (y) message.obj;
                com.google.android.gms.common.api.internal.b<?> a3 = yVar.a();
                if (!this.m.containsKey(a3)) {
                    yVar.b().a((e.i.b.b.d.i<Boolean>) false);
                } else {
                    yVar.b().a((e.i.b.b.d.i<Boolean>) Boolean.valueOf(this.m.get(a3).a(false)));
                }
                return true;
            case 15:
                c cVar = (c) message.obj;
                if (this.m.containsKey(cVar.f5069a)) {
                    this.m.get(cVar.f5069a).a(cVar);
                }
                return true;
            case 16:
                c cVar2 = (c) message.obj;
                if (this.m.containsKey(cVar2.f5069a)) {
                    this.m.get(cVar2.f5069a).b(cVar2);
                }
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                sb3.toString();
                return false;
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public class a<O extends a.d> implements f.a, f.b, m1 {

        /* renamed from: f, reason: collision with root package name */
        private final a.f f5056f;

        /* renamed from: g, reason: collision with root package name */
        private final a.b f5057g;

        /* renamed from: h, reason: collision with root package name */
        private final com.google.android.gms.common.api.internal.b<O> f5058h;

        /* renamed from: i, reason: collision with root package name */
        private final n1 f5059i;

        /* renamed from: l, reason: collision with root package name */
        private final int f5062l;
        private final zace m;
        private boolean n;

        /* renamed from: e, reason: collision with root package name */
        private final Queue<r0> f5055e = new LinkedList();

        /* renamed from: j, reason: collision with root package name */
        private final Set<g1> f5060j = new HashSet();

        /* renamed from: k, reason: collision with root package name */
        private final Map<k.a<?>, q0> f5061k = new HashMap();
        private final List<c> o = new ArrayList();
        private ConnectionResult p = null;

        @WorkerThread
        public a(com.google.android.gms.common.api.e<O> eVar) {
            this.f5056f = eVar.a(g.this.q.getLooper(), this);
            a.f fVar = this.f5056f;
            if (fVar instanceof com.google.android.gms.common.internal.o) {
                this.f5057g = ((com.google.android.gms.common.internal.o) fVar).B();
            } else {
                this.f5057g = fVar;
            }
            this.f5058h = eVar.a();
            this.f5059i = new n1();
            this.f5062l = eVar.f();
            if (!this.f5056f.j()) {
                this.m = null;
            } else {
                this.m = eVar.a(g.this.f5050h, g.this.q);
            }
        }

        @WorkerThread
        private final boolean b(@NonNull ConnectionResult connectionResult) {
            synchronized (g.t) {
                if (g.this.n == null || !g.this.o.contains(this.f5058h)) {
                    return false;
                }
                g.this.n.b(connectionResult, this.f5062l);
                return true;
            }
        }

        @WorkerThread
        private final void c(r0 r0Var) {
            r0Var.a(this.f5059i, d());
            try {
                r0Var.a((a<?>) this);
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                this.f5056f.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public final void m() {
            j();
            c(ConnectionResult.f4971i);
            p();
            Iterator<q0> it = this.f5061k.values().iterator();
            while (it.hasNext()) {
                q0 next = it.next();
                if (a(next.f5121a.c()) != null) {
                    it.remove();
                } else {
                    try {
                        next.f5121a.a(this.f5057g, new e.i.b.b.d.i<>());
                    } catch (DeadObjectException unused) {
                        onConnectionSuspended(1);
                        this.f5056f.a();
                    } catch (RemoteException unused2) {
                        it.remove();
                    }
                }
            }
            o();
            q();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public final void n() {
            j();
            this.n = true;
            this.f5059i.c();
            g.this.q.sendMessageDelayed(Message.obtain(g.this.q, 9, this.f5058h), g.this.f5047e);
            g.this.q.sendMessageDelayed(Message.obtain(g.this.q, 11, this.f5058h), g.this.f5048f);
            g.this.f5052j.a();
        }

        @WorkerThread
        private final void o() {
            ArrayList arrayList = new ArrayList(this.f5055e);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                r0 r0Var = (r0) obj;
                if (!this.f5056f.f()) {
                    return;
                }
                if (b(r0Var)) {
                    this.f5055e.remove(r0Var);
                }
            }
        }

        @WorkerThread
        private final void p() {
            if (this.n) {
                g.this.q.removeMessages(11, this.f5058h);
                g.this.q.removeMessages(9, this.f5058h);
                this.n = false;
            }
        }

        private final void q() {
            g.this.q.removeMessages(12, this.f5058h);
            g.this.q.sendMessageDelayed(g.this.q.obtainMessage(12, this.f5058h), g.this.f5049g);
        }

        @WorkerThread
        public final void a(@NonNull ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.m.a(g.this.q);
            this.f5056f.a();
            onConnectionFailed(connectionResult);
        }

        public final boolean d() {
            return this.f5056f.j();
        }

        @WorkerThread
        public final void e() {
            com.google.android.gms.common.internal.m.a(g.this.q);
            if (this.n) {
                a();
            }
        }

        public final a.f f() {
            return this.f5056f;
        }

        @WorkerThread
        public final void g() {
            Status status;
            com.google.android.gms.common.internal.m.a(g.this.q);
            if (this.n) {
                p();
                if (g.this.f5051i.b(g.this.f5050h) == 18) {
                    status = new Status(8, "Connection timed out while waiting for Google Play services update to complete.");
                } else {
                    status = new Status(8, "API failed to connect while resuming due to an unknown error.");
                }
                a(status);
                this.f5056f.a();
            }
        }

        @WorkerThread
        public final void h() {
            com.google.android.gms.common.internal.m.a(g.this.q);
            a(g.r);
            this.f5059i.b();
            for (k.a aVar : (k.a[]) this.f5061k.keySet().toArray(new k.a[this.f5061k.size()])) {
                a(new f1(aVar, new e.i.b.b.d.i()));
            }
            c(new ConnectionResult(4));
            if (this.f5056f.f()) {
                this.f5056f.a(new k0(this));
            }
        }

        public final Map<k.a<?>, q0> i() {
            return this.f5061k;
        }

        @WorkerThread
        public final void j() {
            com.google.android.gms.common.internal.m.a(g.this.q);
            this.p = null;
        }

        @WorkerThread
        public final ConnectionResult k() {
            com.google.android.gms.common.internal.m.a(g.this.q);
            return this.p;
        }

        @WorkerThread
        public final boolean l() {
            return a(true);
        }

        @Override // com.google.android.gms.common.api.internal.f
        public final void onConnected(@Nullable Bundle bundle) {
            if (Looper.myLooper() == g.this.q.getLooper()) {
                m();
            } else {
                g.this.q.post(new h0(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.m
        @WorkerThread
        public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.m.a(g.this.q);
            zace zaceVar = this.m;
            if (zaceVar != null) {
                zaceVar.zabq();
            }
            j();
            g.this.f5052j.a();
            c(connectionResult);
            if (connectionResult.j() == 4) {
                a(g.s);
                return;
            }
            if (this.f5055e.isEmpty()) {
                this.p = connectionResult;
                return;
            }
            if (b(connectionResult) || g.this.b(connectionResult, this.f5062l)) {
                return;
            }
            if (connectionResult.j() == 18) {
                this.n = true;
            }
            if (this.n) {
                g.this.q.sendMessageDelayed(Message.obtain(g.this.q, 9, this.f5058h), g.this.f5047e);
                return;
            }
            String a2 = this.f5058h.a();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 63 + String.valueOf(valueOf).length());
            sb.append("API: ");
            sb.append(a2);
            sb.append(" is not available on this device. Connection failed with: ");
            sb.append(valueOf);
            a(new Status(17, sb.toString()));
        }

        @Override // com.google.android.gms.common.api.internal.f
        public final void onConnectionSuspended(int i2) {
            if (Looper.myLooper() == g.this.q.getLooper()) {
                n();
            } else {
                g.this.q.post(new i0(this));
            }
        }

        @WorkerThread
        public final void a(r0 r0Var) {
            com.google.android.gms.common.internal.m.a(g.this.q);
            if (this.f5056f.f()) {
                if (b(r0Var)) {
                    q();
                    return;
                } else {
                    this.f5055e.add(r0Var);
                    return;
                }
            }
            this.f5055e.add(r0Var);
            ConnectionResult connectionResult = this.p;
            if (connectionResult != null && connectionResult.m()) {
                onConnectionFailed(this.p);
            } else {
                a();
            }
        }

        @WorkerThread
        private final void c(ConnectionResult connectionResult) {
            for (g1 g1Var : this.f5060j) {
                String str = null;
                if (com.google.android.gms.common.internal.k.a(connectionResult, ConnectionResult.f4971i)) {
                    str = this.f5056f.e();
                }
                g1Var.a(this.f5058h, connectionResult, str);
            }
            this.f5060j.clear();
        }

        @WorkerThread
        private final boolean b(r0 r0Var) {
            if (!(r0Var instanceof c0)) {
                c(r0Var);
                return true;
            }
            c0 c0Var = (c0) r0Var;
            Feature a2 = a(c0Var.b((a<?>) this));
            if (a2 == null) {
                c(r0Var);
                return true;
            }
            if (c0Var.c(this)) {
                c cVar = new c(this.f5058h, a2, null);
                int indexOf = this.o.indexOf(cVar);
                if (indexOf >= 0) {
                    c cVar2 = this.o.get(indexOf);
                    g.this.q.removeMessages(15, cVar2);
                    g.this.q.sendMessageDelayed(Message.obtain(g.this.q, 15, cVar2), g.this.f5047e);
                    return false;
                }
                this.o.add(cVar);
                g.this.q.sendMessageDelayed(Message.obtain(g.this.q, 15, cVar), g.this.f5047e);
                g.this.q.sendMessageDelayed(Message.obtain(g.this.q, 16, cVar), g.this.f5048f);
                ConnectionResult connectionResult = new ConnectionResult(2, null);
                if (b(connectionResult)) {
                    return false;
                }
                g.this.b(connectionResult, this.f5062l);
                return false;
            }
            c0Var.a(new com.google.android.gms.common.api.p(a2));
            return false;
        }

        final boolean c() {
            return this.f5056f.f();
        }

        @WorkerThread
        public final void a(Status status) {
            com.google.android.gms.common.internal.m.a(g.this.q);
            Iterator<r0> it = this.f5055e.iterator();
            while (it.hasNext()) {
                it.next().a(status);
            }
            this.f5055e.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public final boolean a(boolean z) {
            com.google.android.gms.common.internal.m.a(g.this.q);
            if (!this.f5056f.f() || this.f5061k.size() != 0) {
                return false;
            }
            if (!this.f5059i.a()) {
                this.f5056f.a();
                return true;
            }
            if (z) {
                q();
            }
            return false;
        }

        @WorkerThread
        public final void a() {
            com.google.android.gms.common.internal.m.a(g.this.q);
            if (this.f5056f.f() || this.f5056f.d()) {
                return;
            }
            int a2 = g.this.f5052j.a(g.this.f5050h, this.f5056f);
            if (a2 != 0) {
                onConnectionFailed(new ConnectionResult(a2, null));
                return;
            }
            b bVar = new b(this.f5056f, this.f5058h);
            if (this.f5056f.j()) {
                this.m.zaa(bVar);
            }
            this.f5056f.a(bVar);
        }

        @WorkerThread
        public final void a(g1 g1Var) {
            com.google.android.gms.common.internal.m.a(g.this.q);
            this.f5060j.add(g1Var);
        }

        public final int b() {
            return this.f5062l;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public final void b(c cVar) {
            Feature[] b2;
            if (this.o.remove(cVar)) {
                g.this.q.removeMessages(15, cVar);
                g.this.q.removeMessages(16, cVar);
                Feature feature = cVar.f5070b;
                ArrayList arrayList = new ArrayList(this.f5055e.size());
                for (r0 r0Var : this.f5055e) {
                    if ((r0Var instanceof c0) && (b2 = ((c0) r0Var).b((a<?>) this)) != null && com.google.android.gms.common.util.b.a(b2, feature)) {
                        arrayList.add(r0Var);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    r0 r0Var2 = (r0) obj;
                    this.f5055e.remove(r0Var2);
                    r0Var2.a(new com.google.android.gms.common.api.p(feature));
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        @WorkerThread
        private final Feature a(@Nullable Feature[] featureArr) {
            if (featureArr != null && featureArr.length != 0) {
                Feature[] i2 = this.f5056f.i();
                if (i2 == null) {
                    i2 = new Feature[0];
                }
                a.e.a aVar = new a.e.a(i2.length);
                for (Feature feature : i2) {
                    aVar.put(feature.j(), Long.valueOf(feature.k()));
                }
                for (Feature feature2 : featureArr) {
                    if (!aVar.containsKey(feature2.j()) || ((Long) aVar.get(feature2.j())).longValue() < feature2.k()) {
                        return feature2;
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public final void a(c cVar) {
            if (this.o.contains(cVar) && !this.n) {
                if (!this.f5056f.f()) {
                    a();
                } else {
                    o();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final com.google.android.gms.common.api.internal.b<?> f5069a;

        /* renamed from: b, reason: collision with root package name */
        private final Feature f5070b;

        private c(com.google.android.gms.common.api.internal.b<?> bVar, Feature feature) {
            this.f5069a = bVar;
            this.f5070b = feature;
        }

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof c)) {
                c cVar = (c) obj;
                if (com.google.android.gms.common.internal.k.a(this.f5069a, cVar.f5069a) && com.google.android.gms.common.internal.k.a(this.f5070b, cVar.f5070b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return com.google.android.gms.common.internal.k.a(this.f5069a, this.f5070b);
        }

        public final String toString() {
            k.a a2 = com.google.android.gms.common.internal.k.a(this);
            a2.a("key", this.f5069a);
            a2.a("feature", this.f5070b);
            return a2.toString();
        }

        /* synthetic */ c(com.google.android.gms.common.api.internal.b bVar, Feature feature, g0 g0Var) {
            this(bVar, feature);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(@NonNull x xVar) {
        synchronized (t) {
            if (this.n == xVar) {
                this.n = null;
                this.o.clear();
            }
        }
    }

    public final int a() {
        return this.f5053k.getAndIncrement();
    }

    public final void a(com.google.android.gms.common.api.e<?> eVar) {
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(7, eVar));
    }

    public final void a(@NonNull x xVar) {
        synchronized (t) {
            if (this.n != xVar) {
                this.n = xVar;
                this.o.clear();
            }
            this.o.addAll(xVar.h());
        }
    }

    public final void b() {
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(3));
    }

    final boolean b(ConnectionResult connectionResult, int i2) {
        return this.f5051i.a(this.f5050h, connectionResult, i2);
    }

    public final <O extends a.d> void a(com.google.android.gms.common.api.e<O> eVar, int i2, d<? extends com.google.android.gms.common.api.m, a.b> dVar) {
        b1 b1Var = new b1(i2, dVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(4, new p0(b1Var, this.f5054l.get(), eVar)));
    }

    public final <O extends a.d, ResultT> void a(com.google.android.gms.common.api.e<O> eVar, int i2, s<a.b, ResultT> sVar, e.i.b.b.d.i<ResultT> iVar, q qVar) {
        d1 d1Var = new d1(i2, sVar, iVar, qVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(4, new p0(d1Var, this.f5054l.get(), eVar)));
    }

    public final <O extends a.d> e.i.b.b.d.h<Void> a(@NonNull com.google.android.gms.common.api.e<O> eVar, @NonNull n<a.b, ?> nVar, @NonNull u<a.b, ?> uVar) {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        e1 e1Var = new e1(new q0(nVar, uVar), iVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(8, new p0(e1Var, this.f5054l.get(), eVar)));
        return iVar.a();
    }

    public final <O extends a.d> e.i.b.b.d.h<Boolean> a(@NonNull com.google.android.gms.common.api.e<O> eVar, @NonNull k.a<?> aVar) {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        f1 f1Var = new f1(aVar, iVar);
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(13, new p0(f1Var, this.f5054l.get(), eVar)));
        return iVar.a();
    }

    public final void a(ConnectionResult connectionResult, int i2) {
        if (b(connectionResult, i2)) {
            return;
        }
        Handler handler = this.q;
        handler.sendMessage(handler.obtainMessage(5, i2, 0, connectionResult));
    }
}
