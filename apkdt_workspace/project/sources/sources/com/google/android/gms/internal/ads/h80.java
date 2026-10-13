package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h80 implements fv0 {

    /* renamed from: f, reason: collision with root package name */
    private final f80 f7021f;

    /* renamed from: g, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f7022g;

    /* renamed from: e, reason: collision with root package name */
    private final Map<wu0, Long> f7020e = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    private final Map<wu0, k80> f7023h = new HashMap();

    public h80(f80 f80Var, Set<k80> set, com.google.android.gms.common.util.e eVar) {
        wu0 wu0Var;
        this.f7021f = f80Var;
        for (k80 k80Var : set) {
            Map<wu0, k80> map = this.f7023h;
            wu0Var = k80Var.f7635c;
            map.put(wu0Var, k80Var);
        }
        this.f7022g = eVar;
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str, Throwable th) {
        if (this.f7020e.containsKey(wu0Var)) {
            long c2 = this.f7022g.c() - this.f7020e.get(wu0Var).longValue();
            Map<String, String> a2 = this.f7021f.a();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(c2));
            a2.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f7023h.containsKey(wu0Var)) {
            a(wu0Var, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void b(wu0 wu0Var, String str) {
        this.f7020e.put(wu0Var, Long.valueOf(this.f7022g.c()));
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void c(wu0 wu0Var, String str) {
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str) {
        if (this.f7020e.containsKey(wu0Var)) {
            long c2 = this.f7022g.c() - this.f7020e.get(wu0Var).longValue();
            Map<String, String> a2 = this.f7021f.a();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(c2));
            a2.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f7023h.containsKey(wu0Var)) {
            a(wu0Var, true);
        }
    }

    private final void a(wu0 wu0Var, boolean z) {
        wu0 wu0Var2;
        String str;
        wu0Var2 = this.f7023h.get(wu0Var).f7634b;
        String str2 = z ? "s." : "f.";
        if (this.f7020e.containsKey(wu0Var2)) {
            long c2 = this.f7022g.c() - this.f7020e.get(wu0Var2).longValue();
            Map<String, String> a2 = this.f7021f.a();
            str = this.f7023h.get(wu0Var).f7633a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(c2));
            a2.put(concat, valueOf2.length() != 0 ? str2.concat(valueOf2) : new String(str2));
        }
    }
}
