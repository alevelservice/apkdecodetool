package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.maps.NativeMapView;
import com.mapbox.mapboxsdk.maps.n;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.MapboxGLSurfaceView;
import com.mapbox.mapboxsdk.maps.widgets.CompassView;
import com.mapbox.mapboxsdk.net.ConnectivityReceiver;
import com.mapbox.mapboxsdk.storage.FileSource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes2.dex */
public class MapView extends FrameLayout implements NativeMapView.c {

    /* renamed from: e, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.k f15911e;

    /* renamed from: f, reason: collision with root package name */
    private final k f15912f;

    /* renamed from: g, reason: collision with root package name */
    private final j f15913g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private com.mapbox.mapboxsdk.maps.q f15914h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private com.mapbox.mapboxsdk.maps.n f15915i;

    /* renamed from: j, reason: collision with root package name */
    private View f15916j;

    /* renamed from: k, reason: collision with root package name */
    private g f15917k;

    /* renamed from: l, reason: collision with root package name */
    private MapRenderer f15918l;
    private boolean m;
    MapboxMapOptions mapboxMapOptions;

    @Nullable
    private CompassView n;
    private PointF o;
    private final h p;
    private final i q;
    private final com.mapbox.mapboxsdk.maps.e r;

    @Nullable
    private com.mapbox.mapboxsdk.maps.l s;

    @Nullable
    private com.mapbox.mapboxsdk.maps.m t;

    @Nullable
    private Bundle u;
    private boolean v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements com.mapbox.mapboxsdk.maps.f {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.maps.f
        public void a(PointF pointF) {
            MapView.this.o = pointF;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements n.g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mapbox.mapboxsdk.maps.e f15920a;

        b(com.mapbox.mapboxsdk.maps.e eVar) {
            this.f15920a = eVar;
        }

        @Override // com.mapbox.mapboxsdk.maps.n.g
        public void a() {
            if (MapView.this.n != null) {
                MapView.this.n.isAnimating(false);
            }
            this.f15920a.e();
        }

        @Override // com.mapbox.mapboxsdk.maps.n.g
        public void b() {
            this.f15920a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.mapbox.mapboxsdk.maps.e f15922e;

        c(com.mapbox.mapboxsdk.maps.e eVar) {
            this.f15922e = eVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MapView.this.f15915i == null || MapView.this.n == null) {
                return;
            }
            if (MapView.this.o != null) {
                MapView.this.f15915i.a(0.0d, MapView.this.o.x, MapView.this.o.y, 150L);
            } else {
                MapView.this.f15915i.a(0.0d, MapView.this.f15915i.o() / 2.0f, MapView.this.f15915i.d() / 2.0f, 150L);
            }
            this.f15922e.c(3);
            MapView.this.n.isAnimating(true);
            MapView.this.n.postDelayed(MapView.this.n, 650L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends com.mapbox.mapboxsdk.maps.renderer.b.a {
        d(Context context, TextureView textureView, String str, boolean z) {
            super(context, textureView, str, z);
        }

        @Override // com.mapbox.mapboxsdk.maps.renderer.b.a, com.mapbox.mapboxsdk.maps.renderer.MapRenderer
        protected void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            MapView.this.d();
            super.onSurfaceCreated(gl10, eGLConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.a {
        e(Context context, MapboxGLSurfaceView mapboxGLSurfaceView, String str) {
            super(context, mapboxGLSurfaceView, str);
        }

        @Override // com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.a, com.mapbox.mapboxsdk.maps.renderer.MapRenderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            MapView.this.d();
            super.onSurfaceCreated(gl10, eGLConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MapView.this.m || MapView.this.f15915i != null) {
                return;
            }
            MapView.this.b();
            MapView.this.f15915i.w();
        }
    }

    /* loaded from: classes2.dex */
    private static class g implements View.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        @NonNull
        private final com.mapbox.mapboxsdk.maps.d f15927e;

        /* renamed from: f, reason: collision with root package name */
        private b0 f15928f;

        /* synthetic */ g(Context context, com.mapbox.mapboxsdk.maps.n nVar, a aVar) {
            this(context, nVar);
        }

        private com.mapbox.mapboxsdk.maps.d b() {
            if (this.f15928f.a() != null) {
                return this.f15928f.a();
            }
            return this.f15927e;
        }

        public void a() {
            b().a();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b().onClick(view);
        }

        private g(@NonNull Context context, @NonNull com.mapbox.mapboxsdk.maps.n nVar) {
            this.f15927e = new com.mapbox.mapboxsdk.maps.d(context, nVar);
            this.f15928f = nVar.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class h implements com.mapbox.mapboxsdk.maps.f {

        /* renamed from: a, reason: collision with root package name */
        private final List<com.mapbox.mapboxsdk.maps.f> f15929a;

        private h() {
            this.f15929a = new ArrayList();
        }

        void a(com.mapbox.mapboxsdk.maps.f fVar) {
            this.f15929a.add(fVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.f
        public void a(PointF pointF) {
            MapView.this.s.c(pointF);
            Iterator<com.mapbox.mapboxsdk.maps.f> it = this.f15929a.iterator();
            while (it.hasNext()) {
                it.next().a(pointF);
            }
        }

        /* synthetic */ h(MapView mapView, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class i implements n.k {
        private i() {
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void a(n.o oVar) {
            MapView.this.s.b(oVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void b(n.o oVar) {
            MapView.this.s.a(oVar);
        }

        /* synthetic */ i(MapView mapView, a aVar) {
            this();
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void a(n.p pVar) {
            MapView.this.s.a(pVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void b(n.p pVar) {
            MapView.this.s.b(pVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void a(n.i iVar) {
            MapView.this.s.a(iVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void a(n.r rVar) {
            MapView.this.s.a(rVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void a(n.u uVar) {
            MapView.this.s.a(uVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public AndroidGesturesManager a() {
            return MapView.this.s.b();
        }

        @Override // com.mapbox.mapboxsdk.maps.n.k
        public void a(AndroidGesturesManager androidGesturesManager, boolean z, boolean z2) {
            MapView.this.s.a(MapView.this.getContext(), androidGesturesManager, z, z2);
        }
    }

    /* loaded from: classes2.dex */
    private class j implements t {

        /* renamed from: a, reason: collision with root package name */
        private int f15932a;

        j() {
            MapView.this.addOnDidFinishRenderingFrameListener(this);
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.t
        public void b(boolean z) {
            if (MapView.this.f15915i == null || MapView.this.f15915i.m() == null || !MapView.this.f15915i.m().e()) {
                return;
            }
            this.f15932a++;
            if (this.f15932a == 3) {
                MapView.this.setForeground(null);
                MapView.this.removeOnDidFinishRenderingFrameListener(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            MapView.this.removeOnDidFinishRenderingFrameListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class k implements s, t, r, m, l, q {

        /* renamed from: a, reason: collision with root package name */
        private final List<com.mapbox.mapboxsdk.maps.r> f15934a = new ArrayList();

        k() {
            MapView.this.addOnDidFinishLoadingStyleListener(this);
            MapView.this.addOnDidFinishRenderingFrameListener(this);
            MapView.this.addOnDidFinishLoadingMapListener(this);
            MapView.this.addOnCameraIsChangingListener(this);
            MapView.this.addOnCameraDidChangeListener(this);
            MapView.this.addOnDidFailLoadingMapListener(this);
        }

        private void f() {
            if (this.f15934a.size() > 0) {
                Iterator<com.mapbox.mapboxsdk.maps.r> it = this.f15934a.iterator();
                while (it.hasNext()) {
                    com.mapbox.mapboxsdk.maps.r next = it.next();
                    if (next != null) {
                        next.a(MapView.this.f15915i);
                    }
                    it.remove();
                }
            }
        }

        void a(com.mapbox.mapboxsdk.maps.r rVar) {
            this.f15934a.add(rVar);
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.q
        public void b(String str) {
            if (MapView.this.f15915i != null) {
                MapView.this.f15915i.s();
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.r
        public void c() {
            if (MapView.this.f15915i != null) {
                MapView.this.f15915i.z();
            }
        }

        void d() {
            MapView.this.f15915i.v();
            f();
            MapView.this.f15915i.u();
        }

        void e() {
            this.f15934a.clear();
            MapView.this.removeOnDidFinishLoadingStyleListener(this);
            MapView.this.removeOnDidFinishRenderingFrameListener(this);
            MapView.this.removeOnDidFinishLoadingMapListener(this);
            MapView.this.removeOnCameraIsChangingListener(this);
            MapView.this.removeOnCameraDidChangeListener(this);
            MapView.this.removeOnDidFailLoadingMapListener(this);
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.s
        public void a() {
            if (MapView.this.f15915i != null) {
                MapView.this.f15915i.t();
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.t
        public void b(boolean z) {
            if (MapView.this.f15915i != null) {
                MapView.this.f15915i.y();
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.l
        public void a(boolean z) {
            if (MapView.this.f15915i != null) {
                MapView.this.f15915i.z();
            }
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.m
        public void b() {
            if (MapView.this.f15915i != null) {
                MapView.this.f15915i.z();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface l {
        void a(boolean z);
    }

    /* loaded from: classes2.dex */
    public interface m {
        void b();
    }

    /* loaded from: classes2.dex */
    public interface n {
        void c(boolean z);
    }

    /* loaded from: classes2.dex */
    public interface o {
        boolean c(@NonNull String str);
    }

    /* loaded from: classes2.dex */
    public interface p {
        void g();
    }

    /* loaded from: classes2.dex */
    public interface q {
        void b(String str);
    }

    /* loaded from: classes2.dex */
    public interface r {
        void c();
    }

    /* loaded from: classes2.dex */
    public interface s {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface t {
        void b(boolean z);
    }

    /* loaded from: classes2.dex */
    public interface u {
        void d(boolean z);
    }

    /* loaded from: classes2.dex */
    public interface v {
        void a(String str);
    }

    /* loaded from: classes2.dex */
    public interface w {
        void a(@NonNull String str);
    }

    /* loaded from: classes2.dex */
    public interface x {
        void f();
    }

    /* loaded from: classes2.dex */
    public interface y {
        void d();
    }

    /* loaded from: classes2.dex */
    public interface z {
        void e();
    }

    @UiThread
    public MapView(@NonNull Context context) {
        super(context);
        this.f15911e = new com.mapbox.mapboxsdk.maps.k();
        this.f15912f = new k();
        this.f15913g = new j();
        a aVar = null;
        this.p = new h(this, aVar);
        this.q = new i(this, aVar);
        this.r = new com.mapbox.mapboxsdk.maps.e();
        initialize(context, MapboxMapOptions.a(context));
    }

    private com.mapbox.mapboxsdk.maps.f a() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Context context = getContext();
        this.p.a(a());
        com.mapbox.mapboxsdk.maps.w wVar = new com.mapbox.mapboxsdk.maps.w(this.f15914h, this);
        b0 b0Var = new b0(wVar, this.p, getPixelRatio(), this);
        a.e.d dVar = new a.e.d();
        com.mapbox.mapboxsdk.maps.g gVar = new com.mapbox.mapboxsdk.maps.g(this.f15914h);
        com.mapbox.mapboxsdk.maps.b bVar = new com.mapbox.mapboxsdk.maps.b(this, dVar, gVar, new com.mapbox.mapboxsdk.maps.a(this.f15914h, dVar), new com.mapbox.mapboxsdk.maps.o(this.f15914h, dVar, gVar), new com.mapbox.mapboxsdk.maps.s(this.f15914h, dVar), new com.mapbox.mapboxsdk.maps.u(this.f15914h, dVar), new com.mapbox.mapboxsdk.maps.x(this.f15914h, dVar));
        a0 a0Var = new a0(this, this.f15914h, this.r);
        ArrayList arrayList = new ArrayList();
        this.f15915i = new com.mapbox.mapboxsdk.maps.n(this.f15914h, a0Var, b0Var, wVar, this.q, this.r, arrayList);
        this.f15915i.a(bVar);
        this.s = new com.mapbox.mapboxsdk.maps.l(context, a0Var, wVar, b0Var, bVar, this.r);
        this.t = new com.mapbox.mapboxsdk.maps.m(a0Var, b0Var, this.s);
        com.mapbox.mapboxsdk.maps.n nVar = this.f15915i;
        nVar.a(new com.mapbox.mapboxsdk.location.k(nVar, a0Var, arrayList));
        setClickable(true);
        setLongClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestDisallowInterceptTouchEvent(true);
        this.f15914h.a(Mapbox.isConnected().booleanValue());
        Bundle bundle = this.u;
        if (bundle == null) {
            this.f15915i.a(context, this.mapboxMapOptions);
        } else {
            this.f15915i.a(bundle);
        }
        this.f15912f.d();
    }

    private boolean c() {
        return this.s != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        post(new f());
    }

    public static void setMapStrictModeEnabled(boolean z2) {
        com.mapbox.mapboxsdk.d.a(z2);
    }

    public void addOnCameraDidChangeListener(@NonNull l lVar) {
        this.f15911e.a(lVar);
    }

    public void addOnCameraIsChangingListener(@NonNull m mVar) {
        this.f15911e.a(mVar);
    }

    public void addOnCameraWillChangeListener(@NonNull n nVar) {
        this.f15911e.a(nVar);
    }

    public void addOnCanRemoveUnusedStyleImageListener(@NonNull o oVar) {
        this.f15911e.a(oVar);
    }

    public void addOnDidBecomeIdleListener(@NonNull p pVar) {
        this.f15911e.a(pVar);
    }

    public void addOnDidFailLoadingMapListener(@NonNull q qVar) {
        this.f15911e.a(qVar);
    }

    public void addOnDidFinishLoadingMapListener(@NonNull r rVar) {
        this.f15911e.a(rVar);
    }

    public void addOnDidFinishLoadingStyleListener(@NonNull s sVar) {
        this.f15911e.a(sVar);
    }

    public void addOnDidFinishRenderingFrameListener(@NonNull t tVar) {
        this.f15911e.a(tVar);
    }

    public void addOnDidFinishRenderingMapListener(@NonNull u uVar) {
        this.f15911e.a(uVar);
    }

    public void addOnSourceChangedListener(@NonNull v vVar) {
        this.f15911e.a(vVar);
    }

    public void addOnStyleImageMissingListener(@NonNull w wVar) {
        this.f15911e.a(wVar);
    }

    public void addOnWillStartLoadingMapListener(@NonNull x xVar) {
        this.f15911e.a(xVar);
    }

    public void addOnWillStartRenderingFrameListener(@NonNull y yVar) {
        this.f15911e.a(yVar);
    }

    public void addOnWillStartRenderingMapListener(@NonNull z zVar) {
        this.f15911e.a(zVar);
    }

    @UiThread
    public void getMapAsync(@NonNull com.mapbox.mapboxsdk.maps.r rVar) {
        com.mapbox.mapboxsdk.maps.n nVar = this.f15915i;
        if (nVar == null) {
            this.f15912f.a(rVar);
        } else {
            rVar.a(nVar);
        }
    }

    @Nullable
    com.mapbox.mapboxsdk.maps.n getMapboxMap() {
        return this.f15915i;
    }

    public float getPixelRatio() {
        float pixelRatio = this.mapboxMapOptions.getPixelRatio();
        return pixelRatio == 0.0f ? getResources().getDisplayMetrics().density : pixelRatio;
    }

    @NonNull
    @UiThread
    public View getRenderView() {
        return this.f15916j;
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.c
    @Nullable
    public Bitmap getViewContent() {
        return com.mapbox.mapboxsdk.utils.a.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageView initialiseAttributionView() {
        ImageView imageView = new ImageView(getContext());
        addView(imageView);
        imageView.setTag("attrView");
        imageView.getLayoutParams().width = -2;
        imageView.getLayoutParams().height = -2;
        imageView.setAdjustViewBounds(true);
        imageView.setClickable(true);
        imageView.setFocusable(true);
        imageView.setContentDescription(getResources().getString(com.mapbox.mapboxsdk.m.mapbox_attributionsIconContentDescription));
        imageView.setImageDrawable(com.mapbox.mapboxsdk.utils.a.a(getContext(), com.mapbox.mapboxsdk.j.mapbox_info_bg_selector));
        g gVar = new g(getContext(), this.f15915i, null);
        this.f15917k = gVar;
        imageView.setOnClickListener(gVar);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CompassView initialiseCompassView() {
        this.n = new CompassView(getContext());
        addView(this.n);
        this.n.setTag("compassView");
        this.n.getLayoutParams().width = -2;
        this.n.getLayoutParams().height = -2;
        this.n.setContentDescription(getResources().getString(com.mapbox.mapboxsdk.m.mapbox_compassContentDescription));
        this.n.injectCompassAnimationListener(a(this.r));
        this.n.setOnClickListener(b(this.r));
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageView initialiseLogoView() {
        ImageView imageView = new ImageView(getContext());
        addView(imageView);
        imageView.setTag("logoView");
        imageView.getLayoutParams().width = -2;
        imageView.getLayoutParams().height = -2;
        imageView.setImageDrawable(com.mapbox.mapboxsdk.utils.a.a(getContext(), com.mapbox.mapboxsdk.j.mapbox_logo_icon));
        return imageView;
    }

    @CallSuper
    @UiThread
    protected void initialize(@NonNull Context context, @NonNull MapboxMapOptions mapboxMapOptions) {
        if (isInEditMode()) {
            return;
        }
        if (Mapbox.hasInstance()) {
            setForeground(new ColorDrawable(mapboxMapOptions.o()));
            this.mapboxMapOptions = mapboxMapOptions;
            setContentDescription(context.getString(com.mapbox.mapboxsdk.m.mapbox_mapActionDescription));
            setWillNotDraw(false);
            a(mapboxMapOptions);
            return;
        }
        throw new com.mapbox.mapboxsdk.r.d();
    }

    @UiThread
    public boolean isDestroyed() {
        return this.m;
    }

    @UiThread
    public void onCreate(@Nullable Bundle bundle) {
        if (bundle == null) {
            com.mapbox.mapboxsdk.maps.z telemetry = Mapbox.getTelemetry();
            if (telemetry != null) {
                telemetry.onAppUserTurnstileEvent();
                return;
            }
            return;
        }
        if (bundle.getBoolean("mapbox_savedState")) {
            this.u = bundle;
        }
    }

    @UiThread
    public void onDestroy() {
        this.m = true;
        this.f15911e.h();
        this.f15912f.e();
        this.f15913g.a();
        CompassView compassView = this.n;
        if (compassView != null) {
            compassView.resetAnimation();
        }
        com.mapbox.mapboxsdk.maps.n nVar = this.f15915i;
        if (nVar != null) {
            nVar.r();
        }
        com.mapbox.mapboxsdk.maps.q qVar = this.f15914h;
        if (qVar != null) {
            qVar.destroy();
            this.f15914h = null;
        }
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.onDestroy();
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(@NonNull MotionEvent motionEvent) {
        if (c()) {
            return this.s.a(motionEvent) || super.onGenericMotionEvent(motionEvent);
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, @NonNull KeyEvent keyEvent) {
        return this.t.a(i2, keyEvent) || super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return this.t.b(i2, keyEvent) || super.onKeyLongPress(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, @NonNull KeyEvent keyEvent) {
        return this.t.c(i2, keyEvent) || super.onKeyUp(i2, keyEvent);
    }

    @UiThread
    public void onLowMemory() {
        com.mapbox.mapboxsdk.maps.q qVar = this.f15914h;
        if (qVar == null || this.f15915i == null || this.m) {
            return;
        }
        qVar.onLowMemory();
    }

    @UiThread
    public void onPause() {
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.onPause();
        }
    }

    @UiThread
    public void onResume() {
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.onResume();
        }
    }

    @UiThread
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        if (this.f15915i != null) {
            bundle.putBoolean("mapbox_savedState", true);
            this.f15915i.b(bundle);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        com.mapbox.mapboxsdk.maps.q qVar;
        if (isInEditMode() || (qVar = this.f15914h) == null) {
            return;
        }
        qVar.a(i2, i3);
    }

    @UiThread
    public void onStart() {
        if (!this.v) {
            ConnectivityReceiver.instance(getContext()).activate();
            FileSource.d(getContext()).activate();
            this.v = true;
        }
        com.mapbox.mapboxsdk.maps.n nVar = this.f15915i;
        if (nVar != null) {
            nVar.w();
        }
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.onStart();
        }
    }

    @UiThread
    public void onStop() {
        g gVar = this.f15917k;
        if (gVar != null) {
            gVar.a();
        }
        if (this.f15915i != null) {
            this.s.a();
            this.f15915i.x();
        }
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.onStop();
        }
        if (this.v) {
            ConnectivityReceiver.instance(getContext()).deactivate();
            FileSource.d(getContext()).deactivate();
            this.v = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (c()) {
            return this.s.b(motionEvent) || super.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTrackballEvent(@NonNull MotionEvent motionEvent) {
        return this.t.a(motionEvent) || super.onTrackballEvent(motionEvent);
    }

    public void queueEvent(@NonNull Runnable runnable) {
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.queueEvent(runnable);
            return;
        }
        throw new IllegalStateException("Calling MapView#queueEvent before mapRenderer is created.");
    }

    public void removeOnCameraDidChangeListener(@NonNull l lVar) {
        this.f15911e.b(lVar);
    }

    public void removeOnCameraIsChangingListener(@NonNull m mVar) {
        this.f15911e.b(mVar);
    }

    public void removeOnCameraWillChangeListener(@NonNull n nVar) {
        this.f15911e.b(nVar);
    }

    public void removeOnCanRemoveUnusedStyleImageListener(@NonNull o oVar) {
        this.f15911e.b(oVar);
    }

    public void removeOnDidBecomeIdleListener(@NonNull p pVar) {
        this.f15911e.b(pVar);
    }

    public void removeOnDidFailLoadingMapListener(@NonNull q qVar) {
        this.f15911e.b(qVar);
    }

    public void removeOnDidFinishLoadingMapListener(@NonNull r rVar) {
        this.f15911e.b(rVar);
    }

    public void removeOnDidFinishLoadingStyleListener(@NonNull s sVar) {
        this.f15911e.b(sVar);
    }

    public void removeOnDidFinishRenderingFrameListener(@NonNull t tVar) {
        this.f15911e.b(tVar);
    }

    public void removeOnDidFinishRenderingMapListener(u uVar) {
        this.f15911e.b(uVar);
    }

    public void removeOnSourceChangedListener(@NonNull v vVar) {
        this.f15911e.b(vVar);
    }

    public void removeOnStyleImageMissingListener(@NonNull w wVar) {
        this.f15911e.b(wVar);
    }

    public void removeOnWillStartLoadingMapListener(@NonNull x xVar) {
        this.f15911e.b(xVar);
    }

    public void removeOnWillStartRenderingFrameListener(@NonNull y yVar) {
        this.f15911e.b(yVar);
    }

    public void removeOnWillStartRenderingMapListener(@NonNull z zVar) {
        this.f15911e.b(zVar);
    }

    void setMapboxMap(com.mapbox.mapboxsdk.maps.n nVar) {
        this.f15915i = nVar;
    }

    public void setMaximumFps(int i2) {
        MapRenderer mapRenderer = this.f15918l;
        if (mapRenderer != null) {
            mapRenderer.setMaximumFps(i2);
            return;
        }
        throw new IllegalStateException("Calling MapView#setMaximumFps before mapRenderer is created.");
    }

    private n.g a(@NonNull com.mapbox.mapboxsdk.maps.e eVar) {
        return new b(eVar);
    }

    private void a(MapboxMapOptions mapboxMapOptions) {
        String q2 = mapboxMapOptions.q();
        if (mapboxMapOptions.E()) {
            TextureView textureView = new TextureView(getContext());
            this.f15918l = new d(getContext(), textureView, q2, mapboxMapOptions.G());
            addView(textureView, 0);
            this.f15916j = textureView;
        } else {
            MapboxGLSurfaceView mapboxGLSurfaceView = new MapboxGLSurfaceView(getContext());
            mapboxGLSurfaceView.setZOrderMediaOverlay(this.mapboxMapOptions.B());
            this.f15918l = new e(getContext(), mapboxGLSurfaceView, q2);
            addView(mapboxGLSurfaceView, 0);
            this.f15916j = mapboxGLSurfaceView;
        }
        this.f15914h = new NativeMapView(getContext(), getPixelRatio(), this.mapboxMapOptions.l(), this, this.f15911e, this.f15918l);
    }

    @UiThread
    public MapView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15911e = new com.mapbox.mapboxsdk.maps.k();
        this.f15912f = new k();
        this.f15913g = new j();
        a aVar = null;
        this.p = new h(this, aVar);
        this.q = new i(this, aVar);
        this.r = new com.mapbox.mapboxsdk.maps.e();
        initialize(context, MapboxMapOptions.a(context, attributeSet));
    }

    @UiThread
    public MapView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f15911e = new com.mapbox.mapboxsdk.maps.k();
        this.f15912f = new k();
        this.f15913g = new j();
        a aVar = null;
        this.p = new h(this, aVar);
        this.q = new i(this, aVar);
        this.r = new com.mapbox.mapboxsdk.maps.e();
        initialize(context, MapboxMapOptions.a(context, attributeSet));
    }

    @UiThread
    public MapView(@NonNull Context context, @Nullable MapboxMapOptions mapboxMapOptions) {
        super(context);
        this.f15911e = new com.mapbox.mapboxsdk.maps.k();
        this.f15912f = new k();
        this.f15913g = new j();
        a aVar = null;
        this.p = new h(this, aVar);
        this.q = new i(this, aVar);
        this.r = new com.mapbox.mapboxsdk.maps.e();
        initialize(context, mapboxMapOptions == null ? MapboxMapOptions.a(context) : mapboxMapOptions);
    }

    private View.OnClickListener b(@NonNull com.mapbox.mapboxsdk.maps.e eVar) {
        return new c(eVar);
    }
}
