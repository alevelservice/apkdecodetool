package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l10 {

    /* renamed from: a, reason: collision with root package name */
    private int f7789a;

    /* renamed from: b, reason: collision with root package name */
    private zzwk f7790b;

    /* renamed from: c, reason: collision with root package name */
    private zzaak f7791c;

    /* renamed from: d, reason: collision with root package name */
    private View f7792d;

    /* renamed from: e, reason: collision with root package name */
    private List<?> f7793e;

    /* renamed from: g, reason: collision with root package name */
    private zzxd f7795g;

    /* renamed from: h, reason: collision with root package name */
    private Bundle f7796h;

    /* renamed from: i, reason: collision with root package name */
    private fi f7797i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private fi f7798j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private IObjectWrapper f7799k;

    /* renamed from: l, reason: collision with root package name */
    private View f7800l;
    private IObjectWrapper m;
    private double n;
    private zzaas o;
    private zzaas p;
    private String q;
    private float t;

    @Nullable
    private String u;
    private a.e.g<String, zzaae> r = new a.e.g<>();
    private a.e.g<String, String> s = new a.e.g<>();

    /* renamed from: f, reason: collision with root package name */
    private List<zzxd> f7794f = Collections.emptyList();

    private final synchronized String c(String str) {
        return this.s.get(str);
    }

    public final synchronized zzaak A() {
        return this.f7791c;
    }

    public final synchronized IObjectWrapper B() {
        return this.m;
    }

    public final synchronized zzaas C() {
        return this.p;
    }

    public final synchronized void a(int i2) {
        this.f7789a = i2;
    }

    public final synchronized void b(List<zzxd> list) {
        this.f7794f = list;
    }

    public final synchronized String d() {
        return c("call_to_action");
    }

    public final synchronized String e() {
        return this.q;
    }

    public final synchronized Bundle f() {
        if (this.f7796h == null) {
            this.f7796h = new Bundle();
        }
        return this.f7796h;
    }

    public final synchronized String g() {
        return c("headline");
    }

    public final synchronized List<?> h() {
        return this.f7793e;
    }

    public final synchronized float i() {
        return this.t;
    }

    public final synchronized List<zzxd> j() {
        return this.f7794f;
    }

    public final synchronized String k() {
        return c("price");
    }

    public final synchronized double l() {
        return this.n;
    }

    public final synchronized String m() {
        return c("store");
    }

    public final synchronized zzwk n() {
        return this.f7790b;
    }

    public final synchronized int o() {
        return this.f7789a;
    }

    public final synchronized View p() {
        return this.f7792d;
    }

    @Nullable
    public final zzaas q() {
        List<?> list = this.f7793e;
        if (list != null && list.size() != 0) {
            Object obj = this.f7793e.get(0);
            if (obj instanceof IBinder) {
                return zzaar.zzl((IBinder) obj);
            }
        }
        return null;
    }

    @Nullable
    public final synchronized zzxd r() {
        return this.f7795g;
    }

    public final synchronized View s() {
        return this.f7800l;
    }

    public final synchronized fi t() {
        return this.f7797i;
    }

    @Nullable
    public final synchronized fi u() {
        return this.f7798j;
    }

    @Nullable
    public final synchronized IObjectWrapper v() {
        return this.f7799k;
    }

    public final synchronized a.e.g<String, zzaae> w() {
        return this.r;
    }

    @Nullable
    public final synchronized String x() {
        return this.u;
    }

    public final synchronized a.e.g<String, String> y() {
        return this.s;
    }

    public final synchronized zzaas z() {
        return this.o;
    }

    public final synchronized String c() {
        return c("body");
    }

    public final synchronized void a(zzwk zzwkVar) {
        this.f7790b = zzwkVar;
    }

    public final synchronized void b(zzaas zzaasVar) {
        this.p = zzaasVar;
    }

    public final synchronized void a(zzaak zzaakVar) {
        this.f7791c = zzaakVar;
    }

    public final synchronized void b(fi fiVar) {
        this.f7798j = fiVar;
    }

    public final synchronized void a(List<zzaae> list) {
        this.f7793e = list;
    }

    public final synchronized void b(@Nullable String str) {
        this.u = str;
    }

    public final synchronized void a(@Nullable zzxd zzxdVar) {
        this.f7795g = zzxdVar;
    }

    public final synchronized String b() {
        return c("advertiser");
    }

    public static l10 b(zzajq zzajqVar) {
        try {
            return a(zzajqVar.getVideoController(), zzajqVar.zzqk(), (View) b(zzajqVar.zzru()), zzajqVar.getHeadline(), zzajqVar.getImages(), zzajqVar.getBody(), zzajqVar.getExtras(), zzajqVar.getCallToAction(), (View) b(zzajqVar.zzrv()), zzajqVar.zzql(), zzajqVar.getStore(), zzajqVar.getPrice(), zzajqVar.getStarRating(), zzajqVar.zzqj(), null, 0.0f);
        } catch (RemoteException e2) {
            qd.c("Failed to get native ad assets from app install ad mapper", e2);
            return null;
        }
    }

    public final synchronized void a(View view) {
        this.f7800l = view;
    }

    public final synchronized void a(double d2) {
        this.n = d2;
    }

    public final synchronized void a(zzaas zzaasVar) {
        this.o = zzaasVar;
    }

    public final synchronized void a(String str) {
        this.q = str;
    }

    public final synchronized void a(fi fiVar) {
        this.f7797i = fiVar;
    }

    public final synchronized void a(IObjectWrapper iObjectWrapper) {
        this.f7799k = iObjectWrapper;
    }

    public final synchronized void a(String str, String str2) {
        if (str2 == null) {
            this.s.remove(str);
        } else {
            this.s.put(str, str2);
        }
    }

    public static l10 b(zzajr zzajrVar) {
        try {
            return a(zzajrVar.getVideoController(), zzajrVar.zzqk(), (View) b(zzajrVar.zzru()), zzajrVar.getHeadline(), zzajrVar.getImages(), zzajrVar.getBody(), zzajrVar.getExtras(), zzajrVar.getCallToAction(), (View) b(zzajrVar.zzrv()), zzajrVar.zzql(), null, null, -1.0d, zzajrVar.zzqm(), zzajrVar.getAdvertiser(), 0.0f);
        } catch (RemoteException e2) {
            qd.c("Failed to get native ad assets from content ad mapper", e2);
            return null;
        }
    }

    public final synchronized void a(String str, zzaae zzaaeVar) {
        if (zzaaeVar == null) {
            this.r.remove(str);
        } else {
            this.r.put(str, zzaaeVar);
        }
    }

    private final synchronized void a(float f2) {
        this.t = f2;
    }

    public final synchronized void a() {
        if (this.f7797i != null) {
            this.f7797i.destroy();
            this.f7797i = null;
        }
        if (this.f7798j != null) {
            this.f7798j.destroy();
            this.f7798j = null;
        }
        this.f7799k = null;
        this.r.clear();
        this.s.clear();
        this.f7790b = null;
        this.f7791c = null;
        this.f7792d = null;
        this.f7793e = null;
        this.f7796h = null;
        this.f7800l = null;
        this.m = null;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    private static <T> T b(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static l10 a(zzajr zzajrVar) {
        try {
            zzwk videoController = zzajrVar.getVideoController();
            zzaak zzqk = zzajrVar.zzqk();
            View view = (View) b(zzajrVar.zzru());
            String headline = zzajrVar.getHeadline();
            List<?> images = zzajrVar.getImages();
            String body = zzajrVar.getBody();
            Bundle extras = zzajrVar.getExtras();
            String callToAction = zzajrVar.getCallToAction();
            View view2 = (View) b(zzajrVar.zzrv());
            IObjectWrapper zzql = zzajrVar.zzql();
            String advertiser = zzajrVar.getAdvertiser();
            zzaas zzqm = zzajrVar.zzqm();
            l10 l10Var = new l10();
            l10Var.f7789a = 1;
            l10Var.f7790b = videoController;
            l10Var.f7791c = zzqk;
            l10Var.f7792d = view;
            l10Var.a("headline", headline);
            l10Var.f7793e = images;
            l10Var.a("body", body);
            l10Var.f7796h = extras;
            l10Var.a("call_to_action", callToAction);
            l10Var.f7800l = view2;
            l10Var.m = zzql;
            l10Var.a("advertiser", advertiser);
            l10Var.p = zzqm;
            return l10Var;
        } catch (RemoteException e2) {
            qd.c("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    public static l10 a(zzajq zzajqVar) {
        try {
            zzwk videoController = zzajqVar.getVideoController();
            zzaak zzqk = zzajqVar.zzqk();
            View view = (View) b(zzajqVar.zzru());
            String headline = zzajqVar.getHeadline();
            List<?> images = zzajqVar.getImages();
            String body = zzajqVar.getBody();
            Bundle extras = zzajqVar.getExtras();
            String callToAction = zzajqVar.getCallToAction();
            View view2 = (View) b(zzajqVar.zzrv());
            IObjectWrapper zzql = zzajqVar.zzql();
            String store = zzajqVar.getStore();
            String price = zzajqVar.getPrice();
            double starRating = zzajqVar.getStarRating();
            zzaas zzqj = zzajqVar.zzqj();
            l10 l10Var = new l10();
            l10Var.f7789a = 2;
            l10Var.f7790b = videoController;
            l10Var.f7791c = zzqk;
            l10Var.f7792d = view;
            l10Var.a("headline", headline);
            l10Var.f7793e = images;
            l10Var.a("body", body);
            l10Var.f7796h = extras;
            l10Var.a("call_to_action", callToAction);
            l10Var.f7800l = view2;
            l10Var.m = zzql;
            l10Var.a("store", store);
            l10Var.a("price", price);
            l10Var.n = starRating;
            l10Var.o = zzqj;
            return l10Var;
        } catch (RemoteException e2) {
            qd.c("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    public static l10 a(zzajw zzajwVar) {
        try {
            return a(zzajwVar.getVideoController(), zzajwVar.zzqk(), (View) b(zzajwVar.zzru()), zzajwVar.getHeadline(), zzajwVar.getImages(), zzajwVar.getBody(), zzajwVar.getExtras(), zzajwVar.getCallToAction(), (View) b(zzajwVar.zzrv()), zzajwVar.zzql(), zzajwVar.getStore(), zzajwVar.getPrice(), zzajwVar.getStarRating(), zzajwVar.zzqj(), zzajwVar.getAdvertiser(), zzajwVar.getMediaContentAspectRatio());
        } catch (RemoteException e2) {
            qd.c("Failed to get native ad assets from unified ad mapper", e2);
            return null;
        }
    }

    private static l10 a(zzwk zzwkVar, zzaak zzaakVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d2, zzaas zzaasVar, String str6, float f2) {
        l10 l10Var = new l10();
        l10Var.f7789a = 6;
        l10Var.f7790b = zzwkVar;
        l10Var.f7791c = zzaakVar;
        l10Var.f7792d = view;
        l10Var.a("headline", str);
        l10Var.f7793e = list;
        l10Var.a("body", str2);
        l10Var.f7796h = bundle;
        l10Var.a("call_to_action", str3);
        l10Var.f7800l = view2;
        l10Var.m = iObjectWrapper;
        l10Var.a("store", str4);
        l10Var.a("price", str5);
        l10Var.n = d2;
        l10Var.o = zzaasVar;
        l10Var.a("advertiser", str6);
        l10Var.a(f2);
        return l10Var;
    }
}
