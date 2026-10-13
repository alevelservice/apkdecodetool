package io.flutter.plugin.platform;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import io.flutter.embedding.android.AndroidTouchProcessor;
import io.flutter.embedding.android.FlutterImageView;
import io.flutter.embedding.android.FlutterView;
import io.flutter.embedding.android.f;
import io.flutter.embedding.engine.FlutterOverlaySurface;
import io.flutter.embedding.engine.i.i;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorView;
import io.flutter.embedding.engine.mutatorsstack.FlutterMutatorsStack;
import io.flutter.plugin.platform.k;
import io.flutter.view.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: PlatformViewsController.java */
/* loaded from: classes2.dex */
public class k implements j {

    /* renamed from: b, reason: collision with root package name */
    private AndroidTouchProcessor f19301b;

    /* renamed from: c, reason: collision with root package name */
    private Context f19302c;

    /* renamed from: d, reason: collision with root package name */
    private View f19303d;

    /* renamed from: e, reason: collision with root package name */
    private io.flutter.view.g f19304e;

    /* renamed from: f, reason: collision with root package name */
    private io.flutter.plugin.editing.c f19305f;

    /* renamed from: g, reason: collision with root package name */
    private io.flutter.embedding.engine.i.i f19306g;
    private int n = 0;
    private boolean o = false;
    private final i.e s = new a();

    /* renamed from: a, reason: collision with root package name */
    private final i f19300a = new i();

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    final HashMap<Integer, l> f19308i = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private final c f19307h = new c();

    /* renamed from: j, reason: collision with root package name */
    private final HashMap<Context, View> f19309j = new HashMap<>();
    private final SparseArray<FlutterImageView> m = new SparseArray<>();
    private HashSet<Integer> p = new HashSet<>();
    private HashSet<Integer> q = new HashSet<>();

    /* renamed from: k, reason: collision with root package name */
    private final SparseArray<f> f19310k = new SparseArray<>();

    /* renamed from: l, reason: collision with root package name */
    private final SparseArray<FlutterMutatorView> f19311l = new SparseArray<>();
    private final io.flutter.embedding.android.f r = io.flutter.embedding.android.f.a();

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(int i2) {
        return i2 == 0 || i2 == 1;
    }

    private void n() {
        Iterator<l> it = this.f19308i.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f19308i.clear();
        while (this.f19310k.size() > 0) {
            this.s.a(this.f19310k.keyAt(0));
        }
    }

    private float o() {
        return this.f19302c.getResources().getDisplayMetrics().density;
    }

    private void p() {
        if (this.o) {
            return;
        }
        ((FlutterView) this.f19303d).convertToImageView();
        this.o = true;
    }

    public void i() {
    }

    public void k() {
        n();
    }

    public void l() {
        FlutterView flutterView = (FlutterView) this.f19303d;
        boolean z = false;
        if (this.o && this.q.isEmpty()) {
            this.o = false;
            flutterView.revertImageView(new Runnable() { // from class: io.flutter.plugin.platform.b
                @Override // java.lang.Runnable
                public final void run() {
                    k.this.h();
                }
            });
        } else {
            if (this.o && flutterView.acquireLatestImageViewFrame()) {
                z = true;
            }
            a(z);
        }
    }

    public void m() {
        n();
    }

    public void c() {
        for (int i2 = 0; i2 < this.m.size(); i2++) {
            this.m.keyAt(i2);
            FlutterImageView valueAt = this.m.valueAt(i2);
            valueAt.detachFromRenderer();
            ((FlutterView) this.f19303d).removeView(valueAt);
        }
        this.m.clear();
    }

    @UiThread
    public void d() {
        this.f19306g.a((i.e) null);
        this.f19306g = null;
        this.f19302c = null;
        this.f19304e = null;
    }

    public void e() {
        this.f19303d = null;
        Iterator<l> it = this.f19308i.values().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    public void f() {
        this.f19305f = null;
    }

    public h g() {
        return this.f19300a;
    }

    public /* synthetic */ void h() {
        a(false);
    }

    public void j() {
        this.p.clear();
        this.q.clear();
    }

    public boolean b(@Nullable View view) {
        if (view == null || !this.f19309j.containsKey(view.getContext())) {
            return false;
        }
        View view2 = this.f19309j.get(view.getContext());
        if (view2 == view) {
            return true;
        }
        return view2.checkInputConnectionProxy(view);
    }

    @VisibleForTesting
    public MotionEvent a(float f2, i.d dVar, boolean z) {
        MotionEvent a2 = this.r.a(f.a.a(dVar.p));
        MotionEvent.PointerProperties[] pointerPropertiesArr = (MotionEvent.PointerProperties[]) b(dVar.f19180f).toArray(new MotionEvent.PointerProperties[dVar.f19179e]);
        MotionEvent.PointerCoords[] pointerCoordsArr = (MotionEvent.PointerCoords[]) b(dVar.f19181g, f2).toArray(new MotionEvent.PointerCoords[dVar.f19179e]);
        if (!z && a2 != null) {
            return MotionEvent.obtain(a2.getDownTime(), a2.getEventTime(), a2.getAction(), dVar.f19179e, pointerPropertiesArr, pointerCoordsArr, a2.getMetaState(), a2.getButtonState(), a2.getXPrecision(), a2.getYPrecision(), a2.getDeviceId(), a2.getEdgeFlags(), a2.getSource(), a2.getFlags());
        }
        return MotionEvent.obtain(dVar.f19176b.longValue(), dVar.f19177c.longValue(), dVar.f19178d, dVar.f19179e, pointerPropertiesArr, pointerCoordsArr, dVar.f19182h, dVar.f19183i, dVar.f19184j, dVar.f19185k, dVar.f19186l, dVar.m, dVar.n, dVar.o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlatformViewsController.java */
    /* loaded from: classes2.dex */
    public class a implements i.e {

        /* compiled from: PlatformViewsController.java */
        /* renamed from: io.flutter.plugin.platform.k$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0241a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ l f19313e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ Runnable f19314f;

            RunnableC0241a(l lVar, Runnable runnable) {
                this.f19313e = lVar;
                this.f19314f = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.b(this.f19313e);
                this.f19314f.run();
            }
        }

        a() {
        }

        private void d(int i2) {
            if (Build.VERSION.SDK_INT >= i2) {
                return;
            }
            throw new IllegalStateException("Trying to use platform views with API " + Build.VERSION.SDK_INT + ", required API level is: " + i2);
        }

        @Override // io.flutter.embedding.engine.i.i.e
        public void a(int i2) {
            f fVar = (f) k.this.f19310k.get(i2);
            FlutterMutatorView flutterMutatorView = (FlutterMutatorView) k.this.f19311l.get(i2);
            if (fVar != null) {
                if (flutterMutatorView != null) {
                    flutterMutatorView.removeView(fVar.getView());
                }
                k.this.f19310k.remove(i2);
                fVar.dispose();
            }
            if (flutterMutatorView != null) {
                ((ViewGroup) flutterMutatorView.getParent()).removeView(flutterMutatorView);
                k.this.f19311l.remove(i2);
            }
        }

        @Override // io.flutter.embedding.engine.i.i.e
        public void b(@NonNull i.b bVar) {
            d(19);
            if (k.c(bVar.f19170e)) {
                g a2 = k.this.f19300a.a(bVar.f19167b);
                if (a2 != null) {
                    k.this.f19310k.put(bVar.f19166a, a2.a(k.this.f19302c, bVar.f19166a, bVar.f19171f != null ? a2.a().a(bVar.f19171f) : null));
                    return;
                }
                throw new IllegalStateException("Trying to create a platform view of unregistered type: " + bVar.f19167b);
            }
            throw new IllegalStateException("Trying to create a view with unknown direction value: " + bVar.f19170e + "(view id: " + bVar.f19166a + ")");
        }

        @Override // io.flutter.embedding.engine.i.i.e
        public void c(int i2) {
            d(20);
            k.this.f19308i.get(Integer.valueOf(i2)).b().clearFocus();
        }

        @Override // io.flutter.embedding.engine.i.i.e
        @TargetApi(17)
        public long a(@NonNull final i.b bVar) {
            d(20);
            if (k.c(bVar.f19170e)) {
                if (!k.this.f19308i.containsKey(Integer.valueOf(bVar.f19166a))) {
                    g a2 = k.this.f19300a.a(bVar.f19167b);
                    if (a2 != null) {
                        Object a3 = bVar.f19171f != null ? a2.a().a(bVar.f19171f) : null;
                        int a4 = k.this.a(bVar.f19168c);
                        int a5 = k.this.a(bVar.f19169d);
                        k.this.a(a4, a5);
                        g.a createSurfaceTexture = k.this.f19304e.createSurfaceTexture();
                        l a6 = l.a(k.this.f19302c, k.this.f19307h, a2, createSurfaceTexture, a4, a5, bVar.f19166a, a3, new View.OnFocusChangeListener() { // from class: io.flutter.plugin.platform.a
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                k.a.this.a(bVar, view, z);
                            }
                        });
                        if (a6 != null) {
                            if (k.this.f19303d != null) {
                                a6.a(k.this.f19303d);
                            }
                            k.this.f19308i.put(Integer.valueOf(bVar.f19166a), a6);
                            View b2 = a6.b();
                            b2.setLayoutDirection(bVar.f19170e);
                            k.this.f19309j.put(b2.getContext(), b2);
                            return createSurfaceTexture.id();
                        }
                        throw new IllegalStateException("Failed creating virtual display for a " + bVar.f19167b + " with id: " + bVar.f19166a);
                    }
                    throw new IllegalStateException("Trying to create a platform view of unregistered type: " + bVar.f19167b);
                }
                throw new IllegalStateException("Trying to create an already created platform view, view id: " + bVar.f19166a);
            }
            throw new IllegalStateException("Trying to create a view with unknown direction value: " + bVar.f19170e + "(view id: " + bVar.f19166a + ")");
        }

        @Override // io.flutter.embedding.engine.i.i.e
        public void b(int i2) {
            d(20);
            l lVar = k.this.f19308i.get(Integer.valueOf(i2));
            if (lVar != null) {
                if (k.this.f19305f != null) {
                    k.this.f19305f.a(i2);
                }
                k.this.f19309j.remove(lVar.b().getContext());
                lVar.a();
                k.this.f19308i.remove(Integer.valueOf(i2));
                return;
            }
            throw new IllegalStateException("Trying to dispose a platform view with unknown id: " + i2);
        }

        public /* synthetic */ void a(i.b bVar, View view, boolean z) {
            if (z) {
                k.this.f19306g.a(bVar.f19166a);
            }
        }

        @Override // io.flutter.embedding.engine.i.i.e
        public void a(@NonNull i.c cVar, @NonNull Runnable runnable) {
            d(20);
            l lVar = k.this.f19308i.get(Integer.valueOf(cVar.f19172a));
            if (lVar != null) {
                int a2 = k.this.a(cVar.f19173b);
                int a3 = k.this.a(cVar.f19174c);
                k.this.a(a2, a3);
                k.this.a(lVar);
                lVar.a(a2, a3, new RunnableC0241a(lVar, runnable));
                return;
            }
            throw new IllegalStateException("Trying to resize a platform view with unknown id: " + cVar.f19172a);
        }

        @Override // io.flutter.embedding.engine.i.i.e
        public void a(@NonNull i.d dVar) {
            int i2 = dVar.f19175a;
            float f2 = k.this.f19302c.getResources().getDisplayMetrics().density;
            d(20);
            if (!k.this.f19308i.containsKey(Integer.valueOf(i2))) {
                if (k.this.f19310k.get(i2) != null) {
                    MotionEvent a2 = k.this.a(f2, dVar, false);
                    View view = ((f) k.this.f19310k.get(dVar.f19175a)).getView();
                    if (view != null) {
                        view.dispatchTouchEvent(a2);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("Sending touch to an unknown view with id: " + i2);
            }
            k.this.f19308i.get(Integer.valueOf(dVar.f19175a)).a(k.this.a(f2, dVar, true));
        }

        @Override // io.flutter.embedding.engine.i.i.e
        @TargetApi(17)
        public void a(int i2, int i3) {
            if (k.c(i3)) {
                d(20);
                View b2 = k.this.f19308i.get(Integer.valueOf(i2)).b();
                if (b2 != null) {
                    b2.setLayoutDirection(i3);
                    return;
                }
                throw new IllegalStateException("Sending touch to an unknown view with id: " + i3);
            }
            throw new IllegalStateException("Trying to set unknown direction value: " + i3 + "(view id: " + i2 + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@NonNull l lVar) {
        io.flutter.plugin.editing.c cVar = this.f19305f;
        if (cVar == null) {
            return;
        }
        cVar.e();
        lVar.e();
    }

    private static List<MotionEvent.PointerProperties> b(Object obj) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        return arrayList;
    }

    private static List<MotionEvent.PointerCoords> b(Object obj, float f2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next(), f2));
        }
        return arrayList;
    }

    @TargetApi(19)
    public FlutterOverlaySurface b() {
        return a(new FlutterImageView(this.f19303d.getContext(), this.f19303d.getWidth(), this.f19303d.getHeight(), FlutterImageView.b.overlay));
    }

    public void a(Context context, io.flutter.view.g gVar, @NonNull io.flutter.embedding.engine.e.a aVar) {
        if (this.f19302c == null) {
            this.f19302c = context;
            this.f19304e = gVar;
            this.f19306g = new io.flutter.embedding.engine.i.i(aVar);
            this.f19306g.a(this.s);
            return;
        }
        throw new AssertionError("A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached.");
    }

    public void a(@NonNull View view) {
        this.f19303d = view;
        Iterator<l> it = this.f19308i.values().iterator();
        while (it.hasNext()) {
            it.next().a(view);
        }
    }

    @Override // io.flutter.plugin.platform.j
    public void a(io.flutter.view.c cVar) {
        this.f19307h.a(cVar);
    }

    @Override // io.flutter.plugin.platform.j
    public void a() {
        this.f19307h.a(null);
    }

    public void a(io.flutter.plugin.editing.c cVar) {
        this.f19305f = cVar;
    }

    @Override // io.flutter.plugin.platform.j
    public View a(Integer num) {
        if (this.f19310k.get(num.intValue()) != null) {
            return this.f19310k.get(num.intValue()).getView();
        }
        l lVar = this.f19308i.get(num);
        if (lVar == null) {
            return null;
        }
        return lVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull l lVar) {
        io.flutter.plugin.editing.c cVar = this.f19305f;
        if (cVar == null) {
            return;
        }
        cVar.d();
        lVar.d();
    }

    private static MotionEvent.PointerProperties a(Object obj) {
        List list = (List) obj;
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = ((Integer) list.get(0)).intValue();
        pointerProperties.toolType = ((Integer) list.get(1)).intValue();
        return pointerProperties;
    }

    private static MotionEvent.PointerCoords a(Object obj, float f2) {
        List list = (List) obj;
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.orientation = (float) ((Double) list.get(0)).doubleValue();
        pointerCoords.pressure = (float) ((Double) list.get(1)).doubleValue();
        pointerCoords.size = (float) ((Double) list.get(2)).doubleValue();
        pointerCoords.toolMajor = ((float) ((Double) list.get(3)).doubleValue()) * f2;
        pointerCoords.toolMinor = ((float) ((Double) list.get(4)).doubleValue()) * f2;
        pointerCoords.touchMajor = ((float) ((Double) list.get(5)).doubleValue()) * f2;
        pointerCoords.touchMinor = ((float) ((Double) list.get(6)).doubleValue()) * f2;
        pointerCoords.x = ((float) ((Double) list.get(7)).doubleValue()) * f2;
        pointerCoords.y = ((float) ((Double) list.get(8)).doubleValue()) * f2;
        return pointerCoords;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        DisplayMetrics displayMetrics = this.f19302c.getResources().getDisplayMetrics();
        if (i3 > displayMetrics.heightPixels || i2 > displayMetrics.widthPixels) {
            String str = "Creating a virtual display of size: [" + i2 + ", " + i3 + "] may result in problems(https://github.com/flutter/flutter/issues/2897).It is larger than the device screen size: [" + displayMetrics.widthPixels + ", " + displayMetrics.heightPixels + "].";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(double d2) {
        double o = o();
        Double.isNaN(o);
        return (int) Math.round(d2 * o);
    }

    @VisibleForTesting
    void a(int i2) {
        f fVar = this.f19310k.get(i2);
        if (fVar != null) {
            if (this.f19311l.get(i2) != null) {
                return;
            }
            if (fVar.getView() != null) {
                if (fVar.getView().getParent() == null) {
                    Context context = this.f19302c;
                    FlutterMutatorView flutterMutatorView = new FlutterMutatorView(context, context.getResources().getDisplayMetrics().density, this.f19301b);
                    this.f19311l.put(i2, flutterMutatorView);
                    flutterMutatorView.addView(fVar.getView());
                    ((FlutterView) this.f19303d).addView(flutterMutatorView);
                    return;
                }
                throw new IllegalStateException("The Android view returned from PlatformView#getView() was already added to a parent view.");
            }
            throw new IllegalStateException("PlatformView#getView() returned null, but an Android view reference was expected.");
        }
        throw new IllegalStateException("Platform view hasn't been initialized from the platform view channel.");
    }

    public void a(io.flutter.embedding.engine.h.a aVar) {
        this.f19301b = new AndroidTouchProcessor(aVar, true);
    }

    public void a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, FlutterMutatorsStack flutterMutatorsStack) {
        p();
        a(i2);
        FlutterMutatorView flutterMutatorView = this.f19311l.get(i2);
        flutterMutatorView.readyToDisplay(flutterMutatorsStack, i3, i4, i5, i6);
        flutterMutatorView.setVisibility(0);
        flutterMutatorView.bringToFront();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i7, i8);
        View view = this.f19310k.get(i2).getView();
        if (view != null) {
            view.setLayoutParams(layoutParams);
            view.bringToFront();
        }
        this.q.add(Integer.valueOf(i2));
    }

    public void a(int i2, int i3, int i4, int i5, int i6) {
        p();
        FlutterImageView flutterImageView = this.m.get(i2);
        if (flutterImageView.getParent() == null) {
            ((FlutterView) this.f19303d).addView(flutterImageView);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i6);
        layoutParams.leftMargin = i3;
        layoutParams.topMargin = i4;
        flutterImageView.setLayoutParams(layoutParams);
        flutterImageView.setVisibility(0);
        flutterImageView.bringToFront();
        this.p.add(Integer.valueOf(i2));
    }

    private void a(boolean z) {
        boolean z2 = z;
        for (int i2 = 0; i2 < this.m.size(); i2++) {
            int keyAt = this.m.keyAt(i2);
            FlutterImageView valueAt = this.m.valueAt(i2);
            if (this.p.contains(Integer.valueOf(keyAt))) {
                ((FlutterView) this.f19303d).attachOverlaySurfaceToRender(valueAt);
                z2 &= valueAt.acquireLatestImage();
            } else {
                if (!this.o) {
                    valueAt.detachFromRenderer();
                }
                valueAt.setVisibility(8);
            }
        }
        for (int i3 = 0; i3 < this.f19311l.size(); i3++) {
            int keyAt2 = this.f19311l.keyAt(i3);
            FlutterMutatorView flutterMutatorView = this.f19311l.get(keyAt2);
            if (z2 && this.q.contains(Integer.valueOf(keyAt2))) {
                flutterMutatorView.setVisibility(0);
            } else {
                flutterMutatorView.setVisibility(8);
            }
        }
    }

    @TargetApi(19)
    @VisibleForTesting
    public FlutterOverlaySurface a(@NonNull FlutterImageView flutterImageView) {
        int i2 = this.n;
        this.n = i2 + 1;
        this.m.put(i2, flutterImageView);
        return new FlutterOverlaySurface(i2, flutterImageView.getSurface());
    }
}
