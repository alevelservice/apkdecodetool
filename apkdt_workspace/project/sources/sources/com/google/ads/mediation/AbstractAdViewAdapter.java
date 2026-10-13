package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.ads.formats.d;
import com.google.android.gms.ads.formats.e;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.ads.j;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.e;
import com.google.android.gms.ads.mediation.l;
import com.google.android.gms.ads.mediation.n;
import com.google.android.gms.ads.mediation.r;
import com.google.android.gms.ads.mediation.s;
import com.google.android.gms.ads.mediation.t;
import com.google.android.gms.ads.mediation.w;
import com.google.android.gms.ads.mediation.x;
import com.google.android.gms.ads.mediation.z;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.gd;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.st1;
import com.google.android.gms.internal.ads.zzbdp;
import com.google.android.gms.internal.ads.zzwk;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class AbstractAdViewAdapter implements com.google.android.gms.ads.mediation.MediationBannerAdapter, MediationNativeAdapter, w, z, MediationRewardedVideoAdAdapter, zzbdp {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";

    /* renamed from: a, reason: collision with root package name */
    private AdView f4213a;

    /* renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.f f4214b;

    /* renamed from: c, reason: collision with root package name */
    private com.google.android.gms.ads.c f4215c;

    /* renamed from: d, reason: collision with root package name */
    private Context f4216d;

    /* renamed from: e, reason: collision with root package name */
    private com.google.android.gms.ads.f f4217e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.reward.mediation.a f4218f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private final com.google.android.gms.ads.o.c f4219g = new g(this);

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    static class a extends s {
        private final com.google.android.gms.ads.formats.d n;

        public a(com.google.android.gms.ads.formats.d dVar) {
            this.n = dVar;
            d(dVar.e().toString());
            a(dVar.f());
            b(dVar.c().toString());
            if (dVar.g() != null) {
                a(dVar.g());
            }
            c(dVar.d().toString());
            a(dVar.b().toString());
            b(true);
            a(true);
            a(dVar.h());
        }

        @Override // com.google.android.gms.ads.mediation.q
        public final void b(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.n);
            }
            com.google.android.gms.ads.formats.b bVar = com.google.android.gms.ads.formats.b.f4511c.get(view);
            if (bVar != null) {
                bVar.a(this.n);
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    static class b extends r {
        private final com.google.android.gms.ads.formats.c p;

        public b(com.google.android.gms.ads.formats.c cVar) {
            this.p = cVar;
            c(cVar.d().toString());
            a(cVar.f());
            a(cVar.b().toString());
            a(cVar.e());
            b(cVar.c().toString());
            if (cVar.h() != null) {
                a(cVar.h().doubleValue());
            }
            if (cVar.i() != null) {
                e(cVar.i().toString());
            }
            if (cVar.g() != null) {
                d(cVar.g().toString());
            }
            b(true);
            a(true);
            a(cVar.j());
        }

        @Override // com.google.android.gms.ads.mediation.q
        public final void b(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.p);
            }
            com.google.android.gms.ads.formats.b bVar = com.google.android.gms.ads.formats.b.f4511c.get(view);
            if (bVar != null) {
                bVar.a(this.p);
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class c extends com.google.android.gms.ads.b implements com.google.android.gms.ads.doubleclick.a, st1 {

        /* renamed from: e, reason: collision with root package name */
        @VisibleForTesting
        private final AbstractAdViewAdapter f4220e;

        /* renamed from: f, reason: collision with root package name */
        @VisibleForTesting
        private final com.google.android.gms.ads.mediation.g f4221f;

        public c(AbstractAdViewAdapter abstractAdViewAdapter, com.google.android.gms.ads.mediation.g gVar) {
            this.f4220e = abstractAdViewAdapter;
            this.f4221f = gVar;
        }

        @Override // com.google.android.gms.ads.b
        public final void a(int i2) {
            this.f4221f.a(this.f4220e, i2);
        }

        @Override // com.google.android.gms.ads.b
        public final void c() {
            this.f4221f.d(this.f4220e);
        }

        @Override // com.google.android.gms.ads.b
        public final void d() {
            this.f4221f.c(this.f4220e);
        }

        @Override // com.google.android.gms.ads.b
        public final void e() {
            this.f4221f.e(this.f4220e);
        }

        @Override // com.google.android.gms.ads.b, com.google.android.gms.internal.ads.st1
        public final void onAdClicked() {
            this.f4221f.b(this.f4220e);
        }

        @Override // com.google.android.gms.ads.doubleclick.a
        public final void onAppEvent(String str, String str2) {
            this.f4221f.a(this.f4220e, str, str2);
        }

        @Override // com.google.android.gms.ads.b
        public final void a() {
            this.f4221f.a(this.f4220e);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    static class d extends x {
        private final h s;

        public d(h hVar) {
            this.s = hVar;
            d(hVar.d());
            a(hVar.f());
            b(hVar.b());
            a(hVar.e());
            c(hVar.c());
            a(hVar.a());
            a(hVar.h());
            f(hVar.i());
            e(hVar.g());
            a(hVar.l());
            b(true);
            a(true);
            a(hVar.j());
        }

        @Override // com.google.android.gms.ads.mediation.x
        public final void a(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof UnifiedNativeAdView) {
                ((UnifiedNativeAdView) view).setNativeAd(this.s);
                return;
            }
            com.google.android.gms.ads.formats.b bVar = com.google.android.gms.ads.formats.b.f4511c.get(view);
            if (bVar != null) {
                bVar.a(this.s);
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class e extends com.google.android.gms.ads.b implements c.a, d.a, e.a, e.b, h.b {

        /* renamed from: e, reason: collision with root package name */
        @VisibleForTesting
        private final AbstractAdViewAdapter f4222e;

        /* renamed from: f, reason: collision with root package name */
        @VisibleForTesting
        private final n f4223f;

        public e(AbstractAdViewAdapter abstractAdViewAdapter, n nVar) {
            this.f4222e = abstractAdViewAdapter;
            this.f4223f = nVar;
        }

        @Override // com.google.android.gms.ads.b
        public final void a(int i2) {
            this.f4223f.a(this.f4222e, i2);
        }

        @Override // com.google.android.gms.ads.b
        public final void b() {
            this.f4223f.e(this.f4222e);
        }

        @Override // com.google.android.gms.ads.b
        public final void c() {
            this.f4223f.d(this.f4222e);
        }

        @Override // com.google.android.gms.ads.b
        public final void d() {
        }

        @Override // com.google.android.gms.ads.b
        public final void e() {
            this.f4223f.a(this.f4222e);
        }

        @Override // com.google.android.gms.ads.b, com.google.android.gms.internal.ads.st1
        public final void onAdClicked() {
            this.f4223f.c(this.f4222e);
        }

        @Override // com.google.android.gms.ads.b
        public final void a() {
            this.f4223f.b(this.f4222e);
        }

        @Override // com.google.android.gms.ads.formats.c.a
        public final void a(com.google.android.gms.ads.formats.c cVar) {
            this.f4223f.a(this.f4222e, new b(cVar));
        }

        @Override // com.google.android.gms.ads.formats.h.b
        public final void a(h hVar) {
            this.f4223f.a(this.f4222e, new d(hVar));
        }

        @Override // com.google.android.gms.ads.formats.d.a
        public final void a(com.google.android.gms.ads.formats.d dVar) {
            this.f4223f.a(this.f4222e, new a(dVar));
        }

        @Override // com.google.android.gms.ads.formats.e.b
        public final void a(com.google.android.gms.ads.formats.e eVar) {
            this.f4223f.a(this.f4222e, eVar);
        }

        @Override // com.google.android.gms.ads.formats.e.a
        public final void a(com.google.android.gms.ads.formats.e eVar, String str) {
            this.f4223f.a(this.f4222e, eVar, str);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class f extends com.google.android.gms.ads.b implements st1 {

        /* renamed from: e, reason: collision with root package name */
        @VisibleForTesting
        private final AbstractAdViewAdapter f4224e;

        /* renamed from: f, reason: collision with root package name */
        @VisibleForTesting
        private final l f4225f;

        public f(AbstractAdViewAdapter abstractAdViewAdapter, l lVar) {
            this.f4224e = abstractAdViewAdapter;
            this.f4225f = lVar;
        }

        @Override // com.google.android.gms.ads.b
        public final void a(int i2) {
            this.f4225f.a(this.f4224e, i2);
        }

        @Override // com.google.android.gms.ads.b
        public final void c() {
            this.f4225f.a(this.f4224e);
        }

        @Override // com.google.android.gms.ads.b
        public final void d() {
            this.f4225f.c(this.f4224e);
        }

        @Override // com.google.android.gms.ads.b
        public final void e() {
            this.f4225f.e(this.f4224e);
        }

        @Override // com.google.android.gms.ads.b, com.google.android.gms.internal.ads.st1
        public final void onAdClicked() {
            this.f4225f.b(this.f4224e);
        }

        @Override // com.google.android.gms.ads.b
        public final void a() {
            this.f4225f.d(this.f4224e);
        }
    }

    private final AdRequest a(Context context, com.google.android.gms.ads.mediation.d dVar, Bundle bundle, Bundle bundle2) {
        AdRequest.a aVar = new AdRequest.a();
        Date g2 = dVar.g();
        if (g2 != null) {
            aVar.a(g2);
        }
        int m = dVar.m();
        if (m != 0) {
            aVar.a(m);
        }
        Set<String> i2 = dVar.i();
        if (i2 != null) {
            Iterator<String> it = i2.iterator();
            while (it.hasNext()) {
                aVar.a(it.next());
            }
        }
        Location k2 = dVar.k();
        if (k2 != null) {
            aVar.a(k2);
        }
        if (dVar.h()) {
            mu1.a();
            aVar.b(gd.a(context));
        }
        if (dVar.b() != -1) {
            aVar.b(dVar.b() == 1);
        }
        aVar.a(dVar.e());
        aVar.a(AdMobAdapter.class, a(bundle, bundle2));
        return aVar.a();
    }

    protected abstract Bundle a(Bundle bundle, Bundle bundle2);

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.f4213a;
    }

    @Override // com.google.android.gms.internal.ads.zzbdp
    public Bundle getInterstitialAdapterInfo() {
        e.a aVar = new e.a();
        aVar.a(1);
        return aVar.a();
    }

    @Override // com.google.android.gms.ads.mediation.z
    public zzwk getVideoController() {
        j videoController;
        AdView adView = this.f4213a;
        if (adView == null || (videoController = adView.getVideoController()) == null) {
            return null;
        }
        return videoController.a();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, com.google.android.gms.ads.mediation.d dVar, String str, com.google.android.gms.ads.reward.mediation.a aVar, Bundle bundle, Bundle bundle2) {
        this.f4216d = context.getApplicationContext();
        this.f4218f = aVar;
        this.f4218f.f(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.f4218f != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(com.google.android.gms.ads.mediation.d dVar, Bundle bundle, Bundle bundle2) {
        Context context = this.f4216d;
        if (context != null && this.f4218f != null) {
            this.f4217e = new com.google.android.gms.ads.f(context);
            this.f4217e.b(true);
            this.f4217e.a(getAdUnitId(bundle));
            this.f4217e.a(this.f4219g);
            this.f4217e.a(new com.google.ads.mediation.f(this));
            this.f4217e.a(a(this.f4216d, dVar, bundle2, bundle));
            return;
        }
        qd.b("AdMobAdapter.loadAd called before initialize.");
    }

    @Override // com.google.android.gms.ads.mediation.e
    public void onDestroy() {
        AdView adView = this.f4213a;
        if (adView != null) {
            adView.destroy();
            this.f4213a = null;
        }
        if (this.f4214b != null) {
            this.f4214b = null;
        }
        if (this.f4215c != null) {
            this.f4215c = null;
        }
        if (this.f4217e != null) {
            this.f4217e = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.w
    public void onImmersiveModeUpdated(boolean z) {
        com.google.android.gms.ads.f fVar = this.f4214b;
        if (fVar != null) {
            fVar.a(z);
        }
        com.google.android.gms.ads.f fVar2 = this.f4217e;
        if (fVar2 != null) {
            fVar2.a(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public void onPause() {
        AdView adView = this.f4213a;
        if (adView != null) {
            adView.pause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public void onResume() {
        AdView adView = this.f4213a;
        if (adView != null) {
            adView.resume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, com.google.android.gms.ads.mediation.g gVar, Bundle bundle, com.google.android.gms.ads.d dVar, com.google.android.gms.ads.mediation.d dVar2, Bundle bundle2) {
        this.f4213a = new AdView(context);
        this.f4213a.setAdSize(new com.google.android.gms.ads.d(dVar.b(), dVar.a()));
        this.f4213a.setAdUnitId(getAdUnitId(bundle));
        this.f4213a.setAdListener(new c(this, gVar));
        this.f4213a.loadAd(a(context, dVar2, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, l lVar, Bundle bundle, com.google.android.gms.ads.mediation.d dVar, Bundle bundle2) {
        this.f4214b = new com.google.android.gms.ads.f(context);
        this.f4214b.a(getAdUnitId(bundle));
        this.f4214b.a(new f(this, lVar));
        this.f4214b.a(a(context, dVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, n nVar, Bundle bundle, t tVar, Bundle bundle2) {
        e eVar = new e(this, nVar);
        c.a aVar = new c.a(context, bundle.getString(AD_UNIT_ID_PARAMETER));
        aVar.a((com.google.android.gms.ads.b) eVar);
        NativeAdOptions j2 = tVar.j();
        if (j2 != null) {
            aVar.a(j2);
        }
        if (tVar.c()) {
            aVar.a((h.b) eVar);
        }
        if (tVar.f()) {
            aVar.a((c.a) eVar);
        }
        if (tVar.l()) {
            aVar.a((d.a) eVar);
        }
        if (tVar.a()) {
            for (String str : tVar.d().keySet()) {
                aVar.a(str, eVar, tVar.d().get(str).booleanValue() ? eVar : null);
            }
        }
        this.f4215c = aVar.a();
        this.f4215c.a(a(context, tVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.f4214b.b();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.f4217e.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.ads.f a(AbstractAdViewAdapter abstractAdViewAdapter, com.google.android.gms.ads.f fVar) {
        abstractAdViewAdapter.f4217e = null;
        return null;
    }
}
