package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ka implements sq1 {

    /* renamed from: b, reason: collision with root package name */
    private final pa f7643b;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private final fa f7645d;

    /* renamed from: a, reason: collision with root package name */
    private final Object f7642a = new Object();

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private final HashSet<w9> f7646e = new HashSet<>();

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    private final HashSet<Object> f7647f = new HashSet<>();

    /* renamed from: c, reason: collision with root package name */
    private final ha f7644c = new ha();

    public ka(String str, pa paVar) {
        this.f7645d = new fa(str, paVar);
        this.f7643b = paVar;
    }

    public final void a(w9 w9Var) {
        synchronized (this.f7642a) {
            this.f7646e.add(w9Var);
        }
    }

    public final void b() {
        synchronized (this.f7642a) {
            this.f7645d.b();
        }
    }

    public final void a(HashSet<w9> hashSet) {
        synchronized (this.f7642a) {
            this.f7646e.addAll(hashSet);
        }
    }

    public final Bundle a(Context context, ia iaVar) {
        HashSet<w9> hashSet = new HashSet<>();
        synchronized (this.f7642a) {
            hashSet.addAll(this.f7646e);
            this.f7646e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f7645d.a(context, this.f7644c.b()));
        Bundle bundle2 = new Bundle();
        Iterator<Object> it = this.f7647f.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<w9> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().a());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            iaVar.a(hashSet);
            return bundle;
        }
        it.next();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.sq1
    public final void a(boolean z) {
        long a2 = com.google.android.gms.ads.internal.n.j().a();
        if (z) {
            if (a2 - this.f7643b.f() > ((Long) mu1.e().a(aw1.K0)).longValue()) {
                this.f7645d.f6601d = -1;
                return;
            } else {
                this.f7645d.f6601d = this.f7643b.j();
                return;
            }
        }
        this.f7643b.b(a2);
        this.f7643b.b(this.f7645d.f6601d);
    }

    public final void a() {
        synchronized (this.f7642a) {
            this.f7645d.a();
        }
    }

    public final void a(zztp zztpVar, long j2) {
        synchronized (this.f7642a) {
            this.f7645d.a(zztpVar, j2);
        }
    }

    public final w9 a(com.google.android.gms.common.util.e eVar, String str) {
        return new w9(eVar, this, this.f7644c.a(), str);
    }
}
