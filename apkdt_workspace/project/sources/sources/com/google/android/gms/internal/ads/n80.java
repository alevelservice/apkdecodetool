package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n80 {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private List<Map<String, String>> f8298a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f8299b = false;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f8300c = false;

    /* renamed from: d, reason: collision with root package name */
    private String f8301d;

    /* renamed from: e, reason: collision with root package name */
    private m80 f8302e;

    public n80(String str, m80 m80Var) {
        this.f8301d = str;
        this.f8302e = m80Var;
    }

    private final Map<String, String> c() {
        Map<String, String> a2 = this.f8302e.a();
        a2.put("tms", Long.toString(com.google.android.gms.ads.internal.n.j().c(), 10));
        a2.put("tid", this.f8301d);
        return a2;
    }

    public final synchronized void a(String str) {
        if (((Boolean) mu1.e().a(aw1.p1)).booleanValue()) {
            Map<String, String> c2 = c();
            c2.put("action", "adapter_init_started");
            c2.put("ancn", str);
            this.f8298a.add(c2);
        }
    }

    public final synchronized void b(String str) {
        if (((Boolean) mu1.e().a(aw1.p1)).booleanValue()) {
            Map<String, String> c2 = c();
            c2.put("action", "adapter_init_finished");
            c2.put("ancn", str);
            this.f8298a.add(c2);
        }
    }

    public final synchronized void a(String str, String str2) {
        if (((Boolean) mu1.e().a(aw1.p1)).booleanValue()) {
            Map<String, String> c2 = c();
            c2.put("action", "adapter_init_finished");
            c2.put("ancn", str);
            c2.put("rqe", str2);
            this.f8298a.add(c2);
        }
    }

    public final synchronized void b() {
        if (((Boolean) mu1.e().a(aw1.p1)).booleanValue()) {
            if (!this.f8300c) {
                Map<String, String> c2 = c();
                c2.put("action", "init_finished");
                this.f8298a.add(c2);
                Iterator<Map<String, String>> it = this.f8298a.iterator();
                while (it.hasNext()) {
                    this.f8302e.a(it.next());
                }
                this.f8300c = true;
            }
        }
    }

    public final synchronized void a() {
        if (((Boolean) mu1.e().a(aw1.p1)).booleanValue()) {
            if (!this.f8299b) {
                Map<String, String> c2 = c();
                c2.put("action", "init_started");
                this.f8298a.add(c2);
                this.f8299b = true;
            }
        }
    }
}
