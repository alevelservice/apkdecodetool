package io.flutter.embedding.android;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewStructure;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import g.a.c.c.a;
import io.flutter.embedding.android.FlutterImageView;
import io.flutter.embedding.engine.h.a;
import io.flutter.embedding.engine.i.k;
import io.flutter.view.c;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public class FlutterView extends FrameLayout implements a.c {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private FlutterSurfaceView f18949e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private FlutterTextureView f18950f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private FlutterImageView f18951g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.h.c f18952h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.h.c f18953i;

    /* renamed from: j, reason: collision with root package name */
    private final Set<io.flutter.embedding.engine.h.b> f18954j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f18955k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.a f18956l;

    @NonNull
    private final Set<d> m;

    @Nullable
    private g.a.c.c.a n;

    @Nullable
    private io.flutter.plugin.editing.c o;

    @Nullable
    private g.a.c.b.a p;

    @Nullable
    private io.flutter.embedding.android.a q;

    @Nullable
    private AndroidTouchProcessor r;

    @Nullable
    private io.flutter.view.c s;
    private final a.c t;
    private final c.i u;
    private final io.flutter.embedding.engine.h.b v;

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
    class b implements io.flutter.embedding.engine.h.b {
        b() {
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            FlutterView.this.f18955k = true;
            Iterator it = FlutterView.this.f18954j.iterator();
            while (it.hasNext()) {
                ((io.flutter.embedding.engine.h.b) it.next()).onFlutterUiDisplayed();
            }
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
            FlutterView.this.f18955k = false;
            Iterator it = FlutterView.this.f18954j.iterator();
            while (it.hasNext()) {
                ((io.flutter.embedding.engine.h.b) it.next()).onFlutterUiNoLongerDisplayed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements io.flutter.embedding.engine.h.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ io.flutter.embedding.engine.h.a f18959a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Runnable f18960b;

        c(io.flutter.embedding.engine.h.a aVar, Runnable runnable) {
            this.f18959a = aVar;
            this.f18960b = runnable;
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            this.f18959a.b(this);
            this.f18960b.run();
            FlutterView.this.f18951g.detachFromRenderer();
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public interface d {
        void a();

        void a(@NonNull io.flutter.embedding.engine.a aVar);
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public enum e {
        surface,
        texture,
        image
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public enum f {
        opaque,
        transparent
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum g {
        NONE,
        LEFT,
        RIGHT,
        BOTH
    }

    public FlutterView(@NonNull Context context) {
        this(context, (AttributeSet) null, new FlutterSurfaceView(context));
    }

    private g a() {
        Context context = getContext();
        int i2 = context.getResources().getConfiguration().orientation;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (i2 == 2) {
            if (rotation == 1) {
                return g.RIGHT;
            }
            if (rotation == 3) {
                return Build.VERSION.SDK_INT >= 23 ? g.LEFT : g.RIGHT;
            }
            if (rotation == 0 || rotation == 2) {
                return g.BOTH;
            }
        }
        return g.NONE;
    }

    private void b() {
        g.a.b.c("FlutterView", "Initializing FlutterView");
        if (this.f18949e != null) {
            g.a.b.c("FlutterView", "Internally using a FlutterSurfaceView.");
            addView(this.f18949e);
        } else if (this.f18950f != null) {
            g.a.b.c("FlutterView", "Internally using a FlutterTextureView.");
            addView(this.f18950f);
        } else {
            g.a.b.c("FlutterView", "Internally using a FlutterImageView.");
            addView(this.f18951g);
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(4);
        }
    }

    private void c() {
        if (!isAttachedToFlutterEngine()) {
            g.a.b.d("FlutterView", "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine.");
            return;
        }
        this.t.f19102a = getResources().getDisplayMetrics().density;
        this.f18956l.m().a(this.t);
    }

    public boolean acquireLatestImageViewFrame() {
        FlutterImageView flutterImageView = this.f18951g;
        if (flutterImageView != null) {
            return flutterImageView.acquireLatestImage();
        }
        return false;
    }

    @VisibleForTesting
    public void addFlutterEngineAttachmentListener(@NonNull d dVar) {
        this.m.add(dVar);
    }

    public void addOnFirstFrameRenderedListener(@NonNull io.flutter.embedding.engine.h.b bVar) {
        this.f18954j.add(bVar);
    }

    public void attachOverlaySurfaceToRender(FlutterImageView flutterImageView) {
        io.flutter.embedding.engine.a aVar = this.f18956l;
        if (aVar != null) {
            flutterImageView.attachToRenderer(aVar.m());
        }
    }

    public void attachToFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
        g.a.b.c("FlutterView", "Attaching to a FlutterEngine: " + aVar);
        if (isAttachedToFlutterEngine()) {
            if (aVar == this.f18956l) {
                g.a.b.c("FlutterView", "Already attached to this engine. Doing nothing.");
                return;
            } else {
                g.a.b.c("FlutterView", "Currently attached to a different engine. Detaching and then attaching to new engine.");
                detachFromFlutterEngine();
            }
        }
        this.f18956l = aVar;
        io.flutter.embedding.engine.h.a m = this.f18956l.m();
        this.f18955k = m.a();
        this.f18952h.attachToRenderer(m);
        m.a(this.v);
        if (Build.VERSION.SDK_INT >= 24) {
            this.n = new g.a.c.c.a(this, this.f18956l.h());
        }
        this.o = new io.flutter.plugin.editing.c(this, this.f18956l.q(), this.f18956l.k());
        this.p = this.f18956l.g();
        this.q = new io.flutter.embedding.android.a(this, this.f18956l.e(), this.o);
        this.r = new AndroidTouchProcessor(this.f18956l.m(), false);
        this.s = new io.flutter.view.c(this, aVar.b(), (AccessibilityManager) getContext().getSystemService("accessibility"), getContext().getContentResolver(), this.f18956l.k());
        this.s.a(this.u);
        a(this.s.a(), this.s.b());
        this.f18956l.k().a(this.s);
        this.f18956l.k().a(this.f18956l.m());
        this.o.b().restartInput(this);
        sendUserSettingsToFlutter();
        this.p.a(getResources().getConfiguration());
        c();
        aVar.k().a((View) this);
        Iterator<d> it = this.m.iterator();
        while (it.hasNext()) {
            it.next().a(aVar);
        }
        if (this.f18955k) {
            this.v.onFlutterUiDisplayed();
        }
    }

    @Override // android.view.View
    public void autofill(SparseArray<AutofillValue> sparseArray) {
        this.o.a(sparseArray);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        io.flutter.embedding.engine.a aVar = this.f18956l;
        if (aVar != null) {
            return aVar.k().b(view);
        }
        return super.checkInputConnectionProxy(view);
    }

    public void convertToImageView() {
        this.f18952h.pause();
        FlutterImageView flutterImageView = this.f18951g;
        if (flutterImageView == null) {
            this.f18951g = createImageView();
            addView(this.f18951g);
        } else {
            flutterImageView.resizeIfNeeded(getWidth(), getHeight());
        }
        this.f18953i = this.f18952h;
        this.f18952h = this.f18951g;
        io.flutter.embedding.engine.a aVar = this.f18956l;
        if (aVar != null) {
            this.f18952h.attachToRenderer(aVar.m());
        }
    }

    @NonNull
    @VisibleForTesting
    public FlutterImageView createImageView() {
        return new FlutterImageView(getContext(), getWidth(), getHeight(), FlutterImageView.b.background);
    }

    public void detachFromFlutterEngine() {
        g.a.b.c("FlutterView", "Detaching from a FlutterEngine: " + this.f18956l);
        if (!isAttachedToFlutterEngine()) {
            g.a.b.c("FlutterView", "Not attached to an engine. Doing nothing.");
            return;
        }
        Iterator<d> it = this.m.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f18956l.k().e();
        this.f18956l.k().a();
        this.s.c();
        this.s = null;
        this.o.b().restartInput(this);
        this.o.a();
        this.q.a();
        g.a.c.c.a aVar = this.n;
        if (aVar != null) {
            aVar.a();
        }
        io.flutter.embedding.engine.h.a m = this.f18956l.m();
        this.f18955k = false;
        m.b(this.v);
        m.c();
        m.a(false);
        this.f18952h.detachFromRenderer();
        this.f18951g = null;
        this.f18953i = null;
        this.f18956l = null;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(@NonNull Rect rect) {
        if (Build.VERSION.SDK_INT <= 19) {
            a.c cVar = this.t;
            cVar.f19105d = rect.top;
            cVar.f19106e = rect.right;
            cVar.f19107f = 0;
            cVar.f19108g = rect.left;
            cVar.f19109h = 0;
            cVar.f19110i = 0;
            cVar.f19111j = rect.bottom;
            cVar.f19112k = 0;
            g.a.b.c("FlutterView", "Updating window insets (fitSystemWindows()):\nStatus bar insets: Top: " + this.t.f19105d + ", Left: " + this.t.f19108g + ", Right: " + this.t.f19106e + "\nKeyboard insets: Bottom: " + this.t.f19111j + ", Left: " + this.t.f19112k + ", Right: " + this.t.f19110i);
            c();
            return true;
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.View
    @Nullable
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        io.flutter.view.c cVar = this.s;
        if (cVar == null || !cVar.a()) {
            return null;
        }
        return this.s;
    }

    @Nullable
    @VisibleForTesting
    public io.flutter.embedding.engine.a getAttachedFlutterEngine() {
        return this.f18956l;
    }

    @Override // g.a.c.c.a.c
    @NonNull
    @RequiresApi(24)
    @TargetApi(24)
    public PointerIcon getSystemPointerIcon(int i2) {
        return PointerIcon.getSystemIcon(getContext(), i2);
    }

    public boolean hasRenderedFirstFrame() {
        return this.f18955k;
    }

    @VisibleForTesting
    public boolean isAttachedToFlutterEngine() {
        io.flutter.embedding.engine.a aVar = this.f18956l;
        return aVar != null && aVar.m() == this.f18952h.getAttachedRenderer();
    }

    @Override // android.view.View
    @NonNull
    @SuppressLint({"InlinedApi", "NewApi"})
    @RequiresApi(20)
    @TargetApi(20)
    public final WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        int a2;
        WindowInsets onApplyWindowInsets = super.onApplyWindowInsets(windowInsets);
        if (Build.VERSION.SDK_INT == 29) {
            Insets systemGestureInsets = windowInsets.getSystemGestureInsets();
            a.c cVar = this.t;
            cVar.f19113l = systemGestureInsets.top;
            cVar.m = systemGestureInsets.right;
            cVar.n = systemGestureInsets.bottom;
            cVar.o = systemGestureInsets.left;
        }
        boolean z = (getWindowSystemUiVisibility() & 4) == 0;
        boolean z2 = (getWindowSystemUiVisibility() & 2) == 0;
        if (Build.VERSION.SDK_INT >= 30) {
            int navigationBars = z2 ? 0 | WindowInsets.Type.navigationBars() : 0;
            if (z) {
                navigationBars |= WindowInsets.Type.statusBars();
            }
            Insets insets = windowInsets.getInsets(navigationBars);
            a.c cVar2 = this.t;
            cVar2.f19105d = insets.top;
            cVar2.f19106e = insets.right;
            cVar2.f19107f = insets.bottom;
            cVar2.f19108g = insets.left;
            Insets insets2 = windowInsets.getInsets(WindowInsets.Type.ime());
            a.c cVar3 = this.t;
            cVar3.f19109h = insets2.top;
            cVar3.f19110i = insets2.right;
            cVar3.f19111j = insets2.bottom;
            cVar3.f19112k = insets2.left;
            Insets insets3 = windowInsets.getInsets(WindowInsets.Type.systemGestures());
            a.c cVar4 = this.t;
            cVar4.f19113l = insets3.top;
            cVar4.m = insets3.right;
            cVar4.n = insets3.bottom;
            cVar4.o = insets3.left;
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                Insets waterfallInsets = displayCutout.getWaterfallInsets();
                a.c cVar5 = this.t;
                cVar5.f19105d = Math.max(Math.max(cVar5.f19105d, waterfallInsets.top), displayCutout.getSafeInsetTop());
                a.c cVar6 = this.t;
                cVar6.f19106e = Math.max(Math.max(cVar6.f19106e, waterfallInsets.right), displayCutout.getSafeInsetRight());
                a.c cVar7 = this.t;
                cVar7.f19107f = Math.max(Math.max(cVar7.f19107f, waterfallInsets.bottom), displayCutout.getSafeInsetBottom());
                a.c cVar8 = this.t;
                cVar8.f19108g = Math.max(Math.max(cVar8.f19108g, waterfallInsets.left), displayCutout.getSafeInsetLeft());
            }
        } else {
            g gVar = g.NONE;
            if (!z2) {
                gVar = a();
            }
            this.t.f19105d = z ? windowInsets.getSystemWindowInsetTop() : 0;
            this.t.f19106e = (gVar == g.RIGHT || gVar == g.BOTH) ? 0 : windowInsets.getSystemWindowInsetRight();
            a.c cVar9 = this.t;
            cVar9.f19107f = 0;
            cVar9.f19108g = (gVar == g.LEFT || gVar == g.BOTH) ? 0 : windowInsets.getSystemWindowInsetLeft();
            a.c cVar10 = this.t;
            cVar10.f19109h = 0;
            cVar10.f19110i = 0;
            if (z2) {
                a2 = windowInsets.getSystemWindowInsetBottom();
            } else {
                a2 = a(windowInsets);
            }
            cVar10.f19111j = a2;
            this.t.f19112k = 0;
        }
        g.a.b.c("FlutterView", "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: " + this.t.f19105d + ", Left: " + this.t.f19108g + ", Right: " + this.t.f19106e + "\nKeyboard insets: Bottom: " + this.t.f19111j + ", Left: " + this.t.f19112k + ", Right: " + this.t.f19110i + "System Gesture Insets - Left: " + this.t.o + ", Top: " + this.t.f19113l + ", Right: " + this.t.m + ", Bottom: " + this.t.f19111j);
        c();
        return onApplyWindowInsets;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f18956l != null) {
            g.a.b.c("FlutterView", "Configuration changed. Sending locales and user settings to Flutter.");
            this.p.a(configuration);
            sendUserSettingsToFlutter();
        }
    }

    @Override // android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        if (!isAttachedToFlutterEngine()) {
            return super.onCreateInputConnection(editorInfo);
        }
        return this.o.a(this, editorInfo);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(@NonNull MotionEvent motionEvent) {
        if (isAttachedToFlutterEngine() && this.r.a(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (!isAttachedToFlutterEngine()) {
            return super.onHoverEvent(motionEvent);
        }
        return this.s.a(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, @NonNull KeyEvent keyEvent) {
        if (isAttachedToFlutterEngine()) {
            return this.q.a(keyEvent) || super.onKeyDown(i2, keyEvent);
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, @NonNull KeyEvent keyEvent) {
        if (isAttachedToFlutterEngine()) {
            return this.q.b(keyEvent) || super.onKeyUp(i2, keyEvent);
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i2) {
        super.onProvideAutofillVirtualStructure(viewStructure, i2);
        this.o.a(viewStructure, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        g.a.b.c("FlutterView", "Size changed. Sending Flutter new viewport metrics. FlutterView was " + i4 + " x " + i5 + ", it is now " + i2 + " x " + i3);
        a.c cVar = this.t;
        cVar.f19103b = i2;
        cVar.f19104c = i3;
        c();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isAttachedToFlutterEngine()) {
            return super.onTouchEvent(motionEvent);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            requestUnbufferedDispatch(motionEvent);
        }
        return this.r.b(motionEvent);
    }

    @VisibleForTesting
    public void removeFlutterEngineAttachmentListener(@NonNull d dVar) {
        this.m.remove(dVar);
    }

    public void removeOnFirstFrameRenderedListener(@NonNull io.flutter.embedding.engine.h.b bVar) {
        this.f18954j.remove(bVar);
    }

    public void revertImageView(@NonNull Runnable runnable) {
        FlutterImageView flutterImageView = this.f18951g;
        if (flutterImageView == null) {
            g.a.b.c("FlutterView", "Tried to revert the image view, but no image view is used.");
            return;
        }
        io.flutter.embedding.engine.h.c cVar = this.f18953i;
        if (cVar == null) {
            g.a.b.c("FlutterView", "Tried to revert the image view, but no previous surface was used.");
            return;
        }
        this.f18952h = cVar;
        this.f18953i = null;
        io.flutter.embedding.engine.a aVar = this.f18956l;
        if (aVar == null) {
            flutterImageView.detachFromRenderer();
            runnable.run();
            return;
        }
        io.flutter.embedding.engine.h.a m = aVar.m();
        if (m == null) {
            this.f18951g.detachFromRenderer();
            runnable.run();
        } else {
            this.f18952h.attachToRenderer(m);
            m.a(new c(m, runnable));
        }
    }

    @VisibleForTesting
    void sendUserSettingsToFlutter() {
        k.b bVar = (getResources().getConfiguration().uiMode & 48) == 32 ? k.b.dark : k.b.light;
        k.a a2 = this.f18956l.o().a();
        a2.a(getResources().getConfiguration().fontScale);
        a2.a(DateFormat.is24HourFormat(getContext()));
        a2.a(bVar);
        a2.a();
    }

    @Deprecated
    public FlutterView(@NonNull Context context, @NonNull e eVar) {
        super(context, null);
        this.f18954j = new HashSet();
        this.m = new HashSet();
        this.t = new a.c();
        this.u = new a();
        this.v = new b();
        if (eVar == e.surface) {
            this.f18949e = new FlutterSurfaceView(context);
            this.f18952h = this.f18949e;
        } else if (eVar == e.texture) {
            this.f18950f = new FlutterTextureView(context);
            this.f18952h = this.f18950f;
        } else {
            throw new IllegalArgumentException(String.format("RenderMode not supported with this constructor: %s", eVar));
        }
        b();
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
        if (!this.f18956l.m().b()) {
            if (!z && !z2) {
                z3 = true;
            }
            setWillNotDraw(z3);
            return;
        }
        setWillNotDraw(false);
    }

    @Deprecated
    public FlutterView(@NonNull Context context, @NonNull f fVar) {
        this(context, (AttributeSet) null, new FlutterSurfaceView(context, fVar == f.transparent));
    }

    public FlutterView(@NonNull Context context, @NonNull FlutterSurfaceView flutterSurfaceView) {
        this(context, (AttributeSet) null, flutterSurfaceView);
    }

    public FlutterView(@NonNull Context context, @NonNull FlutterTextureView flutterTextureView) {
        this(context, (AttributeSet) null, flutterTextureView);
    }

    @TargetApi(19)
    public FlutterView(@NonNull Context context, @NonNull FlutterImageView flutterImageView) {
        this(context, (AttributeSet) null, flutterImageView);
    }

    public FlutterView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, new FlutterSurfaceView(context));
    }

    @Deprecated
    public FlutterView(@NonNull Context context, @NonNull e eVar, @NonNull f fVar) {
        super(context, null);
        this.f18954j = new HashSet();
        this.m = new HashSet();
        this.t = new a.c();
        this.u = new a();
        this.v = new b();
        if (eVar == e.surface) {
            this.f18949e = new FlutterSurfaceView(context, fVar == f.transparent);
            this.f18952h = this.f18949e;
        } else if (eVar == e.texture) {
            this.f18950f = new FlutterTextureView(context);
            this.f18952h = this.f18950f;
        } else {
            throw new IllegalArgumentException(String.format("RenderMode not supported with this constructor: %s", eVar));
        }
        b();
    }

    private FlutterView(@NonNull Context context, @Nullable AttributeSet attributeSet, @NonNull FlutterSurfaceView flutterSurfaceView) {
        super(context, attributeSet);
        this.f18954j = new HashSet();
        this.m = new HashSet();
        this.t = new a.c();
        this.u = new a();
        this.v = new b();
        this.f18949e = flutterSurfaceView;
        this.f18952h = flutterSurfaceView;
        b();
    }

    private FlutterView(@NonNull Context context, @Nullable AttributeSet attributeSet, @NonNull FlutterTextureView flutterTextureView) {
        super(context, attributeSet);
        this.f18954j = new HashSet();
        this.m = new HashSet();
        this.t = new a.c();
        this.u = new a();
        this.v = new b();
        this.f18950f = flutterTextureView;
        this.f18952h = flutterTextureView;
        b();
    }

    @TargetApi(19)
    private FlutterView(@NonNull Context context, @Nullable AttributeSet attributeSet, @NonNull FlutterImageView flutterImageView) {
        super(context, attributeSet);
        this.f18954j = new HashSet();
        this.m = new HashSet();
        this.t = new a.c();
        this.u = new a();
        this.v = new b();
        this.f18951g = flutterImageView;
        this.f18952h = flutterImageView;
        b();
    }
}
