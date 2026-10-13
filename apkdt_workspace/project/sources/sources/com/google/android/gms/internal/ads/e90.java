package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e90 {

    /* renamed from: e, reason: collision with root package name */
    private final Context f6361e;

    /* renamed from: f, reason: collision with root package name */
    private final WeakReference<Context> f6362f;

    /* renamed from: g, reason: collision with root package name */
    private final ke0 f6363g;

    /* renamed from: h, reason: collision with root package name */
    private final Executor f6364h;

    /* renamed from: i, reason: collision with root package name */
    private final Executor f6365i;

    /* renamed from: j, reason: collision with root package name */
    private final ScheduledExecutorService f6366j;

    /* renamed from: k, reason: collision with root package name */
    private final n80 f6367k;

    /* renamed from: a, reason: collision with root package name */
    private boolean f6357a = false;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f6358b = false;

    /* renamed from: d, reason: collision with root package name */
    private final he<Boolean> f6360d = new he<>();

    /* renamed from: l, reason: collision with root package name */
    private Map<String, zzaex> f6368l = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final long f6359c = com.google.android.gms.ads.internal.n.j().c();

    public e90(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, ke0 ke0Var, ScheduledExecutorService scheduledExecutorService, n80 n80Var) {
        this.f6363g = ke0Var;
        this.f6361e = context;
        this.f6362f = weakReference;
        this.f6364h = executor2;
        this.f6366j = scheduledExecutorService;
        this.f6365i = executor;
        this.f6367k = n80Var;
        a("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    private final synchronized qz0<String> f() {
        String c2 = com.google.android.gms.ads.internal.n.g().i().h().c();
        if (!TextUtils.isEmpty(c2)) {
            return gz0.a(c2);
        }
        final he heVar = new he();
        com.google.android.gms.ads.internal.n.g().i().a(new Runnable(this, heVar) { // from class: com.google.android.gms.internal.ads.j90

            /* renamed from: e, reason: collision with root package name */
            private final e90 f7443e;

            /* renamed from: f, reason: collision with root package name */
            private final he f7444f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7443e = this;
                this.f7444f = heVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7443e.a(this.f7444f);
            }
        });
        return heVar;
    }

    public final void a(final zzafe zzafeVar) {
        this.f6360d.a(new Runnable(this, zzafeVar) { // from class: com.google.android.gms.internal.ads.h90

            /* renamed from: e, reason: collision with root package name */
            private final e90 f7025e;

            /* renamed from: f, reason: collision with root package name */
            private final zzafe f7026f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7025e = this;
                this.f7026f = zzafeVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7025e.b(this.f7026f);
            }
        }, this.f6365i);
    }

    public final List<zzaex> b() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6368l.keySet()) {
            zzaex zzaexVar = this.f6368l.get(str);
            arrayList.add(new zzaex(str, zzaexVar.f10912f, zzaexVar.f10913g, zzaexVar.f10914h));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object c() {
        this.f6360d.b(true);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d() {
        synchronized (this) {
            if (this.f6358b) {
                return;
            }
            a("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (com.google.android.gms.ads.internal.n.j().c() - this.f6359c));
            this.f6360d.a(new Exception());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void e() {
        this.f6367k.b();
    }

    public final void a() {
        if (((Boolean) mu1.e().a(aw1.l1)).booleanValue()) {
            if (!((Boolean) mu1.e().a(aw1.m1)).booleanValue()) {
                if (this.f6357a) {
                    return;
                }
                synchronized (this) {
                    if (this.f6357a) {
                        return;
                    }
                    this.f6367k.a();
                    this.f6360d.a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.g90

                        /* renamed from: e, reason: collision with root package name */
                        private final e90 f6829e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f6829e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6829e.e();
                        }
                    }, this.f6364h);
                    this.f6357a = true;
                    qz0<String> f2 = f();
                    this.f6366j.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.i90

                        /* renamed from: e, reason: collision with root package name */
                        private final e90 f7255e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f7255e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7255e.d();
                        }
                    }, ((Long) mu1.e().a(aw1.o1)).longValue(), TimeUnit.SECONDS);
                    gz0.a(f2, new q90(this), this.f6364h);
                    return;
                }
            }
        }
        a("com.google.android.gms.ads.MobileAds", true, "", 0);
        this.f6360d.b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(zzafe zzafeVar) {
        try {
            zzafeVar.zzc(b());
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final Object obj = new Object();
                final he heVar = new he();
                qz0 a2 = gz0.a(heVar, ((Long) mu1.e().a(aw1.n1)).longValue(), TimeUnit.SECONDS, this.f6366j);
                this.f6367k.a(next);
                final long c2 = com.google.android.gms.ads.internal.n.j().c();
                Iterator<String> it = keys;
                a2.a(new Runnable(this, obj, heVar, next, c2) { // from class: com.google.android.gms.internal.ads.l90

                    /* renamed from: e, reason: collision with root package name */
                    private final e90 f7849e;

                    /* renamed from: f, reason: collision with root package name */
                    private final Object f7850f;

                    /* renamed from: g, reason: collision with root package name */
                    private final he f7851g;

                    /* renamed from: h, reason: collision with root package name */
                    private final String f7852h;

                    /* renamed from: i, reason: collision with root package name */
                    private final long f7853i;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7849e = this;
                        this.f7850f = obj;
                        this.f7851g = heVar;
                        this.f7852h = next;
                        this.f7853i = c2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f7849e.a(this.f7850f, this.f7851g, this.f7852h, this.f7853i);
                    }
                }, this.f6364h);
                arrayList.add(a2);
                final zzccc zzcccVar = new zzccc(this, obj, next, c2, heVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzafh(optString, bundle));
                        }
                    } catch (JSONException unused) {
                    }
                }
                a(next, false, "", 0);
                try {
                    try {
                        final zzaji a3 = this.f6363g.a(next, new JSONObject());
                        this.f6365i.execute(new Runnable(this, a3, zzcccVar, arrayList2, next) { // from class: com.google.android.gms.internal.ads.n90

                            /* renamed from: e, reason: collision with root package name */
                            private final e90 f8304e;

                            /* renamed from: f, reason: collision with root package name */
                            private final zzaji f8305f;

                            /* renamed from: g, reason: collision with root package name */
                            private final zzaez f8306g;

                            /* renamed from: h, reason: collision with root package name */
                            private final List f8307h;

                            /* renamed from: i, reason: collision with root package name */
                            private final String f8308i;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f8304e = this;
                                this.f8305f = a3;
                                this.f8306g = zzcccVar;
                                this.f8307h = arrayList2;
                                this.f8308i = next;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f8304e.a(this.f8305f, this.f8306g, this.f8307h, this.f8308i);
                            }
                        });
                    } catch (RemoteException unused2) {
                        zzcccVar.onInitializationFailed("Failed to create Adapter.");
                    }
                } catch (RemoteException e2) {
                    qd.b("", e2);
                }
                keys = it;
            }
            gz0.b(arrayList).a(new Callable(this) { // from class: com.google.android.gms.internal.ads.k90

                /* renamed from: e, reason: collision with root package name */
                private final e90 f7641e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7641e = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f7641e.c();
                }
            }, this.f6364h);
        } catch (JSONException e3) {
            na.e("Malformed CLD response", e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, boolean z, String str2, int i2) {
        this.f6368l.put(str, new zzaex(str, z, i2, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(zzaji zzajiVar, zzaez zzaezVar, List list, String str) {
        try {
            try {
                Context context = this.f6362f.get();
                if (context == null) {
                    context = this.f6361e;
                }
                zzajiVar.zza(ObjectWrapper.wrap(context), zzaezVar, (List<zzafh>) list);
            } catch (RemoteException e2) {
                qd.b("", e2);
            }
        } catch (RemoteException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
            sb.append("Failed to initialize adapter. ");
            sb.append(str);
            sb.append(" does not implement the initialize() method.");
            zzaezVar.onInitializationFailed(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(Object obj, he heVar, String str, long j2) {
        synchronized (obj) {
            if (!heVar.isDone()) {
                a(str, false, "Timeout.", (int) (com.google.android.gms.ads.internal.n.j().c() - j2));
                this.f6367k.a(str, "timeout");
                heVar.b(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(final he heVar) {
        this.f6364h.execute(new Runnable(this, heVar) { // from class: com.google.android.gms.internal.ads.m90

            /* renamed from: e, reason: collision with root package name */
            private final he f8068e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8068e = heVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                he heVar2 = this.f8068e;
                String c2 = com.google.android.gms.ads.internal.n.g().i().h().c();
                if (!TextUtils.isEmpty(c2)) {
                    heVar2.b(c2);
                } else {
                    heVar2.a(new Exception());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(e90 e90Var, boolean z) {
        e90Var.f6358b = true;
        return true;
    }
}
