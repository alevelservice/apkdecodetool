package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class p00 implements u10 {

    /* renamed from: a */
    private final Context f8611a;

    /* renamed from: b */
    private final x10 f8612b;

    /* renamed from: c */
    private final JSONObject f8613c;

    /* renamed from: d */
    private final y40 f8614d;

    /* renamed from: e */
    private final l10 f8615e;

    /* renamed from: f */
    private final t11 f8616f;

    /* renamed from: g */
    private final rt f8617g;

    /* renamed from: h */
    private final it f8618h;

    /* renamed from: i */
    private final ns0 f8619i;

    /* renamed from: j */
    private final zzawv f8620j;

    /* renamed from: k */
    private final ws0 f8621k;

    /* renamed from: l */
    private final qn f8622l;
    private final j20 m;
    private final com.google.android.gms.common.util.e n;
    private final nx o;
    private final iv0 p;
    private boolean r;
    private zzvx y;
    private boolean q = false;
    private boolean s = false;
    private boolean t = false;
    private Point u = new Point();
    private Point v = new Point();
    private long w = 0;
    private long x = 0;

    public p00(Context context, x10 x10Var, JSONObject jSONObject, y40 y40Var, l10 l10Var, t11 t11Var, rt rtVar, it itVar, ns0 ns0Var, zzawv zzawvVar, ws0 ws0Var, qn qnVar, j20 j20Var, com.google.android.gms.common.util.e eVar, nx nxVar, iv0 iv0Var) {
        this.f8611a = context;
        this.f8612b = x10Var;
        this.f8613c = jSONObject;
        this.f8614d = y40Var;
        this.f8615e = l10Var;
        this.f8616f = t11Var;
        this.f8617g = rtVar;
        this.f8618h = itVar;
        this.f8619i = ns0Var;
        this.f8620j = zzawvVar;
        this.f8621k = ws0Var;
        this.f8622l = qnVar;
        this.m = j20Var;
        this.n = eVar;
        this.o = nxVar;
        this.p = iv0Var;
    }

    private final boolean b(String str) {
        JSONObject optJSONObject = this.f8613c.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    private final boolean d() {
        return this.f8613c.optBoolean("allow_custom_click_gesture", false);
    }

    private final String e(View view) {
        try {
            JSONObject optJSONObject = this.f8613c.optJSONObject("tracking_urls_and_actions");
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
            }
            return this.f8616f.a().a(this.f8611a, optJSONObject.optString("click_string"), view);
        } catch (Exception e2) {
            qd.b("Exception obtaining click signals", e2);
            return null;
        }
    }

    private static int[] f(@Nullable View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.u = new Point();
        this.v = new Point();
        if (!this.r) {
            this.o.a(view);
            this.r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f8622l.a(this);
        boolean a2 = tc.a(this.f8620j.f11002g);
        if (map != null) {
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = it.next().getValue().get();
                if (view2 != null) {
                    if (a2) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator<Map.Entry<String, WeakReference<View>>> it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = it2.next().getValue().get();
                if (view3 != null) {
                    if (a2) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void c() {
        a((JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null);
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void cancelUnconfirmedClick() {
        if (this.f8613c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.m.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void destroy() {
        this.f8614d.a();
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final boolean isCustomClickGestureEnabled() {
        return d();
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zza(zzacl zzaclVar) {
        if (!this.f8613c.optBoolean("custom_one_point_five_click_enabled", false)) {
            qd.d("setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
        } else {
            this.m.a(zzaclVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zzqs() {
        this.t = true;
    }

    private final JSONObject d(@Nullable View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.n.c();
            jSONObject.put("can_show_on_lock_screen", wa.e(view));
            com.google.android.gms.ads.internal.n.c();
            jSONObject.put("is_keyguard_locked", wa.j(this.f8611a));
        } catch (JSONException unused) {
            qd.d("Unable to get lock screen information");
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final boolean c(Bundle bundle) {
        if (!b("impression_reporting")) {
            qd.b("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
            return false;
        }
        return a((JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null, com.google.android.gms.ads.internal.n.c().a(bundle, (JSONObject) null));
    }

    @Nullable
    private final String b(@Nullable View view, @Nullable Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int o = this.f8615e.o();
        if (o == 1) {
            return "1099";
        }
        if (o == 2) {
            return "2099";
        }
        if (o == 3 || o != 6) {
            return null;
        }
        return "3099";
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zza(@Nullable zzwb zzwbVar) {
        try {
            if (this.s) {
                return;
            }
            if (zzwbVar == null && this.f8615e.r() != null) {
                this.s = true;
                this.p.a(this.f8615e.r().zzor());
                a();
            } else {
                this.s = true;
                this.p.a(zzwbVar.zzor());
                a();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    private static JSONObject c(@Nullable View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.n.c();
            jSONObject.put("contained_in_scroll_view", wa.f(view) != -1);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Nullable
    private final JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", a(this.u.x));
            jSONObject.put("y", a(this.u.y));
            jSONObject.put("start_x", a(this.v.x));
            jSONObject.put("start_y", a(this.v.y));
            return jSONObject;
        } catch (JSONException e2) {
            qd.b("Error occurred while putting signals into JSON object.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void b(@Nullable Bundle bundle) {
        if (bundle == null) {
            qd.a("Click data is null. No click is reported.");
        } else if (!b("click_reporting")) {
            qd.b("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            a(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, com.google.android.gms.ads.internal.n.c().a(bundle, (JSONObject) null), false, false);
        }
    }

    private final JSONObject c(@Nullable String str) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e2) {
            e = e2;
            jSONObject = null;
        }
        try {
            jSONObject.put("click_point", e());
            jSONObject.put("asset_id", str);
        } catch (Exception e3) {
            e = e3;
            qd.b("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void zza(zzvx zzvxVar) {
        this.y = zzvxVar;
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void b() {
        com.google.android.gms.common.internal.m.a("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f8613c);
            de.a(this.f8614d.a("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e2) {
            qd.b("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, @Nullable Map<String, WeakReference<View>> map) {
        this.u = new Point();
        this.v = new Point();
        this.o.b(view);
        this.r = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00fc A[Catch: JSONException -> 0x0100, TRY_LEAVE, TryCatch #4 {JSONException -> 0x0100, blocks: (B:18:0x00cb, B:26:0x00f3, B:27:0x00f7, B:28:0x00fc, B:29:0x00da, B:32:0x00e4), top: B:17:0x00cb }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e4 A[Catch: JSONException -> 0x0100, TRY_LEAVE, TryCatch #4 {JSONException -> 0x0100, blocks: (B:18:0x00cb, B:26:0x00f3, B:27:0x00f7, B:28:0x00fc, B:29:0x00da, B:32:0x00e4), top: B:17:0x00cb }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final org.json.JSONObject b(@androidx.annotation.Nullable android.view.View r14) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.p00.b(android.view.View):org.json.JSONObject");
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view, @Nullable View view2, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject a2 = a(map, map2, view2);
        JSONObject b2 = b(view2);
        JSONObject c2 = c(view2);
        JSONObject d2 = d(view2);
        String b3 = b(view, map);
        a(view, b2, a2, c2, d2, b3, c(b3), null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(String str) {
        a(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(@Nullable View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.t) {
            qd.a("Custom click reporting failed. enableCustomClickGesture is not set.");
            return;
        }
        if (!d()) {
            qd.a("Custom click reporting failed. Ad unit id not whitelisted.");
            return;
        }
        JSONObject a2 = a(map, map2, view);
        JSONObject b2 = b(view);
        JSONObject c2 = c(view);
        JSONObject d2 = d(view);
        String b3 = b(null, map);
        a(view, b2, a2, c2, d2, b3, c(b3), null, z, true);
    }

    private final void a(@Nullable View view, @Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable String str, @Nullable JSONObject jSONObject5, @Nullable JSONObject jSONObject6, boolean z, boolean z2) {
        com.google.android.gms.common.internal.m.a("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f8613c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.f8612b.b(this.f8615e.e()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f8615e.o());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.f8621k.f10200i != null && this.f8621k.f10200i.f10890k);
            jSONObject8.put("custom_mute_enabled", (this.f8615e.j().isEmpty() || this.f8615e.r() == null) ? false : true);
            if (this.m.b() != null && this.f8613c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.n.a());
            if (this.t && d()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            jSONObject8.put("has_custom_click_handler", this.f8612b.b(this.f8615e.e()) != null);
            jSONObject8.put("click_signals", e(view));
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long a2 = this.n.a();
            jSONObject9.put("time_from_last_touch_down", a2 - this.w);
            jSONObject9.put("time_from_last_touch", a2 - this.x);
            jSONObject7.put("touch_signal", jSONObject9);
            de.a(this.f8614d.a("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            qd.b("Unable to create click JSON.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(@Nullable View view, MotionEvent motionEvent, @Nullable View view2) {
        int[] f2 = f(view2);
        this.u = new Point(((int) motionEvent.getRawX()) - f2[0], ((int) motionEvent.getRawY()) - f2[1]);
        long a2 = this.n.a();
        this.x = a2;
        if (motionEvent.getAction() == 0) {
            this.w = a2;
            this.v = this.u;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.u;
        obtain.setLocation(point.x, point.y);
        this.f8616f.a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(@Nullable Bundle bundle) {
        if (bundle == null) {
            qd.a("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!b("touch_reporting")) {
            qd.b("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
            return;
        }
        this.f8616f.a().a((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(View view) {
        if (!this.f8613c.optBoolean("custom_one_point_five_click_enabled", false)) {
            qd.d("setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            return;
        }
        j20 j20Var = this.m;
        if (view != null) {
            view.setOnClickListener(j20Var);
            view.setClickable(true);
            j20Var.f7415k = new WeakReference<>(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a() {
        try {
            if (this.y != null) {
                this.y.onAdMuted();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u10
    public final void a(@Nullable View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2) {
        a(b(view), a(map, map2, view), c(view), d(view), (JSONObject) null);
    }

    private final boolean a(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable JSONObject jSONObject5) {
        com.google.android.gms.common.internal.m.a("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f8613c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            this.f8614d.a("/logScionEvent", new r00(this));
            this.f8614d.a("/nativeImpression", new q00(this));
            de.a(this.f8614d.a("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            boolean z = this.q;
            if (z || this.f8619i.z == null) {
                return true;
            }
            this.q = z | com.google.android.gms.ads.internal.n.m().b(this.f8611a, this.f8620j.f11000e, this.f8619i.z.toString(), this.f8621k.f10197f);
            return true;
        } catch (JSONException e2) {
            qd.b("Unable to create impression JSON.", e2);
            return false;
        }
    }

    private final JSONObject a(Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", a(rect.right - rect.left));
        jSONObject.put("height", a(rect.bottom - rect.top));
        jSONObject.put("x", a(rect.left));
        jSONObject.put("y", a(rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private final JSONObject a(@Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, @Nullable View view) {
        String str;
        String str2;
        JSONObject jSONObject;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int[] f2 = f(view);
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, WeakReference<View>> next = it.next();
                View view2 = next.getValue().get();
                if (view2 != null) {
                    int[] f3 = f(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    Iterator<Map.Entry<String, WeakReference<View>>> it2 = it;
                    try {
                        jSONObject4.put("width", a(view2.getMeasuredWidth()));
                        jSONObject4.put("height", a(view2.getMeasuredHeight()));
                        jSONObject4.put("x", a(f3[0] - f2[0]));
                        jSONObject4.put("y", a(f3[1] - f2[1]));
                        jSONObject4.put(str4, str3);
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = a(rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", a(f3[0] - f2[0]));
                            jSONObject.put("y", a(f3[1] - f2[1]));
                            jSONObject.put(str4, str3);
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            str = str3;
                            str2 = str4;
                            try {
                                jSONObject3.put("font_size", textView.getTextSize());
                                jSONObject3.put("text", textView.getText());
                            } catch (JSONException unused) {
                                qd.d("Unable to get asset views information");
                                it = it2;
                                str3 = str;
                                str4 = str2;
                            }
                        } else {
                            str = str3;
                            str2 = str4;
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(next.getKey()) && view2.isClickable());
                        jSONObject2.put(next.getKey(), jSONObject3);
                    } catch (JSONException unused2) {
                        str = str3;
                        str2 = str4;
                    }
                    it = it2;
                    str3 = str;
                    str4 = str2;
                }
            }
        }
        return jSONObject2;
    }

    private final int a(int i2) {
        return mu1.a().a(this.f8611a, i2);
    }
}
