package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class su1 {

    /* renamed from: a, reason: collision with root package name */
    private final Date f9451a;

    /* renamed from: b, reason: collision with root package name */
    private final String f9452b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9453c;

    /* renamed from: d, reason: collision with root package name */
    private final Set<String> f9454d;

    /* renamed from: e, reason: collision with root package name */
    private final Location f9455e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f9456f;

    /* renamed from: g, reason: collision with root package name */
    private final Bundle f9457g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<Class<? extends com.google.android.gms.ads.mediation.u>, com.google.android.gms.ads.mediation.u> f9458h;

    /* renamed from: i, reason: collision with root package name */
    private final String f9459i;

    /* renamed from: j, reason: collision with root package name */
    private final String f9460j;

    /* renamed from: k, reason: collision with root package name */
    private final com.google.android.gms.ads.search.b f9461k;

    /* renamed from: l, reason: collision with root package name */
    private final int f9462l;
    private final Set<String> m;
    private final Bundle n;
    private final Set<String> o;
    private final boolean p;
    private final int q;
    private final String r;

    public su1(ru1 ru1Var) {
        this(ru1Var, null);
    }

    @Deprecated
    public final Date a() {
        return this.f9451a;
    }

    public final String b() {
        return this.f9452b;
    }

    public final Bundle c() {
        return this.n;
    }

    @Deprecated
    public final int d() {
        return this.f9453c;
    }

    public final Set<String> e() {
        return this.f9454d;
    }

    public final Location f() {
        return this.f9455e;
    }

    public final boolean g() {
        return this.f9456f;
    }

    @Nullable
    public final String h() {
        return this.r;
    }

    public final String i() {
        return this.f9459i;
    }

    @Deprecated
    public final boolean j() {
        return this.p;
    }

    public final String k() {
        return this.f9460j;
    }

    public final com.google.android.gms.ads.search.b l() {
        return this.f9461k;
    }

    public final Map<Class<? extends com.google.android.gms.ads.mediation.u>, com.google.android.gms.ads.mediation.u> m() {
        return this.f9458h;
    }

    public final Bundle n() {
        return this.f9457g;
    }

    public final int o() {
        return this.f9462l;
    }

    public final Set<String> p() {
        return this.o;
    }

    public final int q() {
        return this.q;
    }

    public su1(ru1 ru1Var, com.google.android.gms.ads.search.b bVar) {
        Date date;
        String str;
        int i2;
        HashSet hashSet;
        Location location;
        boolean z;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i3;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z2;
        int i4;
        String str4;
        date = ru1Var.f9245g;
        this.f9451a = date;
        str = ru1Var.f9246h;
        this.f9452b = str;
        i2 = ru1Var.f9247i;
        this.f9453c = i2;
        hashSet = ru1Var.f9239a;
        this.f9454d = Collections.unmodifiableSet(hashSet);
        location = ru1Var.f9248j;
        this.f9455e = location;
        z = ru1Var.f9249k;
        this.f9456f = z;
        bundle = ru1Var.f9240b;
        this.f9457g = bundle;
        hashMap = ru1Var.f9241c;
        this.f9458h = Collections.unmodifiableMap(hashMap);
        str2 = ru1Var.f9250l;
        this.f9459i = str2;
        str3 = ru1Var.m;
        this.f9460j = str3;
        this.f9461k = bVar;
        i3 = ru1Var.n;
        this.f9462l = i3;
        hashSet2 = ru1Var.f9242d;
        this.m = Collections.unmodifiableSet(hashSet2);
        bundle2 = ru1Var.f9243e;
        this.n = bundle2;
        hashSet3 = ru1Var.f9244f;
        this.o = Collections.unmodifiableSet(hashSet3);
        z2 = ru1Var.o;
        this.p = z2;
        i4 = ru1Var.p;
        this.q = i4;
        str4 = ru1Var.q;
        this.r = str4;
    }

    public final Bundle a(Class<? extends com.google.android.gms.ads.mediation.i> cls) {
        return this.f9457g.getBundle(cls.getName());
    }

    public final boolean a(Context context) {
        Set<String> set = this.m;
        mu1.a();
        return set.contains(gd.a(context));
    }
}
