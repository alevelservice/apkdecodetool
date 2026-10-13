package io.flutter.view;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewStructure;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import g.a.c.a.c;
import g.a.c.c.a;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.i.k;
import io.flutter.embedding.engine.i.l;
import io.flutter.embedding.engine.i.m;
import io.flutter.view.c;
import io.flutter.view.g;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public class FlutterView extends SurfaceView implements g.a.c.a.c, io.flutter.view.g, a.c {
    private final c.i A;

    /* renamed from: e, reason: collision with root package name */
    private final io.flutter.embedding.engine.e.a f19532e;

    /* renamed from: f, reason: collision with root package name */
    private final io.flutter.embedding.engine.h.a f19533f;

    /* renamed from: g, reason: collision with root package name */
    private final io.flutter.embedding.engine.i.g f19534g;

    /* renamed from: h, reason: collision with root package name */
    private final io.flutter.embedding.engine.i.c f19535h;

    /* renamed from: i, reason: collision with root package name */
    private final io.flutter.embedding.engine.i.d f19536i;

    /* renamed from: j, reason: collision with root package name */
    private final io.flutter.embedding.engine.i.e f19537j;

    /* renamed from: k, reason: collision with root package name */
    private final io.flutter.embedding.engine.i.h f19538k;

    /* renamed from: l, reason: collision with root package name */
    private final k f19539l;
    private final l m;
    private final io.flutter.plugin.editing.c n;
    private final g.a.c.b.a o;
    private final io.flutter.embedding.android.a p;
    private final AndroidTouchProcessor q;
    private io.flutter.view.c r;
    private final SurfaceHolder.Callback s;
    private final g t;
    private final List<g.a.c.a.a> u;
    private final List<d> v;
    private final AtomicLong w;
    private io.flutter.view.e x;
    private boolean y;
    private boolean z;

    /* loaded from: classes2.dex */
    class a implements c.i {
        a() {
        }

        @Override // io.flutter.view.c.i
        public void a(boolean z, boolean z2) {
            FlutterView.this.a(z, z2);
        }
    }

    /* loaded from: classes2.dex */
    class b implements SurfaceHolder.Callback {
        b() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            FlutterView.this.assertAttached();
            FlutterView.this.x.e().onSurfaceChanged(i3, i4);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            FlutterView.this.assertAttached();
            FlutterView.this.x.e().onSurfaceCreated(surfaceHolder.getSurface());
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            FlutterView.this.assertAttached();
            FlutterView.this.x.e().onSurfaceDestroyed();
        }
    }

    /* loaded from: classes2.dex */
    class c implements g.a.c.a.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.flutter.plugin.platform.d f19542a;

        c(FlutterView flutterView, io.flutter.plugin.platform.d dVar) {
            this.f19542a = dVar;
        }

        @Override // g.a.c.a.a
        public void onPostResume() {
            this.f19542a.b();
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface e {
        FlutterView getFlutterView();
    }

    /* loaded from: classes2.dex */
    final class f implements g.a {

        /* renamed from: a, reason: collision with root package name */
        private final long f19543a;

        /* renamed from: b, reason: collision with root package name */
        private final SurfaceTexture f19544b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f19545c;

        /* renamed from: d, reason: collision with root package name */
        private SurfaceTexture.OnFrameAvailableListener f19546d = new a();

        /* loaded from: classes2.dex */
        class a implements SurfaceTexture.OnFrameAvailableListener {
            a() {
            }

            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                if (f.this.f19545c || FlutterView.this.x == null) {
                    return;
                }
                FlutterView.this.x.e().markTextureFrameAvailable(f.this.f19543a);
            }
        }

        f(long j2, SurfaceTexture surfaceTexture) {
            this.f19543a = j2;
            this.f19544b = surfaceTexture;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f19544b.setOnFrameAvailableListener(this.f19546d, new Handler());
            } else {
                this.f19544b.setOnFrameAvailableListener(this.f19546d);
            }
        }

        @Override // io.flutter.view.g.a
        public long id() {
            return this.f19543a;
        }

        @Override // io.flutter.view.g.a
        public void a() {
            if (this.f19545c) {
                return;
            }
            this.f19545c = true;
            this.f19544b.setOnFrameAvailableListener(null);
            this.f19544b.release();
            FlutterView.this.x.e().unregisterTexture(this.f19543a);
        }

        @Override // io.flutter.view.g.a
        public SurfaceTexture b() {
            return this.f19544b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class g {

        /* renamed from: a, reason: collision with root package name */
        float f19549a = 1.0f;

        /* renamed from: b, reason: collision with root package name */
        int f19550b = 0;

        /* renamed from: c, reason: collision with root package name */
        int f19551c = 0;

        /* renamed from: d, reason: collision with root package name */
        int f19552d = 0;

        /* renamed from: e, reason: collision with root package name */
        int f19553e = 0;

        /* renamed from: f, reason: collision with root package name */
        int f19554f = 0;

        /* renamed from: g, reason: collision with root package name */
        int f19555g = 0;

        /* renamed from: h, reason: collision with root package name */
        int f19556h = 0;

        /* renamed from: i, reason: collision with root package name */
        int f19557i = 0;

        /* renamed from: j, reason: collision with root package name */
        int f19558j = 0;

        /* renamed from: k, reason: collision with root package name */
        int f19559k = 0;

        /* renamed from: l, reason: collision with root package name */
        int f19560l = 0;
        int m = 0;
        int n = 0;
        int o = 0;

        g() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum h {
        NONE,
        LEFT,
        RIGHT,
        BOTH
    }

    public FlutterView(Context context) {
        this(context, null);
    }

    private static Activity a(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    private boolean b() {
        io.flutter.view.e eVar = this.x;
        return eVar != null && eVar.h();
    }

    private void c() {
    }

    private void d() {
        resetAccessibilityTree();
    }

    private void e() {
        io.flutter.view.c cVar = this.r;
        if (cVar != null) {
            cVar.c();
            this.r = null;
        }
    }

    private void f() {
        k.b bVar = (getResources().getConfiguration().uiMode & 48) == 32 ? k.b.dark : k.b.light;
        k.a a2 = this.f19539l.a();
        a2.a(getResources().getConfiguration().fontScale);
        a2.a(DateFormat.is24HourFormat(getContext()));
        a2.a(bVar);
        a2.a();
    }

    private void g() {
        if (b()) {
            FlutterJNI e2 = this.x.e();
            g gVar = this.t;
            e2.setViewportMetrics(gVar.f19549a, gVar.f19550b, gVar.f19551c, gVar.f19552d, gVar.f19553e, gVar.f19554f, gVar.f19555g, gVar.f19556h, gVar.f19557i, gVar.f19558j, gVar.f19559k, gVar.f19560l, gVar.m, gVar.n, gVar.o);
        }
    }

    public void addActivityLifecycleListener(g.a.c.a.a aVar) {
        this.u.add(aVar);
    }

    public void addFirstFrameListener(d dVar) {
        this.v.add(dVar);
    }

    void assertAttached() {
        if (!b()) {
            throw new AssertionError("Platform view is not attached");
        }
    }

    @Override // android.view.View
    public void autofill(SparseArray<AutofillValue> sparseArray) {
        this.n.a(sparseArray);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return this.x.f().c().b(view);
    }

    @Override // io.flutter.view.g
    public g.a createSurfaceTexture() {
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.detachFromGLContext();
        f fVar = new f(this.w.getAndIncrement(), surfaceTexture);
        this.x.e().registerTexture(fVar.id(), surfaceTexture);
        return fVar;
    }

    public void destroy() {
        if (b()) {
            getHolder().removeCallback(this.s);
            e();
            this.x.b();
            this.x = null;
        }
    }

    public io.flutter.view.e detach() {
        if (!b()) {
            return null;
        }
        getHolder().removeCallback(this.s);
        this.x.c();
        io.flutter.view.e eVar = this.x;
        this.x = null;
        return eVar;
    }

    public void disableTransparentBackground() {
        setZOrderOnTop(false);
        getHolder().setFormat(-1);
    }

    @Deprecated
    public void enableTransparentBackground() {
        setZOrderOnTop(true);
        getHolder().setFormat(-2);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT <= 19) {
            g gVar = this.t;
            gVar.f19552d = rect.top;
            gVar.f19553e = rect.right;
            gVar.f19554f = 0;
            gVar.f19555g = rect.left;
            gVar.f19556h = 0;
            gVar.f19557i = 0;
            gVar.f19558j = rect.bottom;
            gVar.f19559k = 0;
            g();
            return true;
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        io.flutter.view.c cVar = this.r;
        if (cVar == null || !cVar.a()) {
            return null;
        }
        return this.r;
    }

    public Bitmap getBitmap() {
        assertAttached();
        return this.x.e().getBitmap();
    }

    @NonNull
    public io.flutter.embedding.engine.e.a getDartExecutor() {
        return this.f19532e;
    }

    float getDevicePixelRatio() {
        return this.t.f19549a;
    }

    public io.flutter.view.e getFlutterNativeView() {
        return this.x;
    }

    public String getLookupKeyForAsset(String str) {
        return io.flutter.view.d.a(str);
    }

    public io.flutter.app.c getPluginRegistry() {
        return this.x.f();
    }

    @Override // g.a.c.c.a.c
    @NonNull
    @RequiresApi(24)
    @TargetApi(24)
    public PointerIcon getSystemPointerIcon(int i2) {
        return PointerIcon.getSystemIcon(getContext(), i2);
    }

    public boolean hasRenderedFirstFrame() {
        return this.z;
    }

    @Override // android.view.View
    @RequiresApi(20)
    @SuppressLint({"InlinedApi", "NewApi"})
    @TargetApi(20)
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        int a2;
        if (Build.VERSION.SDK_INT == 29) {
            Insets systemGestureInsets = windowInsets.getSystemGestureInsets();
            g gVar = this.t;
            gVar.f19560l = systemGestureInsets.top;
            gVar.m = systemGestureInsets.right;
            gVar.n = systemGestureInsets.bottom;
            gVar.o = systemGestureInsets.left;
        }
        boolean z = (getWindowSystemUiVisibility() & 4) == 0;
        boolean z2 = (getWindowSystemUiVisibility() & 2) == 0;
        if (Build.VERSION.SDK_INT >= 30) {
            int navigationBars = z2 ? 0 | WindowInsets.Type.navigationBars() : 0;
            if (z) {
                navigationBars |= WindowInsets.Type.statusBars();
            }
            Insets insets = windowInsets.getInsets(navigationBars);
            g gVar2 = this.t;
            gVar2.f19552d = insets.top;
            gVar2.f19553e = insets.right;
            gVar2.f19554f = insets.bottom;
            gVar2.f19555g = insets.left;
            Insets insets2 = windowInsets.getInsets(WindowInsets.Type.ime());
            g gVar3 = this.t;
            gVar3.f19556h = insets2.top;
            gVar3.f19557i = insets2.right;
            gVar3.f19558j = insets2.bottom;
            gVar3.f19559k = insets2.left;
            Insets insets3 = windowInsets.getInsets(WindowInsets.Type.systemGestures());
            g gVar4 = this.t;
            gVar4.f19560l = insets3.top;
            gVar4.m = insets3.right;
            gVar4.n = insets3.bottom;
            gVar4.o = insets3.left;
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                Insets waterfallInsets = displayCutout.getWaterfallInsets();
                g gVar5 = this.t;
                gVar5.f19552d = Math.max(Math.max(gVar5.f19552d, waterfallInsets.top), displayCutout.getSafeInsetTop());
                g gVar6 = this.t;
                gVar6.f19553e = Math.max(Math.max(gVar6.f19553e, waterfallInsets.right), displayCutout.getSafeInsetRight());
                g gVar7 = this.t;
                gVar7.f19554f = Math.max(Math.max(gVar7.f19554f, waterfallInsets.bottom), displayCutout.getSafeInsetBottom());
                g gVar8 = this.t;
                gVar8.f19555g = Math.max(Math.max(gVar8.f19555g, waterfallInsets.left), displayCutout.getSafeInsetLeft());
            }
        } else {
            h hVar = h.NONE;
            if (!z2) {
                hVar = a();
            }
            this.t.f19552d = z ? windowInsets.getSystemWindowInsetTop() : 0;
            this.t.f19553e = (hVar == h.RIGHT || hVar == h.BOTH) ? 0 : windowInsets.getSystemWindowInsetRight();
            g gVar9 = this.t;
            gVar9.f19554f = 0;
            gVar9.f19555g = (hVar == h.LEFT || hVar == h.BOTH) ? 0 : windowInsets.getSystemWindowInsetLeft();
            g gVar10 = this.t;
            gVar10.f19556h = 0;
            gVar10.f19557i = 0;
            if (z2) {
                a2 = windowInsets.getSystemWindowInsetBottom();
            } else {
                a2 = a(windowInsets);
            }
            gVar10.f19558j = a2;
            this.t.f19559k = 0;
        }
        g();
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.r = new io.flutter.view.c(this, new io.flutter.embedding.engine.i.b(this.f19532e, getFlutterNativeView().e()), (AccessibilityManager) getContext().getSystemService("accessibility"), getContext().getContentResolver(), getPluginRegistry().c());
        this.r.a(this.A);
        a(this.r.a(), this.r.b());
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.o.a(configuration);
        f();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.n.a(this, editorInfo);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }

    public void onFirstFrame() {
        this.z = true;
        Iterator it = new ArrayList(this.v).iterator();
        while (it.hasNext()) {
            ((d) it.next()).a();
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (b() && this.q.a(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (!b()) {
            return super.onHoverEvent(motionEvent);
        }
        return this.r.a(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (b()) {
            return this.p.a(keyEvent) || super.onKeyDown(i2, keyEvent);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (b()) {
            return this.p.b(keyEvent) || super.onKeyUp(i2, keyEvent);
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void onMemoryPressure() {
        this.x.e().notifyLowMemoryWarning();
        this.m.a();
    }

    public void onPause() {
        this.f19536i.b();
    }

    public void onPostResume() {
        Iterator<g.a.c.a.a> it = this.u.iterator();
        while (it.hasNext()) {
            it.next().onPostResume();
        }
        this.f19536i.d();
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i2) {
        super.onProvideAutofillVirtualStructure(viewStructure, i2);
        this.n.a(viewStructure, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        g gVar = this.t;
        gVar.f19550b = i2;
        gVar.f19551c = i3;
        g();
        super.onSizeChanged(i2, i3, i4, i5);
    }

    public void onStart() {
        this.f19536i.b();
    }

    public void onStop() {
        this.f19536i.c();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!b()) {
            return super.onTouchEvent(motionEvent);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            requestUnbufferedDispatch(motionEvent);
        }
        return this.q.b(motionEvent);
    }

    public void popRoute() {
        this.f19534g.a();
    }

    public void pushRoute(String str) {
        this.f19534g.a(str);
    }

    public void removeFirstFrameListener(d dVar) {
        this.v.remove(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetAccessibilityTree() {
        io.flutter.view.c cVar = this.r;
        if (cVar != null) {
            cVar.d();
        }
    }

    public void runFromBundle(io.flutter.view.f fVar) {
        assertAttached();
        d();
        this.x.a(fVar);
        c();
    }

    @Override // g.a.c.a.c
    @UiThread
    public void send(String str, ByteBuffer byteBuffer) {
        send(str, byteBuffer, null);
    }

    public void setInitialRoute(String str) {
        this.f19534g.b(str);
    }

    @Override // g.a.c.a.c
    @UiThread
    public void setMessageHandler(String str, c.a aVar) {
        this.x.setMessageHandler(str, aVar);
    }

    public FlutterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, null);
    }

    public String getLookupKeyForAsset(String str, String str2) {
        return io.flutter.view.d.a(str, str2);
    }

    @Override // g.a.c.a.c
    @UiThread
    public void send(String str, ByteBuffer byteBuffer, c.b bVar) {
        if (!b()) {
            String str2 = "FlutterView.send called on a detached view, channel=" + str;
            return;
        }
        this.x.send(str, byteBuffer, bVar);
    }

    public FlutterView(Context context, AttributeSet attributeSet, io.flutter.view.e eVar) {
        super(context, attributeSet);
        this.w = new AtomicLong(0L);
        this.y = false;
        this.z = false;
        this.A = new a();
        Activity a2 = a(getContext());
        if (a2 != null) {
            if (eVar == null) {
                this.x = new io.flutter.view.e(a2.getApplicationContext());
            } else {
                this.x = eVar;
            }
            this.f19532e = this.x.d();
            this.f19533f = new io.flutter.embedding.engine.h.a(this.x.e());
            this.y = this.x.e().getIsSoftwareRenderingEnabled();
            this.t = new g();
            this.t.f19549a = context.getResources().getDisplayMetrics().density;
            setFocusable(true);
            setFocusableInTouchMode(true);
            this.x.a(this, a2);
            this.s = new b();
            getHolder().addCallback(this.s);
            this.u = new ArrayList();
            this.v = new ArrayList();
            this.f19534g = new io.flutter.embedding.engine.i.g(this.f19532e);
            this.f19535h = new io.flutter.embedding.engine.i.c(this.f19532e);
            this.f19536i = new io.flutter.embedding.engine.i.d(this.f19532e);
            this.f19537j = new io.flutter.embedding.engine.i.e(this.f19532e);
            this.f19538k = new io.flutter.embedding.engine.i.h(this.f19532e);
            this.m = new l(this.f19532e);
            this.f19539l = new k(this.f19532e);
            addActivityLifecycleListener(new c(this, new io.flutter.plugin.platform.d(a2, this.f19538k)));
            io.flutter.plugin.platform.k c2 = this.x.f().c();
            this.n = new io.flutter.plugin.editing.c(this, new m(this.f19532e), c2);
            if (Build.VERSION.SDK_INT >= 24) {
                new g.a.c.c.a(this, new io.flutter.embedding.engine.i.f(this.f19532e));
            }
            this.o = new g.a.c.b.a(context, this.f19537j);
            this.p = new io.flutter.embedding.android.a(this, this.f19535h, this.n);
            this.q = new AndroidTouchProcessor(this.f19533f, false);
            c2.a(this.f19533f);
            this.x.f().c().a(this.n);
            this.x.e().setLocalizationPlugin(this.o);
            this.o.a(getResources().getConfiguration());
            f();
            return;
        }
        throw new IllegalArgumentException("Bad context");
    }

    private h a() {
        Context context = getContext();
        int i2 = context.getResources().getConfiguration().orientation;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (i2 == 2) {
            if (rotation == 1) {
                return h.RIGHT;
            }
            if (rotation == 3) {
                return Build.VERSION.SDK_INT >= 23 ? h.LEFT : h.RIGHT;
            }
            if (rotation == 0 || rotation == 2) {
                return h.BOTH;
            }
        }
        return h.NONE;
    }

    @RequiresApi(20)
    @TargetApi(20)
    private int a(WindowInsets windowInsets) {
        int height = getRootView().getHeight();
        double systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
        double d2 = height;
        Double.isNaN(d2);
        if (systemWindowInsetBottom < d2 * 0.18d) {
            return 0;
        }
        return windowInsets.getSystemWindowInsetBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        boolean z3 = false;
        if (!this.y) {
            if (!z && !z2) {
                z3 = true;
            }
            setWillNotDraw(z3);
            return;
        }
        setWillNotDraw(false);
    }
}
