package com.google.firebase.crashlytics.d.o;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.d.h.i0;
import com.google.firebase.crashlytics.d.h.s;
import com.google.firebase.crashlytics.d.h.t;
import com.google.firebase.crashlytics.d.h.v;
import com.google.firebase.crashlytics.d.h.y;
import e.i.b.b.d.i;
import e.i.b.b.d.k;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* compiled from: SettingsController.java */
/* loaded from: classes.dex */
public class d implements e {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14687a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.o.i.g f14688b;

    /* renamed from: c, reason: collision with root package name */
    private final f f14689c;

    /* renamed from: d, reason: collision with root package name */
    private final s f14690d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.o.a f14691e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.o.j.e f14692f;

    /* renamed from: g, reason: collision with root package name */
    private final t f14693g;

    /* renamed from: h, reason: collision with root package name */
    private final AtomicReference<com.google.firebase.crashlytics.d.o.i.e> f14694h = new AtomicReference<>();

    /* renamed from: i, reason: collision with root package name */
    private final AtomicReference<i<com.google.firebase.crashlytics.d.o.i.b>> f14695i = new AtomicReference<>(new i());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsController.java */
    /* loaded from: classes.dex */
    public class a implements e.i.b.b.d.g<Void, Void> {
        a() {
        }

        @Override // e.i.b.b.d.g
        @NonNull
        public e.i.b.b.d.h<Void> a(@Nullable Void r5) {
            JSONObject a2 = d.this.f14692f.a(d.this.f14688b, true);
            if (a2 != null) {
                com.google.firebase.crashlytics.d.o.i.f a3 = d.this.f14689c.a(a2);
                d.this.f14691e.a(a3.d(), a2);
                d.this.a(a2, "Loaded settings: ");
                d dVar = d.this;
                dVar.a(dVar.f14688b.f14728f);
                d.this.f14694h.set(a3);
                ((i) d.this.f14695i.get()).b((i) a3.c());
                i iVar = new i();
                iVar.b((i) a3.c());
                d.this.f14695i.set(iVar);
            }
            return k.a((Object) null);
        }
    }

    d(Context context, com.google.firebase.crashlytics.d.o.i.g gVar, s sVar, f fVar, com.google.firebase.crashlytics.d.o.a aVar, com.google.firebase.crashlytics.d.o.j.e eVar, t tVar) {
        this.f14687a = context;
        this.f14688b = gVar;
        this.f14690d = sVar;
        this.f14689c = fVar;
        this.f14691e = aVar;
        this.f14692f = eVar;
        this.f14693g = tVar;
        this.f14694h.set(b.a(sVar));
    }

    private String d() {
        return com.google.firebase.crashlytics.d.h.h.h(this.f14687a).getString("existing_instance_identifier", "");
    }

    @Override // com.google.firebase.crashlytics.d.o.e
    public com.google.firebase.crashlytics.d.o.i.e b() {
        return this.f14694h.get();
    }

    boolean c() {
        return !d().equals(this.f14688b.f14728f);
    }

    public static d a(Context context, String str, y yVar, com.google.firebase.crashlytics.d.j.c cVar, String str2, String str3, String str4, t tVar) {
        String c2 = yVar.c();
        i0 i0Var = new i0();
        return new d(context, new com.google.firebase.crashlytics.d.o.i.g(str, yVar.d(), yVar.e(), yVar.f(), yVar, com.google.firebase.crashlytics.d.h.h.a(com.google.firebase.crashlytics.d.h.h.e(context), str, str3, str2), str3, str2, v.determineFrom(c2).getId()), i0Var, new f(i0Var), new com.google.firebase.crashlytics.d.o.a(context), new com.google.firebase.crashlytics.d.o.j.d(str4, String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), cVar), tVar);
    }

    @Override // com.google.firebase.crashlytics.d.o.e
    public e.i.b.b.d.h<com.google.firebase.crashlytics.d.o.i.b> a() {
        return this.f14695i.get().a();
    }

    public e.i.b.b.d.h<Void> a(Executor executor) {
        return a(c.USE_CACHE, executor);
    }

    public e.i.b.b.d.h<Void> a(c cVar, Executor executor) {
        com.google.firebase.crashlytics.d.o.i.f a2;
        if (!c() && (a2 = a(cVar)) != null) {
            this.f14694h.set(a2);
            this.f14695i.get().b((i<com.google.firebase.crashlytics.d.o.i.b>) a2.c());
            return k.a((Object) null);
        }
        com.google.firebase.crashlytics.d.o.i.f a3 = a(c.IGNORE_CACHE_EXPIRATION);
        if (a3 != null) {
            this.f14694h.set(a3);
            this.f14695i.get().b((i<com.google.firebase.crashlytics.d.o.i.b>) a3.c());
        }
        return this.f14693g.c().a(executor, new a());
    }

    private com.google.firebase.crashlytics.d.o.i.f a(c cVar) {
        com.google.firebase.crashlytics.d.o.i.f fVar = null;
        try {
            if (!c.SKIP_CACHE_LOOKUP.equals(cVar)) {
                JSONObject a2 = this.f14691e.a();
                if (a2 != null) {
                    com.google.firebase.crashlytics.d.o.i.f a3 = this.f14689c.a(a2);
                    if (a3 != null) {
                        a(a2, "Loaded cached settings: ");
                        long a4 = this.f14690d.a();
                        if (!c.IGNORE_CACHE_EXPIRATION.equals(cVar) && a3.a(a4)) {
                            com.google.firebase.crashlytics.d.b.a().a("Cached settings have expired.");
                        }
                        try {
                            com.google.firebase.crashlytics.d.b.a().a("Returning cached settings.");
                            fVar = a3;
                        } catch (Exception e2) {
                            e = e2;
                            fVar = a3;
                            com.google.firebase.crashlytics.d.b.a().b("Failed to get cached settings", e);
                            return fVar;
                        }
                    } else {
                        com.google.firebase.crashlytics.d.b.a().b("Failed to parse cached settings data.", null);
                    }
                } else {
                    com.google.firebase.crashlytics.d.b.a().a("No cached settings data found.");
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject, String str) {
        com.google.firebase.crashlytics.d.b.a().a(str + jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public boolean a(String str) {
        SharedPreferences.Editor edit = com.google.firebase.crashlytics.d.h.h.h(this.f14687a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }
}
