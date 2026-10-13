package e.m.b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import android.graphics.RectF;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.mapbox.android.telemetry.j0;
import com.mapbox.geojson.Feature;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.geometry.LatLngQuad;
import com.mapbox.mapboxsdk.geometry.VisibleRegion;
import com.mapbox.mapboxsdk.location.LocationComponentOptions;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMapOptions;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.maps.n;
import com.mapbox.mapboxsdk.offline.OfflineManager;
import com.mapbox.mapboxsdk.style.layers.RasterLayer;
import com.mapbox.mapboxsdk.style.sources.ImageSource;
import com.mapbox.mapboxsdk.u.a.a;
import g.a.c.a.k;
import g.a.c.a.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapboxMapController.java */
/* loaded from: classes2.dex */
public final class r implements Application.ActivityLifecycleCallbacks, n.c, n.e, n.f, com.mapbox.mapboxsdk.t.a.r, n.o, n.p, t, k.c, com.mapbox.mapboxsdk.maps.r, com.mapbox.mapboxsdk.location.x, y, x, v, w, io.flutter.plugin.platform.f {
    private final Context A;
    private final String B;
    private com.mapbox.mapboxsdk.plugins.localization.a F;
    private Style G;

    /* renamed from: e, reason: collision with root package name */
    private final int f18084e;

    /* renamed from: f, reason: collision with root package name */
    private final AtomicInteger f18085f;

    /* renamed from: g, reason: collision with root package name */
    private final g.a.c.a.k f18086g;

    /* renamed from: h, reason: collision with root package name */
    private final m.d f18087h;

    /* renamed from: i, reason: collision with root package name */
    private final MapView f18088i;

    /* renamed from: j, reason: collision with root package name */
    private com.mapbox.mapboxsdk.maps.n f18089j;

    /* renamed from: k, reason: collision with root package name */
    private final Map<String, a0> f18090k;

    /* renamed from: l, reason: collision with root package name */
    private final Map<String, o> f18091l;
    private final Map<String, e.m.b.g> m;
    private final Map<String, k> n;
    private com.mapbox.mapboxsdk.t.a.b0 o;
    private com.mapbox.mapboxsdk.t.a.p p;
    private com.mapbox.mapboxsdk.t.a.e q;
    private com.mapbox.mapboxsdk.t.a.l r;
    private final float x;
    private k.d y;
    private final int z;
    private boolean s = false;
    private boolean t = false;
    private int u = 0;
    private int v = 0;
    private boolean w = false;
    private com.mapbox.mapboxsdk.location.k C = null;
    private e.m.a.a.d.c D = null;
    private e.m.a.a.d.d<e.m.a.a.d.i> E = null;
    Style.c H = new a();

    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    class a implements Style.c {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.maps.Style.c
        public void a(@NonNull Style style) {
            r.this.G = style;
            r.this.c(style);
            r.this.e(style);
            r.this.a(style);
            r.this.b(style);
            if (r.this.t) {
                r.this.d(style);
            }
            r.this.f18089j.a((n.o) r.this);
            r.this.f18089j.a((n.p) r.this);
            r rVar = r.this;
            rVar.F = new com.mapbox.mapboxsdk.plugins.localization.a(rVar.f18088i, r.this.f18089j, style);
            r.this.f18086g.a("map#onStyleLoaded", null);
        }
    }

    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    class b extends g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f18093a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(r rVar, k.d dVar) {
            super(rVar);
            this.f18093a = dVar;
        }

        @Override // e.m.b.r.g, com.mapbox.mapboxsdk.maps.n.a
        public void a() {
            super.a();
            this.f18093a.a(true);
        }

        @Override // e.m.b.r.g, com.mapbox.mapboxsdk.maps.n.a
        public void b() {
            super.b();
            this.f18093a.a(false);
        }
    }

    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    class c extends g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f18094a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(r rVar, k.d dVar) {
            super(rVar);
            this.f18094a = dVar;
        }

        @Override // e.m.b.r.g, com.mapbox.mapboxsdk.maps.n.a
        public void a() {
            super.a();
            this.f18094a.a(true);
        }

        @Override // e.m.b.r.g, com.mapbox.mapboxsdk.maps.n.a
        public void b() {
            super.b();
            this.f18094a.a(false);
        }
    }

    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    class d implements OfflineManager.FileSourceCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f18095a;

        d(r rVar, k.d dVar) {
            this.f18095a = dVar;
        }

        @Override // com.mapbox.mapboxsdk.offline.OfflineManager.FileSourceCallback
        public void onError(@NonNull String str) {
            this.f18095a.a("MAPBOX CACHE ERROR", str, null);
        }

        @Override // com.mapbox.mapboxsdk.offline.OfflineManager.FileSourceCallback
        public void onSuccess() {
            this.f18095a.a(null);
        }
    }

    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    class e implements e.m.a.a.d.d<e.m.a.a.d.i> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f18096a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ k.d f18097b;

        e(r rVar, Map map, k.d dVar) {
            this.f18096a = map;
            this.f18097b = dVar;
        }

        @Override // e.m.a.a.d.d
        public void a(e.m.a.a.d.i iVar) {
            Location a2 = iVar.a();
            if (a2 != null) {
                this.f18096a.put("latitude", Double.valueOf(a2.getLatitude()));
                this.f18096a.put("longitude", Double.valueOf(a2.getLongitude()));
                this.f18096a.put("altitude", Double.valueOf(a2.getAltitude()));
                this.f18097b.a(this.f18096a);
                return;
            }
            this.f18097b.a("", "", null);
        }

        @Override // e.m.a.a.d.d
        public void a(@NonNull Exception exc) {
            this.f18097b.a("", "", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    public class f implements e.m.a.a.d.d<e.m.a.a.d.i> {
        f() {
        }

        @Override // e.m.a.a.d.d
        public void a(@NonNull Exception exc) {
        }

        @Override // e.m.a.a.d.d
        public void a(e.m.a.a.d.i iVar) {
            r.this.a(iVar.a());
        }
    }

    /* compiled from: MapboxMapController.java */
    /* loaded from: classes2.dex */
    public class g implements n.a {
        public g(r rVar) {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.a
        public void a() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.a
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(int i2, Context context, AtomicInteger atomicInteger, m.d dVar, MapboxMapOptions mapboxMapOptions, String str, String str2) {
        Mapbox.getInstance(context, str == null ? a(context) : str);
        this.f18084e = i2;
        this.A = context;
        this.f18085f = atomicInteger;
        this.f18087h = dVar;
        this.B = str2;
        this.f18088i = new MapView(context, mapboxMapOptions);
        this.f18090k = new HashMap();
        this.f18091l = new HashMap();
        this.m = new HashMap();
        this.n = new HashMap();
        this.x = context.getResources().getDisplayMetrics().density;
        this.f18086g = new g.a.c.a.k(dVar.d(), "plugins.flutter.io/mapbox_maps_" + i2);
        this.f18086g.a(this);
        this.z = dVar.b().hashCode();
    }

    private CameraPosition h() {
        if (this.s) {
            return this.f18089j.b();
        }
        return null;
    }

    private a0 i(String str) {
        a0 a0Var = this.f18090k.get(str);
        if (a0Var != null) {
            return a0Var;
        }
        throw new IllegalArgumentException("Unknown symbol: " + str);
    }

    private e.m.b.f j() {
        return new e.m.b.f(this.q);
    }

    private j k() {
        return new j(this.r);
    }

    private n l() {
        return new n(this.p);
    }

    private void m() {
        com.mapbox.mapboxsdk.location.k kVar;
        if (this.E != null || (kVar = this.C) == null || kVar.c() == null) {
            return;
        }
        this.E = new f();
        this.C.c().a(this.C.d(), this.E, null);
    }

    private void n() {
        com.mapbox.mapboxsdk.location.k kVar;
        if (this.E == null || (kVar = this.C) == null || kVar.c() == null) {
            return;
        }
        this.C.c().b(this.E);
        this.E = null;
    }

    private void o() {
        if (this.C == null && this.t) {
            d(this.f18089j.m());
        }
        if (this.t) {
            m();
        } else {
            n();
        }
        this.C.a(this.t);
    }

    private void p() {
        this.C.c(new int[]{18, 4, 8}[this.v]);
    }

    private void q() {
        this.C.a(new int[]{8, 24, 32, 34}[this.u]);
    }

    @Override // io.flutter.plugin.platform.f
    @SuppressLint({"NewApi"})
    public /* synthetic */ void a(@NonNull View view) {
        io.flutter.plugin.platform.e.a(this, view);
    }

    @Override // io.flutter.plugin.platform.f
    @SuppressLint({"NewApi"})
    public /* synthetic */ void b() {
        io.flutter.plugin.platform.e.b(this);
    }

    @Override // io.flutter.plugin.platform.f
    @SuppressLint({"NewApi"})
    public /* synthetic */ void c() {
        io.flutter.plugin.platform.e.c(this);
    }

    @Override // io.flutter.plugin.platform.f
    @SuppressLint({"NewApi"})
    public /* synthetic */ void d() {
        io.flutter.plugin.platform.e.a(this);
    }

    @Override // io.flutter.plugin.platform.f
    public void dispose() {
        if (this.w || this.f18087h.b() == null) {
            return;
        }
        this.w = true;
        com.mapbox.mapboxsdk.location.k kVar = this.C;
        if (kVar != null) {
            kVar.a(false);
        }
        com.mapbox.mapboxsdk.t.a.b0 b0Var = this.o;
        if (b0Var != null) {
            b0Var.e();
        }
        com.mapbox.mapboxsdk.t.a.p pVar = this.p;
        if (pVar != null) {
            pVar.e();
        }
        com.mapbox.mapboxsdk.t.a.e eVar = this.q;
        if (eVar != null) {
            eVar.e();
        }
        com.mapbox.mapboxsdk.t.a.l lVar = this.r;
        if (lVar != null) {
            lVar.e();
        }
        n();
        this.f18088i.onDestroy();
        this.f18087h.b().getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        switch (this.f18085f.get()) {
            case 1:
                this.f18088i.onCreate(null);
                break;
            case 2:
                this.f18088i.onCreate(null);
                this.f18088i.onStart();
                break;
            case 3:
                this.f18088i.onCreate(null);
                this.f18088i.onStart();
                this.f18088i.onResume();
                break;
            case 4:
                this.f18088i.onCreate(null);
                this.f18088i.onStart();
                this.f18088i.onResume();
                this.f18088i.onPause();
                break;
            case 5:
                this.f18088i.onCreate(null);
                this.f18088i.onStart();
                this.f18088i.onResume();
                this.f18088i.onPause();
                this.f18088i.onStop();
                break;
            case 6:
                this.f18089j.b((n.c) this);
                this.f18089j.b((n.f) this);
                this.f18089j.b((n.e) this);
                this.f18088i.onDestroy();
                break;
            default:
                throw new IllegalArgumentException("Cannot interpret " + this.f18085f.get() + " as an activity state");
        }
        this.f18087h.b().getApplication().registerActivityLifecycleCallbacks(this);
        this.f18088i.getMapAsync(this);
    }

    @Override // io.flutter.plugin.platform.f
    public View getView() {
        return this.f18088i;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onCreate(bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onDestroy();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onPause();
        n();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onResume();
        if (this.t) {
            m();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onSaveInstanceState(bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onStart();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.w || activity.hashCode() != this.z) {
            return;
        }
        this.f18088i.onStop();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        List<Feature> a2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -2108860184:
                if (str.equals("symbols#addAll")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -2068530537:
                if (str.equals("map#getVisibleRegion")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1487673675:
                if (str.equals("circle#getGeometry")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case -1484329544:
                if (str.equals("symbolManager#textIgnorePlacement")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -1389285936:
                if (str.equals("map#update")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1365804945:
                if (str.equals("map#matchMapLanguageWithDeviceDefault")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1264573565:
                if (str.equals("camera#animate")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -1220457577:
                if (str.equals("circle#remove")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case -1214363661:
                if (str.equals("line#remove")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case -1124693028:
                if (str.equals("circle#update")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case -1118599112:
                if (str.equals("line#update")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case -1112328594:
                if (str.equals("circle#add")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case -762615339:
                if (str.equals("symbols#removeAll")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case -730538591:
                if (str.equals("fill#add")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case -680140268:
                if (str.equals("symbol#update")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case -387878012:
                if (str.equals("fill#remove")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case -292113463:
                if (str.equals("fill#update")) {
                    c2 = '!';
                    break;
                }
                c2 = 65535;
                break;
            case -281765917:
                if (str.equals("map#toScreenLocation")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -269764573:
                if (str.equals("map#setTelemetryEnabled")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -206659616:
                if (str.equals("style#removeImageSource")) {
                    c2 = '%';
                    break;
                }
                c2 = 65535;
                break;
            case 295004975:
                if (str.equals("map#waitForMap")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 494644999:
                if (str.equals("style#addImageSource")) {
                    c2 = '$';
                    break;
                }
                c2 = 65535;
                break;
            case 576207129:
                if (str.equals("map#setMapLanguage")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 582108121:
                if (str.equals("line#getGeometry")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 682423532:
                if (str.equals("symbolManager#iconIgnorePlacement")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 1187182482:
                if (str.equals("line#add")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case 1223882507:
                if (str.equals("map#updateMyLocationTrackingMode")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1226135387:
                if (str.equals("style#removeLayer")) {
                    c2 = '\'';
                    break;
                }
                c2 = 65535;
                break;
            case 1273963287:
                if (str.equals("map#getTelemetryEnabled")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 1445884198:
                if (str.equals("locationComponent#getLastLocation")) {
                    c2 = '\"';
                    break;
                }
                c2 = 65535;
                break;
            case 1470803073:
                if (str.equals("map#getMetersPerPixelAtLatitude")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1491428300:
                if (str.equals("style#addImage")) {
                    c2 = '#';
                    break;
                }
                c2 = 65535;
                break;
            case 1493864386:
                if (str.equals("style#addLayer")) {
                    c2 = '&';
                    break;
                }
                c2 = 65535;
                break;
            case 1523267500:
                if (str.equals("map#invalidateAmbientCache")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 1527205139:
                if (str.equals("map#queryRenderedFeatures")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 1608577704:
                if (str.equals("map#toLatLng")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1686745981:
                if (str.equals("symbol#getGeometry")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 1765944921:
                if (str.equals("symbolManager#textAllowOverlap")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 2003557999:
                if (str.equals("camera#move")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 2087228325:
                if (str.equals("symbolManager#iconAllowOverlap")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                if (this.f18089j != null) {
                    dVar.a(null);
                    return;
                } else {
                    this.y = dVar;
                    return;
                }
            case 1:
                i.a(jVar.a("options"), this);
                dVar.a(i.a(h()));
                return;
            case 2:
                e(((Integer) jVar.a("mode")).intValue());
                dVar.a(null);
                return;
            case 3:
                try {
                    this.F.a();
                    dVar.a(null);
                    return;
                } catch (RuntimeException e2) {
                    e2.toString();
                    dVar.a("MAPBOX LOCALIZATION PLUGIN ERROR", e2.toString(), null);
                    return;
                }
            case 4:
                try {
                    this.F.a((String) jVar.a("language"));
                    dVar.a(null);
                    return;
                } catch (RuntimeException e3) {
                    e3.toString();
                    dVar.a("MAPBOX LOCALIZATION PLUGIN ERROR", e3.toString(), null);
                    return;
                }
            case 5:
                HashMap hashMap = new HashMap();
                VisibleRegion c3 = this.f18089j.l().c();
                hashMap.put("sw", Arrays.asList(Double.valueOf(c3.f15760g.a()), Double.valueOf(c3.f15760g.b())));
                hashMap.put("ne", Arrays.asList(Double.valueOf(c3.f15759f.a()), Double.valueOf(c3.f15759f.b())));
                dVar.a(hashMap);
                return;
            case 6:
                HashMap hashMap2 = new HashMap();
                PointF a3 = this.f18089j.l().a(new LatLng(((Double) jVar.a("latitude")).doubleValue(), ((Double) jVar.a("longitude")).doubleValue()));
                hashMap2.put("x", Float.valueOf(a3.x));
                hashMap2.put("y", Float.valueOf(a3.y));
                dVar.a(hashMap2);
                return;
            case 7:
                HashMap hashMap3 = new HashMap();
                LatLng a4 = this.f18089j.l().a(new PointF(((Double) jVar.a("x")).floatValue(), ((Double) jVar.a("y")).floatValue()));
                hashMap3.put("latitude", Double.valueOf(a4.a()));
                hashMap3.put("longitude", Double.valueOf(a4.b()));
                dVar.a(hashMap3);
                return;
            case '\b':
                HashMap hashMap4 = new HashMap();
                hashMap4.put("metersperpixel", Double.valueOf(this.f18089j.l().a(((Double) jVar.a("latitude")).doubleValue())));
                dVar.a(hashMap4);
                return;
            case '\t':
                com.mapbox.mapboxsdk.camera.a a5 = i.a(jVar.a("cameraUpdate"), this.f18089j, this.x);
                if (a5 != null) {
                    this.f18089j.b(a5, new b(this, dVar));
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '\n':
                com.mapbox.mapboxsdk.camera.a a6 = i.a(jVar.a("cameraUpdate"), this.f18089j, this.x);
                Integer num = (Integer) jVar.a("duration");
                c cVar = new c(this, dVar);
                if (a6 != null && num != null) {
                    this.f18089j.a(a6, num.intValue(), cVar);
                    return;
                } else if (a6 != null) {
                    this.f18089j.a(a6, cVar);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 11:
                HashMap hashMap5 = new HashMap();
                String[] strArr = (String[]) ((List) jVar.a("layerIds")).toArray(new String[0]);
                List list = (List) jVar.a("filter");
                JsonElement b2 = list == null ? null : new Gson().b(list);
                JsonArray asJsonArray = (b2 == null || !b2.isJsonArray()) ? null : b2.getAsJsonArray();
                com.mapbox.mapboxsdk.u.a.a a7 = asJsonArray != null ? a.C0170a.a(asJsonArray) : null;
                if (jVar.b("x")) {
                    a2 = this.f18089j.a(new PointF(((Double) jVar.a("x")).floatValue(), ((Double) jVar.a("y")).floatValue()), a7, strArr);
                } else {
                    a2 = this.f18089j.a(new RectF(((Double) jVar.a("left")).floatValue(), ((Double) jVar.a("top")).floatValue(), ((Double) jVar.a("right")).floatValue(), ((Double) jVar.a("bottom")).floatValue()), a7, strArr);
                }
                ArrayList arrayList = new ArrayList();
                Iterator<Feature> it = a2.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toJson());
                }
                hashMap5.put("features", arrayList);
                dVar.a(hashMap5);
                return;
            case '\f':
                Mapbox.getTelemetry().setUserTelemetryRequestState(((Boolean) jVar.a("enabled")).booleanValue());
                dVar.a(null);
                return;
            case '\r':
                dVar.a(Boolean.valueOf(j0.b() == j0.c.ENABLED));
                return;
            case 14:
                OfflineManager.b(this.A).a(new d(this, dVar));
                return;
            case 15:
                ArrayList arrayList2 = new ArrayList();
                List list2 = (List) jVar.a("options");
                ArrayList arrayList3 = new ArrayList();
                if (list2 != null) {
                    for (Object obj : list2) {
                        z zVar = new z();
                        i.a(obj, zVar);
                        arrayList3.add(zVar.a());
                    }
                    if (!arrayList3.isEmpty()) {
                        for (com.mapbox.mapboxsdk.t.a.z zVar2 : this.o.a(arrayList3)) {
                            String valueOf = String.valueOf(zVar2.c());
                            arrayList2.add(valueOf);
                            this.f18090k.put(valueOf, new a0(zVar2, true, this));
                        }
                    }
                }
                dVar.a(arrayList2);
                return;
            case 16:
                ArrayList arrayList4 = (ArrayList) jVar.a("symbols");
                ArrayList arrayList5 = new ArrayList();
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    a0 remove = this.f18090k.remove((String) it2.next());
                    if (remove != null) {
                        arrayList5.add(remove.b());
                    }
                }
                if (!arrayList5.isEmpty()) {
                    this.o.b(arrayList5);
                }
                dVar.a(null);
                return;
            case 17:
                a0 i2 = i((String) jVar.a("symbol"));
                i.a(jVar.a("options"), i2);
                i2.a(this.o);
                dVar.a(null);
                return;
            case 18:
                LatLng a8 = i((String) jVar.a("symbol")).a();
                HashMap hashMap6 = new HashMap();
                hashMap6.put("latitude", Double.valueOf(a8.a()));
                hashMap6.put("longitude", Double.valueOf(a8.b()));
                dVar.a(hashMap6);
                break;
            case 19:
                break;
            case 20:
                this.o.b((Boolean) jVar.a("iconIgnorePlacement"));
                dVar.a(null);
                return;
            case 21:
                this.o.c((Boolean) jVar.a("textAllowOverlap"));
                dVar.a(null);
                return;
            case 22:
                this.o.d((Boolean) jVar.a("textIgnorePlacement"));
                dVar.a(null);
                return;
            case 23:
                n l2 = l();
                i.a(jVar.a("options"), l2);
                com.mapbox.mapboxsdk.t.a.n a9 = l2.a();
                String valueOf2 = String.valueOf(a9.c());
                this.f18091l.put(valueOf2, new o(a9, true, this));
                dVar.a(valueOf2);
                return;
            case 24:
                h((String) jVar.a("line"));
                dVar.a(null);
                return;
            case 25:
                o e4 = e((String) jVar.a("line"));
                i.a(jVar.a("options"), e4);
                e4.b(this.p);
                dVar.a(null);
                return;
            case 26:
                List<LatLng> a10 = e((String) jVar.a("line")).a();
                ArrayList arrayList6 = new ArrayList();
                for (LatLng latLng : a10) {
                    HashMap hashMap7 = new HashMap();
                    hashMap7.put("latitude", Double.valueOf(latLng.a()));
                    hashMap7.put("longitude", Double.valueOf(latLng.b()));
                    arrayList6.add(hashMap7);
                }
                dVar.a(arrayList6);
                return;
            case 27:
                e.m.b.f j2 = j();
                i.a(jVar.a("options"), j2);
                com.mapbox.mapboxsdk.t.a.c a11 = j2.a();
                String valueOf3 = String.valueOf(a11.c());
                this.m.put(valueOf3, new e.m.b.g(a11, true, this));
                dVar.a(valueOf3);
                return;
            case 28:
                f((String) jVar.a("circle"));
                dVar.a(null);
                return;
            case 29:
                e.m.b.g c4 = c((String) jVar.a("circle"));
                i.a(jVar.a("options"), c4);
                c4.b(this.q);
                dVar.a(null);
                return;
            case 30:
                LatLng a12 = c((String) jVar.a("circle")).a();
                HashMap hashMap8 = new HashMap();
                hashMap8.put("latitude", Double.valueOf(a12.a()));
                hashMap8.put("longitude", Double.valueOf(a12.b()));
                dVar.a(hashMap8);
                return;
            case 31:
                j k2 = k();
                i.a(jVar.a("options"), k2);
                com.mapbox.mapboxsdk.t.a.j a13 = k2.a();
                String valueOf4 = String.valueOf(a13.c());
                this.n.put(valueOf4, new k(a13, true, this));
                dVar.a(valueOf4);
                return;
            case ' ':
                g((String) jVar.a("fill"));
                dVar.a(null);
                return;
            case '!':
                k d2 = d((String) jVar.a("fill"));
                i.a(jVar.a("options"), d2);
                d2.b(this.r);
                dVar.a(null);
                return;
            case '\"':
                if (!this.t || this.C == null || this.D == null) {
                    return;
                }
                this.D.a(new e(this, new HashMap(), dVar));
                return;
            case '#':
                if (this.G == null) {
                    dVar.a("STYLE IS NULL", "The style is null. Has onStyleLoaded() already been invoked?", null);
                }
                this.G.a((String) jVar.a("name"), BitmapFactory.decodeByteArray((byte[]) jVar.a("bytes"), 0, ((Integer) jVar.a("length")).intValue()), ((Boolean) jVar.a("sdf")).booleanValue());
                dVar.a(null);
                return;
            case '$':
                if (this.G == null) {
                    dVar.a("STYLE IS NULL", "The style is null. Has onStyleLoaded() already been invoked?", null);
                }
                List<LatLng> i3 = i.i(jVar.a("coordinates"));
                this.G.a(new ImageSource((String) jVar.a("name"), new LatLngQuad(i3.get(0), i3.get(1), i3.get(2), i3.get(3)), BitmapFactory.decodeByteArray((byte[]) jVar.a("bytes"), 0, ((Integer) jVar.a("length")).intValue())));
                dVar.a(null);
                return;
            case '%':
                if (this.G == null) {
                    dVar.a("STYLE IS NULL", "The style is null. Has onStyleLoaded() already been invoked?", null);
                }
                this.G.e((String) jVar.a("name"));
                dVar.a(null);
                return;
            case '&':
                if (this.G == null) {
                    dVar.a("STYLE IS NULL", "The style is null. Has onStyleLoaded() already been invoked?", null);
                }
                this.G.a(new RasterLayer((String) jVar.a("name"), (String) jVar.a("sourceId")));
                dVar.a(null);
                return;
            case '\'':
                if (this.G == null) {
                    dVar.a("STYLE IS NULL", "The style is null. Has onStyleLoaded() already been invoked?", null);
                }
                this.G.d((String) jVar.a("name"));
                dVar.a(null);
                return;
            default:
                dVar.a();
                return;
        }
        this.o.a((Boolean) jVar.a("iconAllowOverlap"));
        dVar.a(null);
    }

    private o e(String str) {
        o oVar = this.f18091l.get(str);
        if (oVar != null) {
            return oVar;
        }
        throw new IllegalArgumentException("Unknown line: " + str);
    }

    private void f(String str) {
        e.m.b.g remove = this.m.remove(str);
        if (remove != null) {
            remove.a(this.q);
        }
    }

    private void h(String str) {
        o remove = this.f18091l.remove(str);
        if (remove != null) {
            remove.a(this.p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@NonNull Style style) {
        if (this.r == null) {
            this.r = new com.mapbox.mapboxsdk.t.a.l(this.f18088i, this.f18089j, style);
            this.r.a((com.mapbox.mapboxsdk.t.a.l) new com.mapbox.mapboxsdk.t.a.v() { // from class: e.m.b.e
                @Override // com.mapbox.mapboxsdk.t.a.r
                public final boolean a(com.mapbox.mapboxsdk.t.a.j jVar) {
                    return r.this.a((com.mapbox.mapboxsdk.t.a.a) jVar);
                }
            });
        }
    }

    private e.m.b.g c(String str) {
        e.m.b.g gVar = this.m.get(str);
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalArgumentException("Unknown circle: " + str);
    }

    private k d(String str) {
        k kVar = this.n.get(str);
        if (kVar != null) {
            return kVar;
        }
        throw new IllegalArgumentException("Unknown fill: " + str);
    }

    private boolean i() {
        return b("android.permission.ACCESS_FINE_LOCATION") == 0 || b("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(@NonNull Style style) {
        if (this.o == null) {
            this.o = new com.mapbox.mapboxsdk.t.a.b0(this.f18088i, this.f18089j, style);
            this.o.a((Boolean) true);
            this.o.b((Boolean) true);
            this.o.c(true);
            this.o.d(true);
            this.o.a((com.mapbox.mapboxsdk.t.a.b0) new com.mapbox.mapboxsdk.t.a.x() { // from class: e.m.b.b
                @Override // com.mapbox.mapboxsdk.t.a.r
                public final boolean a(com.mapbox.mapboxsdk.t.a.z zVar) {
                    return r.this.a((com.mapbox.mapboxsdk.t.a.a) zVar);
                }
            });
        }
    }

    @Override // com.mapbox.mapboxsdk.location.x
    public void f() {
        this.u = 0;
        this.f18086g.a("map#onCameraTrackingDismissed", new HashMap());
    }

    private static String a(@NonNull Context context) {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.mapbox.token");
            if (string == null || string.isEmpty()) {
                throw new NullPointerException();
            }
            return string;
        } catch (Exception e2) {
            String str = "Failed to find an Access Token in the Application meta-data. Maps may not load correctly. Please refer to the installation guide at https://github.com/tobrun/flutter-mapbox-gl#mapbox-access-token for troubleshooting advice." + e2.getMessage();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@NonNull Style style) {
        if (this.p == null) {
            this.p = new com.mapbox.mapboxsdk.t.a.p(this.f18088i, this.f18089j, style);
            this.p.a((com.mapbox.mapboxsdk.t.a.p) new com.mapbox.mapboxsdk.t.a.w() { // from class: e.m.b.c
                @Override // com.mapbox.mapboxsdk.t.a.r
                public final boolean a(com.mapbox.mapboxsdk.t.a.n nVar) {
                    return r.this.a((com.mapbox.mapboxsdk.t.a.a) nVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(@NonNull Style style) {
        if (i()) {
            this.D = e.m.a.a.d.f.a(this.A);
            LocationComponentOptions.b a2 = LocationComponentOptions.a(this.A);
            a2.b(true);
            LocationComponentOptions b2 = a2.b();
            this.C = this.f18089j.f();
            this.C.a(this.A, style, b2);
            this.C.a(true);
            this.C.a(this.D);
            this.C.b(30);
            q();
            e(this.u);
            p();
            b(this.v);
            this.C.a(this);
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.n.p
    public boolean b(@NonNull LatLng latLng) {
        PointF a2 = this.f18089j.l().a(latLng);
        HashMap hashMap = new HashMap(5);
        hashMap.put("x", Float.valueOf(a2.x));
        hashMap.put("y", Float.valueOf(a2.y));
        hashMap.put("lng", Double.valueOf(latLng.b()));
        hashMap.put("lat", Double.valueOf(latLng.a()));
        this.f18086g.a("map#onMapLongClick", hashMap);
        return true;
    }

    @Override // e.m.b.t
    public void f(boolean z) {
        this.f18089j.n().p(z);
    }

    @Override // com.mapbox.mapboxsdk.maps.n.f
    public void c(int i2) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("isGesture", Boolean.valueOf(i2 == 1));
        this.f18086g.a("camera#onMoveStarted", hashMap);
    }

    @Override // e.m.b.t
    public void c(boolean z) {
        this.f18089j.n().q(z);
    }

    @Override // com.mapbox.mapboxsdk.maps.n.c
    public void e() {
        this.f18086g.a("camera#onIdle", Collections.singletonMap("map", Integer.valueOf(this.f18084e)));
    }

    @Override // com.mapbox.mapboxsdk.maps.r
    public void a(final com.mapbox.mapboxsdk.maps.n nVar) {
        this.f18089j = nVar;
        k.d dVar = this.y;
        if (dVar != null) {
            dVar.a(null);
            this.y = null;
        }
        nVar.a((n.f) this);
        nVar.a((n.e) this);
        nVar.a((n.c) this);
        this.f18088i.addOnStyleImageMissingListener(new MapView.w() { // from class: e.m.b.d
            @Override // com.mapbox.mapboxsdk.maps.MapView.w
            public final void a(String str) {
                r.this.a(nVar, str);
            }
        });
        a(this.B);
    }

    @Override // e.m.b.t
    public void c(int i2, int i3) {
        this.f18089j.n().c(i2, 0, 0, i3);
    }

    @Override // e.m.b.t
    public void e(boolean z) {
        this.f18089j.n().m(z);
    }

    @Override // e.m.b.t
    public void b(boolean z) {
        this.s = z;
    }

    @Override // e.m.b.t
    public void e(int i2) {
        if (this.u == i2) {
            return;
        }
        this.u = i2;
        if (this.f18089j == null || this.C == null) {
            return;
        }
        q();
    }

    @Override // e.m.b.t
    public void b(int i2) {
        if (this.v == i2) {
            return;
        }
        this.v = i2;
        if (this.f18089j == null || this.C == null) {
            return;
        }
        p();
    }

    @Override // e.m.b.t
    public void b(int i2, int i3) {
        int g2 = this.f18089j.n().g();
        if (g2 == 8388659) {
            this.f18089j.n().b(i2, i3, 0, 0);
            return;
        }
        if (g2 == 8388691) {
            this.f18089j.n().b(i2, 0, 0, i3);
        } else if (g2 != 8388693) {
            this.f18089j.n().b(0, i3, i2, 0);
        } else {
            this.f18089j.n().b(0, 0, i2, i3);
        }
    }

    @Override // e.m.b.t
    public void d(boolean z) {
        this.f18089j.n().r(z);
    }

    public /* synthetic */ void a(com.mapbox.mapboxsdk.maps.n nVar, String str) {
        Bitmap a2 = a(str, this.A.getResources().getDisplayMetrics().density);
        if (a2 != null) {
            nVar.m().a(str, a2);
        }
    }

    @Override // e.m.b.t
    public void d(int i2) {
        if (i2 == 0) {
            this.f18089j.n().c(8388659);
            return;
        }
        if (i2 == 2) {
            this.f18089j.n().c(8388691);
        } else if (i2 != 3) {
            this.f18089j.n().c(8388661);
        } else {
            this.f18089j.n().c(8388693);
        }
    }

    private int b(String str) {
        if (str != null) {
            return this.A.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    @Override // e.m.b.t
    public void a(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!str.startsWith("{") && !str.startsWith("[")) {
            if (!str.startsWith("http://") && !str.startsWith("https://") && !str.startsWith("mapbox://")) {
                this.f18087h.a().getAssets();
                String a2 = this.f18087h.a(str);
                com.mapbox.mapboxsdk.maps.n nVar = this.f18089j;
                Style.b bVar = new Style.b();
                bVar.b("asset://" + a2);
                nVar.a(bVar, this.H);
                return;
            }
            com.mapbox.mapboxsdk.maps.n nVar2 = this.f18089j;
            Style.b bVar2 = new Style.b();
            bVar2.c(str);
            nVar2.a(bVar2, this.H);
            return;
        }
        com.mapbox.mapboxsdk.maps.n nVar3 = this.f18089j;
        Style.b bVar3 = new Style.b();
        bVar3.a(str);
        nVar3.a(bVar3, this.H);
    }

    private void g(String str) {
        k remove = this.n.remove(str);
        if (remove != null) {
            remove.a(this.r);
        }
    }

    @Override // e.m.b.t
    public void g(boolean z) {
        if (this.t == z) {
            return;
        }
        this.t = z;
        if (this.f18089j != null) {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Location location) {
        if (location == null) {
            return;
        }
        HashMap hashMap = new HashMap(6);
        hashMap.put("position", new double[]{location.getLatitude(), location.getLongitude()});
        hashMap.put("altitude", Double.valueOf(location.getAltitude()));
        hashMap.put("bearing", Float.valueOf(location.getBearing()));
        hashMap.put("horizontalAccuracy", Float.valueOf(location.getAccuracy()));
        hashMap.put("verticalAccuracy", Build.VERSION.SDK_INT >= 26 ? Float.valueOf(location.getVerticalAccuracyMeters()) : null);
        hashMap.put("timestamp", Long.valueOf(location.getTime()));
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("userLocation", hashMap);
        this.f18086g.a("map#onUserLocationUpdated", hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull Style style) {
        if (this.q == null) {
            this.q = new com.mapbox.mapboxsdk.t.a.e(this.f18088i, this.f18089j, style);
            this.q.a((com.mapbox.mapboxsdk.t.a.e) new com.mapbox.mapboxsdk.t.a.u() { // from class: e.m.b.a
                @Override // com.mapbox.mapboxsdk.t.a.r
                public final boolean a(com.mapbox.mapboxsdk.t.a.c cVar) {
                    return r.this.a((com.mapbox.mapboxsdk.t.a.a) cVar);
                }
            });
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.n.e
    public void a() {
        if (this.s) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("position", i.a(this.f18089j.b()));
            this.f18086g.a("camera#onMove", hashMap);
        }
    }

    @Override // com.mapbox.mapboxsdk.location.x
    public void a(int i2) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("mode", Integer.valueOf(i2));
        this.f18086g.a("map#onCameraTrackingChanged", hashMap);
    }

    @Override // com.mapbox.mapboxsdk.t.a.r
    public boolean a(com.mapbox.mapboxsdk.t.a.a aVar) {
        k kVar;
        e.m.b.g gVar;
        o oVar;
        a0 a0Var;
        if ((aVar instanceof com.mapbox.mapboxsdk.t.a.z) && (a0Var = this.f18090k.get(String.valueOf(aVar.c()))) != null) {
            a0Var.c();
            return true;
        }
        if ((aVar instanceof com.mapbox.mapboxsdk.t.a.n) && (oVar = this.f18091l.get(String.valueOf(aVar.c()))) != null) {
            oVar.b();
            return true;
        }
        if ((aVar instanceof com.mapbox.mapboxsdk.t.a.c) && (gVar = this.m.get(String.valueOf(aVar.c()))) != null) {
            gVar.b();
            return true;
        }
        if (!(aVar instanceof com.mapbox.mapboxsdk.t.a.j) || (kVar = this.n.get(String.valueOf(aVar.c()))) == null) {
            return false;
        }
        kVar.a();
        return true;
    }

    @Override // e.m.b.y
    public void a(com.mapbox.mapboxsdk.t.a.z zVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("symbol", String.valueOf(zVar.c()));
        this.f18086g.a("symbol#onTap", hashMap);
    }

    @Override // e.m.b.x
    public void a(com.mapbox.mapboxsdk.t.a.n nVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("line", String.valueOf(nVar.c()));
        this.f18086g.a("line#onTap", hashMap);
    }

    @Override // e.m.b.v
    public void a(com.mapbox.mapboxsdk.t.a.c cVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("circle", String.valueOf(cVar.c()));
        this.f18086g.a("circle#onTap", hashMap);
    }

    @Override // e.m.b.w
    public void a(com.mapbox.mapboxsdk.t.a.j jVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("fill", String.valueOf(jVar.c()));
        this.f18086g.a("fill#onTap", hashMap);
    }

    @Override // com.mapbox.mapboxsdk.maps.n.o
    public boolean a(@NonNull LatLng latLng) {
        PointF a2 = this.f18089j.l().a(latLng);
        HashMap hashMap = new HashMap(5);
        hashMap.put("x", Float.valueOf(a2.x));
        hashMap.put("y", Float.valueOf(a2.y));
        hashMap.put("lng", Double.valueOf(latLng.b()));
        hashMap.put("lat", Double.valueOf(latLng.a()));
        this.f18086g.a("map#onMapClick", hashMap);
        return true;
    }

    @Override // e.m.b.t
    public void a(LatLngBounds latLngBounds) {
        this.f18089j.a(latLngBounds);
    }

    @Override // e.m.b.t
    public void a(boolean z) {
        this.f18089j.n().b(z);
    }

    @Override // e.m.b.t
    public void a(Float f2, Float f3) {
        if (f2 != null) {
            this.f18089j.b(f2.floatValue());
        }
        if (f3 != null) {
            this.f18089j.a(f3.floatValue());
        }
    }

    @Override // e.m.b.t
    public void a(int i2, int i3) {
        this.f18089j.n().a(0, 0, i2, i3);
    }

    private Bitmap a(String str, float f2) {
        String a2;
        AssetManager assets = this.f18087h.a().getAssets();
        List asList = Arrays.asList(str.split("/"));
        ArrayList arrayList = new ArrayList();
        for (int ceil = (int) Math.ceil(f2); ceil > 0; ceil--) {
            if (ceil == 1) {
                a2 = this.f18087h.a(str);
            } else {
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < asList.size() - 1; i2++) {
                    sb.append((String) asList.get(i2));
                    sb.append("/");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(ceil);
                sb2.append("x");
                sb.append(sb2.toString());
                sb.append("/");
                sb.append((String) asList.get(asList.size() - 1));
                a2 = this.f18087h.a(sb.toString());
            }
            arrayList.add(a2);
        }
        Bitmap bitmap = null;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                AssetFileDescriptor openFd = assets.openFd((String) it.next());
                bitmap = BitmapFactory.decodeStream(openFd.createInputStream());
                openFd.close();
                break;
            } catch (IOException unused) {
            }
        }
        return bitmap;
    }
}
