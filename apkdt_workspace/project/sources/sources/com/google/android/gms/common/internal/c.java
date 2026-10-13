package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@VisibleForTesting
@KeepForSdk
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final Account f5276a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<Scope> f5277b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<Scope> f5278c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<com.google.android.gms.common.api.a<?>, b> f5279d;

    /* renamed from: e, reason: collision with root package name */
    private final String f5280e;

    /* renamed from: f, reason: collision with root package name */
    private final String f5281f;

    /* renamed from: g, reason: collision with root package name */
    private final e.i.b.b.c.a f5282g;

    /* renamed from: h, reason: collision with root package name */
    private Integer f5283h;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private Account f5284a;

        /* renamed from: b, reason: collision with root package name */
        private a.e.b<Scope> f5285b;

        /* renamed from: c, reason: collision with root package name */
        private Map<com.google.android.gms.common.api.a<?>, b> f5286c;

        /* renamed from: e, reason: collision with root package name */
        private View f5288e;

        /* renamed from: f, reason: collision with root package name */
        private String f5289f;

        /* renamed from: g, reason: collision with root package name */
        private String f5290g;

        /* renamed from: i, reason: collision with root package name */
        private boolean f5292i;

        /* renamed from: d, reason: collision with root package name */
        private int f5287d = 0;

        /* renamed from: h, reason: collision with root package name */
        private e.i.b.b.c.a f5291h = e.i.b.b.c.a.n;

        public final a a(Account account) {
            this.f5284a = account;
            return this;
        }

        @KeepForSdk
        public final a b(String str) {
            this.f5289f = str;
            return this;
        }

        public final a a(Collection<Scope> collection) {
            if (this.f5285b == null) {
                this.f5285b = new a.e.b<>();
            }
            this.f5285b.addAll(collection);
            return this;
        }

        public final a a(String str) {
            this.f5290g = str;
            return this;
        }

        @KeepForSdk
        public final c a() {
            return new c(this.f5284a, this.f5285b, this.f5286c, this.f5287d, this.f5288e, this.f5289f, this.f5290g, this.f5291h, this.f5292i);
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final Set<Scope> f5293a;
    }

    public c(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, b> map, int i2, View view, String str, String str2, e.i.b.b.c.a aVar, boolean z) {
        this.f5276a = account;
        this.f5277b = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f5279d = map == null ? Collections.emptyMap() : map;
        this.f5280e = str;
        this.f5281f = str2;
        this.f5282g = aVar;
        HashSet hashSet = new HashSet(this.f5277b);
        Iterator<b> it = this.f5279d.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().f5293a);
        }
        this.f5278c = Collections.unmodifiableSet(hashSet);
    }

    @KeepForSdk
    @Nullable
    public final Account a() {
        return this.f5276a;
    }

    @KeepForSdk
    @Nullable
    @Deprecated
    public final String b() {
        Account account = this.f5276a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @KeepForSdk
    public final Account c() {
        Account account = this.f5276a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @KeepForSdk
    public final Set<Scope> d() {
        return this.f5278c;
    }

    @Nullable
    public final Integer e() {
        return this.f5283h;
    }

    @Nullable
    public final String f() {
        return this.f5281f;
    }

    @KeepForSdk
    @Nullable
    public final String g() {
        return this.f5280e;
    }

    @KeepForSdk
    public final Set<Scope> h() {
        return this.f5277b;
    }

    @Nullable
    public final e.i.b.b.c.a i() {
        return this.f5282g;
    }

    public final void a(Integer num) {
        this.f5283h = num;
    }

    @KeepForSdk
    public final Set<Scope> a(com.google.android.gms.common.api.a<?> aVar) {
        b bVar = this.f5279d.get(aVar);
        if (bVar != null && !bVar.f5293a.isEmpty()) {
            HashSet hashSet = new HashSet(this.f5277b);
            hashSet.addAll(bVar.f5293a);
            return hashSet;
        }
        return this.f5277b;
    }
}
