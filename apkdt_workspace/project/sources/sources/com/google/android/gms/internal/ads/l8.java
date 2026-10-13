package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.cd1;
import com.google.android.gms.internal.ads.dd1;
import com.google.android.gms.internal.ads.hd1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class l8 implements t8 {
    private static List<Future<Void>> n = Collections.synchronizedList(new ArrayList());

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("lock")
    private final rd1 f7834a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private final LinkedHashMap<String, td1> f7835b;

    /* renamed from: e, reason: collision with root package name */
    private final Context f7838e;

    /* renamed from: f, reason: collision with root package name */
    private final v8 f7839f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private boolean f7840g;

    /* renamed from: h, reason: collision with root package name */
    private final zzarn f7841h;

    /* renamed from: i, reason: collision with root package name */
    private final y8 f7842i;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private final List<String> f7836c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private final List<String> f7837d = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    private final Object f7843j = new Object();

    /* renamed from: k, reason: collision with root package name */
    private HashSet<String> f7844k = new HashSet<>();

    /* renamed from: l, reason: collision with root package name */
    private boolean f7845l = false;
    private boolean m = false;

    public l8(Context context, zzawv zzawvVar, zzarn zzarnVar, String str, v8 v8Var) {
        com.google.android.gms.common.internal.m.a(zzarnVar, "SafeBrowsing config is not present.");
        this.f7838e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f7835b = new LinkedHashMap<>();
        this.f7839f = v8Var;
        this.f7841h = zzarnVar;
        Iterator<String> it = this.f7841h.f10991i.iterator();
        while (it.hasNext()) {
            this.f7844k.add(it.next().toLowerCase(Locale.ENGLISH));
        }
        this.f7844k.remove("cookie".toLowerCase(Locale.ENGLISH));
        rd1 rd1Var = new rd1();
        rd1Var.f9096c = fd1.OCTAGON_AD;
        rd1Var.f9097d = str;
        rd1Var.f9098e = str;
        cd1.a k2 = cd1.k();
        String str2 = this.f7841h.f10987e;
        if (str2 != null) {
            k2.a(str2);
        }
        rd1Var.f9099f = (cd1) k2.s();
        hd1.a k3 = hd1.k();
        k3.a(com.google.android.gms.common.o.c.a(this.f7838e).a());
        String str3 = zzawvVar.f11000e;
        if (str3 != null) {
            k3.a(str3);
        }
        long a2 = com.google.android.gms.common.d.a().a(this.f7838e);
        if (a2 > 0) {
            k3.a(a2);
        }
        rd1Var.f9104k = (hd1) k3.s();
        this.f7834a = rd1Var;
        this.f7842i = new y8(this.f7838e, this.f7841h.f10994l, this);
    }

    @VisibleForTesting
    private final qz0<Void> e() {
        qz0<Void> a2;
        if (!((this.f7840g && this.f7841h.f10993k) || (this.m && this.f7841h.f10992j) || (!this.f7840g && this.f7841h.f10990h))) {
            return gz0.a((Object) null);
        }
        synchronized (this.f7843j) {
            this.f7834a.f9100g = new td1[this.f7835b.size()];
            this.f7835b.values().toArray(this.f7834a.f9100g);
            this.f7834a.f9105l = (String[]) this.f7836c.toArray(new String[0]);
            this.f7834a.m = (String[]) this.f7837d.toArray(new String[0]);
            if (u8.a()) {
                String str = this.f7834a.f9097d;
                String str2 = this.f7834a.f9101h;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 53 + String.valueOf(str2).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(str);
                sb.append("\n  clickUrl: ");
                sb.append(str2);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (td1 td1Var : this.f7834a.f9100g) {
                    sb2.append("    [");
                    sb2.append(td1Var.f9557h.length);
                    sb2.append("] ");
                    sb2.append(td1Var.f9553d);
                }
                u8.a(sb2.toString());
            }
            qz0<String> a3 = new gc(this.f7838e).a(1, this.f7841h.f10988f, null, bd1.a(this.f7834a));
            if (u8.a()) {
                a3.a(new o8(this), yd.f10540a);
            }
            a2 = gz0.a(a3, n8.f8297a, yd.f10544e);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Void e(String str) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final void a(String str) {
        synchronized (this.f7843j) {
            this.f7834a.f9101h = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        synchronized (this.f7843j) {
            this.f7836c.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final boolean c() {
        return com.google.android.gms.common.util.o.f() && this.f7841h.f10989g && !this.f7845l;
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final zzarn d() {
        return this.f7841h;
    }

    @Nullable
    private final td1 d(String str) {
        td1 td1Var;
        synchronized (this.f7843j) {
            td1Var = this.f7835b.get(str);
        }
        return td1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(String str) {
        synchronized (this.f7843j) {
            this.f7837d.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final void a(View view) {
        if (this.f7841h.f10989g && !this.f7845l) {
            com.google.android.gms.ads.internal.n.c();
            Bitmap b2 = wa.b(view);
            if (b2 == null) {
                u8.a("Failed to capture the webview bitmap.");
            } else {
                this.f7845l = true;
                wa.a(new m8(this, b2));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final void b() {
        synchronized (this.f7843j) {
            qz0 a2 = gz0.a(this.f7839f.a(this.f7838e, this.f7835b.keySet()), new qy0(this) { // from class: com.google.android.gms.internal.ads.k8

                /* renamed from: a, reason: collision with root package name */
                private final l8 f7632a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7632a = this;
                }

                @Override // com.google.android.gms.internal.ads.qy0
                public final qz0 b(Object obj) {
                    return this.f7632a.a((Map) obj);
                }
            }, yd.f10544e);
            qz0 a3 = gz0.a(a2, 10L, TimeUnit.SECONDS, yd.f10542c);
            gz0.a(a2, new p8(this, a3), yd.f10544e);
            n.add(a3);
        }
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final void a(String str, Map<String, String> map, int i2) {
        synchronized (this.f7843j) {
            if (i2 == 3) {
                this.m = true;
            }
            if (this.f7835b.containsKey(str)) {
                if (i2 == 3) {
                    this.f7835b.get(str).f9556g = gd1.zzhk(i2);
                }
                return;
            }
            td1 td1Var = new td1();
            td1Var.f9556g = gd1.zzhk(i2);
            td1Var.f9552c = Integer.valueOf(this.f7835b.size());
            td1Var.f9553d = str;
            td1Var.f9554e = new sd1();
            if (this.f7844k.size() > 0 && map != null) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.f7844k.contains(key.toLowerCase(Locale.ENGLISH))) {
                        dd1.a k2 = dd1.k();
                        k2.a(t71.zzhh(key));
                        k2.b(t71.zzhh(value));
                        arrayList.add((dd1) ((e91) k2.s()));
                    }
                }
                dd1[] dd1VarArr = new dd1[arrayList.size()];
                arrayList.toArray(dd1VarArr);
                td1Var.f9554e.f9317c = dd1VarArr;
            }
            this.f7835b.put(str, td1Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.t8
    public final String[] a(String[] strArr) {
        return (String[]) this.f7842i.a(strArr).toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(Map map) {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f7843j) {
                            int length = optJSONArray.length();
                            td1 d2 = d(str);
                            if (d2 == null) {
                                String valueOf = String.valueOf(str);
                                u8.a(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                d2.f9557h = new String[length];
                                for (int i2 = 0; i2 < length; i2++) {
                                    d2.f9557h[i2] = optJSONArray.getJSONObject(i2).getString("threat_type");
                                }
                                this.f7840g = (length > 0) | this.f7840g;
                            }
                        }
                    }
                }
            } catch (JSONException e2) {
                if (((Boolean) mu1.e().a(aw1.j2)).booleanValue()) {
                    qd.a("Failed to get SafeBrowsing metadata", e2);
                }
                return gz0.a((Throwable) new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f7840g) {
            synchronized (this.f7843j) {
                this.f7834a.f9096c = fd1.OCTAGON_AD_SB_MATCH;
            }
        }
        return e();
    }
}
