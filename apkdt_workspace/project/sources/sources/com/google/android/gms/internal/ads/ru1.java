package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class ru1 {

    /* renamed from: g, reason: collision with root package name */
    private Date f9245g;

    /* renamed from: h, reason: collision with root package name */
    private String f9246h;

    /* renamed from: j, reason: collision with root package name */
    private Location f9248j;

    /* renamed from: l, reason: collision with root package name */
    private String f9250l;
    private String m;
    private boolean o;
    private String q;

    /* renamed from: a, reason: collision with root package name */
    private final HashSet<String> f9239a = new HashSet<>();

    /* renamed from: b, reason: collision with root package name */
    private final Bundle f9240b = new Bundle();

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<Class<? extends com.google.android.gms.ads.mediation.u>, com.google.android.gms.ads.mediation.u> f9241c = new HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private final HashSet<String> f9242d = new HashSet<>();

    /* renamed from: e, reason: collision with root package name */
    private final Bundle f9243e = new Bundle();

    /* renamed from: f, reason: collision with root package name */
    private final HashSet<String> f9244f = new HashSet<>();

    /* renamed from: i, reason: collision with root package name */
    private int f9247i = -1;

    /* renamed from: k, reason: collision with root package name */
    private boolean f9249k = false;
    private int n = -1;
    private int p = -1;

    public final void a(String str) {
        this.f9239a.add(str);
    }

    public final void b(String str) {
        this.f9242d.add(str);
    }

    public final void c(String str) {
        this.f9242d.remove(str);
    }

    public final void a(Class<? extends com.google.android.gms.ads.mediation.i> cls, Bundle bundle) {
        this.f9240b.putBundle(cls.getName(), bundle);
    }

    @Deprecated
    public final void b(boolean z) {
        this.o = z;
    }

    @Deprecated
    public final void a(Date date) {
        this.f9245g = date;
    }

    @Deprecated
    public final void a(int i2) {
        this.f9247i = i2;
    }

    public final void a(Location location) {
        this.f9248j = location;
    }

    @Deprecated
    public final void a(boolean z) {
        this.n = z ? 1 : 0;
    }
}
