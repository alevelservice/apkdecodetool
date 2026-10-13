package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rn0 implements ko0<sn0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f9173a;

    /* renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f9174b;

    /* renamed from: c, reason: collision with root package name */
    private final ji0 f9175c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f9176d;

    /* renamed from: e, reason: collision with root package name */
    private final ws0 f9177e;

    /* renamed from: f, reason: collision with root package name */
    private final hi0 f9178f;

    /* renamed from: g, reason: collision with root package name */
    private String f9179g;

    public rn0(tz0 tz0Var, ScheduledExecutorService scheduledExecutorService, String str, ji0 ji0Var, Context context, ws0 ws0Var, hi0 hi0Var) {
        this.f9173a = tz0Var;
        this.f9174b = scheduledExecutorService;
        this.f9179g = str;
        this.f9175c = ji0Var;
        this.f9176d = context;
        this.f9177e = ws0Var;
        this.f9178f = hi0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ sn0 b(List list) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(((qz0) it.next()).get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return new sn0(jSONArray.toString());
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<sn0> a() {
        if (((Boolean) mu1.e().a(aw1.h1)).booleanValue()) {
            return gz0.a(this.f9173a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.un0

                /* renamed from: e, reason: collision with root package name */
                private final rn0 f9781e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9781e = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f9781e.b();
                }
            }), new qy0(this) { // from class: com.google.android.gms.internal.ads.tn0

                /* renamed from: a, reason: collision with root package name */
                private final rn0 f9621a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9621a = this;
                }

                @Override // com.google.android.gms.internal.ads.qy0
                public final qz0 b(Object obj) {
                    return this.f9621a.a((List) obj);
                }
            }, this.f9173a);
        }
        return gz0.a((Object) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ List b() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : this.f9175c.a(this.f9179g, this.f9177e.f10197f).entrySet()) {
            final String key = entry.getKey();
            final List<Bundle> value = entry.getValue();
            final he heVar = new he();
            Bundle bundle = this.f9177e.f10195d.q;
            final Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
            arrayList.add(gz0.a(heVar, ((Long) mu1.e().a(aw1.g1)).longValue(), TimeUnit.MILLISECONDS, this.f9174b));
            this.f9173a.execute(new Runnable(this, key, heVar, bundle2, value) { // from class: com.google.android.gms.internal.ads.wn0

                /* renamed from: e, reason: collision with root package name */
                private final rn0 f10152e;

                /* renamed from: f, reason: collision with root package name */
                private final String f10153f;

                /* renamed from: g, reason: collision with root package name */
                private final he f10154g;

                /* renamed from: h, reason: collision with root package name */
                private final Bundle f10155h;

                /* renamed from: i, reason: collision with root package name */
                private final List f10156i;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10152e = this;
                    this.f10153f = key;
                    this.f10154g = heVar;
                    this.f10155h = bundle2;
                    this.f10156i = value;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10152e.a(this.f10153f, this.f10154g, this.f10155h, this.f10156i);
                }
            });
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str, he heVar, Bundle bundle, List list) {
        try {
            this.f9178f.a(str);
            zzalj b2 = this.f9178f.b(str);
            if (b2 != null) {
                b2.zza(ObjectWrapper.wrap(this.f9176d), this.f9179g, bundle, (Bundle) list.get(0), this.f9177e.f10196e, new zzcld(str, b2, heVar));
                return;
            }
            throw new Exception("Missing Adapter.");
        } catch (Exception e2) {
            heVar.a(new Exception("Error calling adapter"));
            String valueOf = String.valueOf(str);
            qd.b(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(final List list) {
        return gz0.b(list).a(new Callable(list) { // from class: com.google.android.gms.internal.ads.vn0

            /* renamed from: e, reason: collision with root package name */
            private final List f9957e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9957e = list;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return rn0.b(this.f9957e);
            }
        }, this.f9173a);
    }
}
