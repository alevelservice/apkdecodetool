package io.flutter.plugin.platform;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import io.flutter.plugin.platform.SingleViewPresentation;
import io.flutter.view.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VirtualDisplayController.java */
@TargetApi(20)
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private final Context f19316a;

    /* renamed from: b, reason: collision with root package name */
    private final c f19317b;

    /* renamed from: c, reason: collision with root package name */
    private final int f19318c;

    /* renamed from: d, reason: collision with root package name */
    private final g.a f19319d;

    /* renamed from: e, reason: collision with root package name */
    private final View.OnFocusChangeListener f19320e;

    /* renamed from: f, reason: collision with root package name */
    private VirtualDisplay f19321f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    SingleViewPresentation f19322g;

    /* renamed from: h, reason: collision with root package name */
    private Surface f19323h;

    /* compiled from: VirtualDisplayController.java */
    /* loaded from: classes2.dex */
    class a implements View.OnAttachStateChangeListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f19324e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Runnable f19325f;

        /* compiled from: VirtualDisplayController.java */
        /* renamed from: io.flutter.plugin.platform.l$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0242a implements Runnable {
            RunnableC0242a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.f19324e.postDelayed(aVar.f19325f, 128L);
            }
        }

        a(l lVar, View view, Runnable runnable) {
            this.f19324e = view;
            this.f19325f = runnable;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            b.a(this.f19324e, new RunnableC0242a());
            this.f19324e.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: VirtualDisplayController.java */
    @TargetApi(16)
    /* loaded from: classes2.dex */
    static class b implements ViewTreeObserver.OnDrawListener {

        /* renamed from: a, reason: collision with root package name */
        final View f19327a;

        /* renamed from: b, reason: collision with root package name */
        Runnable f19328b;

        /* compiled from: VirtualDisplayController.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f19327a.getViewTreeObserver().removeOnDrawListener(b.this);
            }
        }

        b(View view, Runnable runnable) {
            this.f19327a = view;
            this.f19328b = runnable;
        }

        static void a(View view, Runnable runnable) {
            view.getViewTreeObserver().addOnDrawListener(new b(view, runnable));
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            Runnable runnable = this.f19328b;
            if (runnable == null) {
                return;
            }
            runnable.run();
            this.f19328b = null;
            this.f19327a.post(new a());
        }
    }

    private l(Context context, c cVar, VirtualDisplay virtualDisplay, g gVar, Surface surface, g.a aVar, View.OnFocusChangeListener onFocusChangeListener, int i2, Object obj) {
        this.f19316a = context;
        this.f19317b = cVar;
        this.f19319d = aVar;
        this.f19320e = onFocusChangeListener;
        this.f19323h = surface;
        this.f19321f = virtualDisplay;
        this.f19318c = context.getResources().getDisplayMetrics().densityDpi;
        this.f19322g = new SingleViewPresentation(context, this.f19321f.getDisplay(), gVar, cVar, i2, obj, onFocusChangeListener);
        this.f19322g.show();
    }

    public static l a(Context context, c cVar, g gVar, g.a aVar, int i2, int i3, int i4, Object obj, View.OnFocusChangeListener onFocusChangeListener) {
        aVar.b().setDefaultBufferSize(i2, i3);
        Surface surface = new Surface(aVar.b());
        VirtualDisplay createVirtualDisplay = ((DisplayManager) context.getSystemService(Constants$ScionAnalytics$MessageType.DISPLAY_NOTIFICATION)).createVirtualDisplay("flutter-vd", i2, i3, context.getResources().getDisplayMetrics().densityDpi, surface, 0);
        if (createVirtualDisplay == null) {
            return null;
        }
        return new l(context, cVar, createVirtualDisplay, gVar, surface, aVar, onFocusChangeListener, i4, obj);
    }

    public View b() {
        SingleViewPresentation singleViewPresentation = this.f19322g;
        if (singleViewPresentation == null) {
            return null;
        }
        return singleViewPresentation.getView().getView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        SingleViewPresentation singleViewPresentation = this.f19322g;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.f19322g.getView().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        SingleViewPresentation singleViewPresentation = this.f19322g;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.f19322g.getView().b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        SingleViewPresentation singleViewPresentation = this.f19322g;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.f19322g.getView().c();
    }

    public void a(int i2, int i3, Runnable runnable) {
        boolean isFocused = b().isFocused();
        SingleViewPresentation.e detachState = this.f19322g.detachState();
        this.f19321f.setSurface(null);
        this.f19321f.release();
        this.f19319d.b().setDefaultBufferSize(i2, i3);
        this.f19321f = ((DisplayManager) this.f19316a.getSystemService(Constants$ScionAnalytics$MessageType.DISPLAY_NOTIFICATION)).createVirtualDisplay("flutter-vd", i2, i3, this.f19318c, this.f19323h, 0);
        View b2 = b();
        b2.addOnAttachStateChangeListener(new a(this, b2, runnable));
        SingleViewPresentation singleViewPresentation = new SingleViewPresentation(this.f19316a, this.f19321f.getDisplay(), this.f19317b, detachState, this.f19320e, isFocused);
        singleViewPresentation.show();
        this.f19322g.cancel();
        this.f19322g = singleViewPresentation;
    }

    public void a() {
        f view = this.f19322g.getView();
        this.f19322g.cancel();
        this.f19322g.detachState();
        view.dispose();
        this.f19321f.release();
        this.f19319d.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull View view) {
        SingleViewPresentation singleViewPresentation = this.f19322g;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.f19322g.getView().a(view);
    }

    public void a(MotionEvent motionEvent) {
        SingleViewPresentation singleViewPresentation = this.f19322g;
        if (singleViewPresentation == null) {
            return;
        }
        singleViewPresentation.dispatchTouchEvent(motionEvent);
    }
}
