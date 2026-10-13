package com.mapbox.mapboxsdk.maps;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.android.gestures.c;
import com.mapbox.android.gestures.f;
import com.mapbox.android.gestures.k;
import com.mapbox.android.gestures.l;
import com.mapbox.android.gestures.n;
import com.mapbox.android.gestures.o;
import com.mapbox.mapboxsdk.maps.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapGestureDetector.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    private final a0 f16062a;

    /* renamed from: b, reason: collision with root package name */
    private final w f16063b;

    /* renamed from: c, reason: collision with root package name */
    private final b0 f16064c;

    /* renamed from: d, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.b f16065d;

    /* renamed from: e, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.e f16066e;

    @Nullable
    private PointF m;
    private AndroidGesturesManager o;
    private Animator p;
    private Animator q;
    private boolean t;

    /* renamed from: f, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.o> f16067f = new CopyOnWriteArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.p> f16068g = new CopyOnWriteArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.i> f16069h = new CopyOnWriteArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.r> f16070i = new CopyOnWriteArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.u> f16071j = new CopyOnWriteArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.v> f16072k = new CopyOnWriteArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.w> f16073l = new CopyOnWriteArrayList<>();

    @NonNull
    private PointF n = new PointF();
    private final List<Animator> r = new ArrayList();

    @NonNull
    private Handler s = new Handler();

    @NonNull
    private final Runnable u = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ PointF f16075e;

        b(PointF pointF) {
            this.f16075e = pointF;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            l.this.f16062a.a(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f16075e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            l.this.f16062a.a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.this.e();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            l.this.f16062a.a();
            l.this.f16066e.c(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public final class d extends c.b {
        private d() {
        }

        @Override // com.mapbox.android.gestures.c.a
        public boolean a(@NonNull com.mapbox.android.gestures.c cVar) {
            if (!l.this.f16064c.M()) {
                return false;
            }
            l.this.d();
            l.this.a(cVar);
            return true;
        }

        @Override // com.mapbox.android.gestures.c.a
        public boolean b(@NonNull com.mapbox.android.gestures.c cVar, float f2, float f3) {
            if (f2 != 0.0f || f3 != 0.0f) {
                l.this.f16066e.c(1);
                if (!l.this.f16064c.E()) {
                    f2 = 0.0f;
                }
                l.this.f16062a.a(-f2, -f3, 0L);
                l.this.c(cVar);
            }
            return true;
        }

        /* synthetic */ d(l lVar, a aVar) {
            this();
        }

        @Override // com.mapbox.android.gestures.c.a
        public void a(@NonNull com.mapbox.android.gestures.c cVar, float f2, float f3) {
            l.this.e();
            l.this.b(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public final class g extends l.b {
        private g() {
        }

        @Override // com.mapbox.android.gestures.l.a
        public boolean a(@NonNull com.mapbox.android.gestures.l lVar) {
            if (!l.this.f16064c.N()) {
                return false;
            }
            l.this.d();
            l.this.o.b().a(false);
            l.this.a(lVar);
            return true;
        }

        @Override // com.mapbox.android.gestures.l.a
        public boolean b(@NonNull com.mapbox.android.gestures.l lVar, float f2, float f3) {
            l.this.f16066e.c(1);
            double g2 = l.this.f16062a.g();
            double d2 = f2 * 0.1f;
            Double.isNaN(d2);
            l.this.f16062a.a(Double.valueOf(com.mapbox.mapboxsdk.utils.f.a(g2 - d2, 0.0d, 60.0d)));
            l.this.c(lVar);
            return true;
        }

        /* synthetic */ g(l lVar, a aVar) {
            this();
        }

        @Override // com.mapbox.android.gestures.l.a
        public void a(@NonNull com.mapbox.android.gestures.l lVar, float f2, float f3) {
            l.this.e();
            l.this.o.b().a(true);
            l.this.b(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public final class h extends n.b {

        /* renamed from: e, reason: collision with root package name */
        private final float f16098e;

        h(float f2) {
            this.f16098e = f2;
        }

        @Override // com.mapbox.android.gestures.n.b, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 0) {
                l.this.n = new PointF(motionEvent.getX(), motionEvent.getY());
                l.this.g();
            }
            if (motionEvent.getActionMasked() == 1) {
                float abs = Math.abs(motionEvent.getX() - l.this.n.x);
                float abs2 = Math.abs(motionEvent.getY() - l.this.n.y);
                float f2 = this.f16098e;
                if (abs > f2 || abs2 > f2 || !l.this.f16064c.O() || !l.this.f16064c.C()) {
                    return false;
                }
                if (l.this.m != null) {
                    l lVar = l.this;
                    lVar.n = lVar.m;
                }
                l lVar2 = l.this;
                lVar2.a(lVar2.n, false);
                return true;
            }
            return super.onDoubleTapEvent(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            double d2;
            if (!l.this.f16064c.M() || !l.this.f16064c.D()) {
                return false;
            }
            float t = l.this.f16064c.t();
            double hypot = Math.hypot(f2 / t, f3 / t);
            if (hypot < 1000.0d) {
                return false;
            }
            double g2 = l.this.f16062a.g();
            double d3 = (g2 != 0.0d ? g2 / 10.0d : 0.0d) + 1.5d;
            double d4 = f2;
            Double.isNaN(d4);
            double d5 = t;
            Double.isNaN(d5);
            double d6 = (d4 / d3) / d5;
            double d7 = f3;
            Double.isNaN(d7);
            Double.isNaN(d5);
            double d8 = (d7 / d3) / d5;
            long j2 = (long) (((hypot / 7.0d) / d3) + 150.0d);
            if (l.this.f16064c.E()) {
                d2 = d6;
            } else {
                if (Math.abs(Math.toDegrees(Math.atan(d6 / d8))) > 75.0d) {
                    return false;
                }
                d2 = 0.0d;
            }
            l.this.f16062a.a();
            l.this.c();
            l.this.f16066e.c(1);
            l.this.f16062a.a(d2, d8, j2);
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            l.this.b(new PointF(motionEvent.getX(), motionEvent.getY()));
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
            if (l.this.f16065d.a(pointF)) {
                return true;
            }
            if (l.this.f16064c.A()) {
                l.this.f16065d.a();
            }
            l.this.a(pointF);
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            l.this.f16062a.a();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public final class i implements f.a {
        private i() {
        }

        @Override // com.mapbox.android.gestures.f.a
        public boolean a(@NonNull com.mapbox.android.gestures.f fVar, int i2) {
            PointF f2;
            if (!l.this.f16064c.O() || i2 != 2) {
                return false;
            }
            l.this.f16062a.a();
            l.this.f16066e.c(1);
            if (l.this.m != null) {
                f2 = l.this.m;
            } else {
                f2 = fVar.f();
            }
            l.this.b(f2, false);
            return true;
        }

        /* synthetic */ i(l lVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(@Nullable Context context, a0 a0Var, w wVar, b0 b0Var, com.mapbox.mapboxsdk.maps.b bVar, com.mapbox.mapboxsdk.maps.e eVar) {
        this.f16065d = bVar;
        this.f16062a = a0Var;
        this.f16063b = wVar;
        this.f16064c = b0Var;
        this.f16066e = eVar;
        if (context != null) {
            a(new AndroidGesturesManager(context), true);
            a(context, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (h()) {
            this.f16062a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (h()) {
            this.f16062a.h();
            this.f16066e.e();
        }
    }

    private void f() {
        if (this.t) {
            this.o.b().a(true);
            this.t = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.o.b().a(false);
        this.t = true;
    }

    private boolean h() {
        return ((this.f16064c.M() && this.o.b().o()) || (this.f16064c.O() && this.o.f().o()) || ((this.f16064c.J() && this.o.d().o()) || (this.f16064c.N() && this.o.e().o()))) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(@Nullable MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        if (motionEvent.getButtonState() != 0 && motionEvent.getButtonState() != 1) {
            return false;
        }
        if (motionEvent.getActionMasked() == 0) {
            a();
            this.f16062a.b(true);
        }
        boolean a2 = this.o.a(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            f();
            this.f16062a.b(false);
            if (!this.r.isEmpty()) {
                this.s.removeCallbacksAndMessages(null);
                Iterator<Animator> it = this.r.iterator();
                while (it.hasNext()) {
                    it.next().start();
                }
                this.r.clear();
            }
        } else if (actionMasked == 3) {
            this.r.clear();
            this.f16062a.b(false);
            f();
        } else if (actionMasked == 5) {
            f();
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@Nullable PointF pointF) {
        if (pointF == null && this.f16064c.m() != null) {
            pointF = this.f16064c.m();
        }
        this.m = pointF;
    }

    private void a(@NonNull Context context, boolean z) {
        if (z) {
            h hVar = new h(context.getResources().getDimension(com.mapbox.android.gestures.j.mapbox_defaultScaleSpanSinceStartThreshold));
            a aVar = null;
            d dVar = new d(this, aVar);
            f fVar = new f(context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_density_constant), context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_minimum_scale_speed), context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_minimum_angled_scale_speed), context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_minimum_scale_velocity));
            e eVar = new e(context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_minimum_scale_span_when_rotating), context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_density_constant), context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_angular_velocity_multiplier), context.getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_minimum_angular_velocity), context.getResources().getDimension(com.mapbox.android.gestures.j.mapbox_defaultScaleSpanSinceStartThreshold));
            g gVar = new g(this, aVar);
            i iVar = new i(this, aVar);
            this.o.a(hVar);
            this.o.a(dVar);
            this.o.a(fVar);
            this.o.a(eVar);
            this.o.a(gVar);
            this.o.a(iVar);
        }
    }

    void c() {
        Iterator<n.i> it = this.f16069h.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    void c(@NonNull com.mapbox.android.gestures.c cVar) {
        Iterator<n.r> it = this.f16070i.iterator();
        while (it.hasNext()) {
            it.next().b(cVar);
        }
    }

    void c(@NonNull com.mapbox.android.gestures.k kVar) {
        Iterator<n.u> it = this.f16071j.iterator();
        while (it.hasNext()) {
            it.next().b(kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public final class e extends k.b {

        /* renamed from: a, reason: collision with root package name */
        private final float f16079a;

        /* renamed from: b, reason: collision with root package name */
        private final float f16080b;

        /* renamed from: c, reason: collision with root package name */
        private final float f16081c;

        /* renamed from: d, reason: collision with root package name */
        private final double f16082d;

        /* renamed from: e, reason: collision with root package name */
        private final float f16083e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapGestureDetector.java */
        /* loaded from: classes2.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ PointF f16085e;

            a(PointF pointF) {
                this.f16085e = pointF;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                a0 a0Var = l.this.f16062a;
                double e2 = l.this.f16062a.e();
                double floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Double.isNaN(floatValue);
                PointF pointF = this.f16085e;
                a0Var.a(e2 + floatValue, pointF.x, pointF.y, 0L);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapGestureDetector.java */
        /* loaded from: classes2.dex */
        public class b extends AnimatorListenerAdapter {
            b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                l.this.f16062a.a();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                l.this.e();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                l.this.f16062a.a();
                l.this.f16066e.c(1);
            }
        }

        e(float f2, double d2, float f3, float f4, float f5) {
            this.f16079a = f2;
            this.f16080b = f3;
            this.f16081c = f4;
            this.f16082d = d2 * 2.2000000000000003E-4d;
            this.f16083e = f5;
        }

        @NonNull
        private PointF b(@NonNull com.mapbox.android.gestures.k kVar) {
            if (l.this.m != null) {
                return l.this.m;
            }
            return kVar.f();
        }

        @Override // com.mapbox.android.gestures.k.a
        public boolean a(@NonNull com.mapbox.android.gestures.k kVar) {
            if (!l.this.f16064c.J()) {
                return false;
            }
            float abs = Math.abs(kVar.q());
            double eventTime = kVar.a().getEventTime();
            double eventTime2 = kVar.c().getEventTime();
            if (eventTime == eventTime2) {
                return false;
            }
            double d2 = abs;
            Double.isNaN(eventTime);
            Double.isNaN(eventTime2);
            Double.isNaN(d2);
            double d3 = d2 / (eventTime - eventTime2);
            float abs2 = Math.abs(kVar.r());
            if (d3 < 0.04d || ((d3 > 0.07d && abs2 < 5.0f) || ((d3 > 0.15d && abs2 < 7.0f) || (d3 > 0.5d && abs2 < 15.0f)))) {
                return false;
            }
            if (l.this.f16064c.G()) {
                l.this.o.f().b(this.f16079a);
                l.this.o.f().n();
            }
            l.this.d();
            l.this.a(kVar);
            return true;
        }

        @Override // com.mapbox.android.gestures.k.a
        public boolean a(@NonNull com.mapbox.android.gestures.k kVar, float f2, float f3) {
            l.this.f16066e.c(1);
            double e2 = l.this.f16062a.e();
            double d2 = f2;
            Double.isNaN(d2);
            double d3 = e2 + d2;
            PointF b2 = b(kVar);
            l.this.f16062a.a(d3, b2.x, b2.y);
            l.this.c(kVar);
            return true;
        }

        @Override // com.mapbox.android.gestures.k.a
        public void a(@NonNull com.mapbox.android.gestures.k kVar, float f2, float f3, float f4) {
            if (l.this.f16064c.G()) {
                l.this.o.f().b(this.f16083e);
            }
            l.this.b(kVar);
            float a2 = com.mapbox.mapboxsdk.utils.f.a(f4 * this.f16080b, -30.0f, 30.0f);
            double abs = Math.abs(kVar.q()) / (Math.abs(f2) + Math.abs(f3));
            if (!l.this.f16064c.K() || Math.abs(a2) < this.f16081c || (l.this.o.f().o() && abs < this.f16082d)) {
                l.this.e();
                return;
            }
            double abs2 = Math.abs(a2);
            double pow = 1.0d / Math.pow(2.718281828459045d, 2.0d);
            Double.isNaN(abs2);
            l.this.q = a(a2, (long) ((Math.log(abs2 + pow) + 2.0d) * 150.0d), b(kVar));
            l lVar = l.this;
            lVar.b(lVar.q);
        }

        private Animator a(float f2, long j2, @NonNull PointF pointF) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, 0.0f);
            ofFloat.setDuration(j2);
            ofFloat.setInterpolator(new DecelerateInterpolator());
            ofFloat.addUpdateListener(new a(pointF));
            ofFloat.addListener(new b());
            return ofFloat;
        }
    }

    void c(@NonNull com.mapbox.android.gestures.o oVar) {
        Iterator<n.v> it = this.f16072k.iterator();
        while (it.hasNext()) {
            it.next().a(oVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapGestureDetector.java */
    /* loaded from: classes2.dex */
    public final class f extends o.b {

        /* renamed from: a, reason: collision with root package name */
        private final float f16088a;

        /* renamed from: b, reason: collision with root package name */
        private final float f16089b;

        /* renamed from: c, reason: collision with root package name */
        private final float f16090c;

        /* renamed from: d, reason: collision with root package name */
        private final double f16091d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f16092e;

        /* renamed from: f, reason: collision with root package name */
        private float f16093f;

        /* renamed from: g, reason: collision with root package name */
        private double f16094g;

        /* renamed from: h, reason: collision with root package name */
        private double f16095h;

        f(double d2, float f2, float f3, float f4) {
            this.f16088a = f2;
            this.f16089b = f3;
            this.f16090c = f4;
            this.f16091d = d2 * 0.004d;
        }

        @NonNull
        private PointF c(@NonNull com.mapbox.android.gestures.o oVar) {
            if (l.this.m != null) {
                return l.this.m;
            }
            if (this.f16092e) {
                return new PointF(l.this.f16064c.u() / 2.0f, l.this.f16064c.n() / 2.0f);
            }
            return oVar.f();
        }

        @Override // com.mapbox.android.gestures.o.c
        public boolean a(@NonNull com.mapbox.android.gestures.o oVar) {
            l.this.f16066e.c(1);
            PointF c2 = c(oVar);
            if (this.f16092e) {
                double abs = Math.abs(oVar.a().getY() - l.this.n.y);
                boolean z = oVar.a().getY() < l.this.n.y;
                double a2 = com.mapbox.mapboxsdk.utils.f.a(abs, 0.0d, this.f16094g, 0.0d, 4.0d);
                double d2 = this.f16095h;
                double d3 = z ? d2 - a2 : d2 + a2;
                double v = l.this.f16064c.v();
                Double.isNaN(v);
                l.this.f16062a.a(d3 * v, c2);
            } else {
                double log = (Math.log(oVar.s()) / Math.log(1.5707963267948966d)) * 0.6499999761581421d;
                double v2 = l.this.f16064c.v();
                Double.isNaN(v2);
                l.this.f16062a.b(log * v2, c2);
            }
            l.this.c(oVar);
            this.f16093f = Math.abs(oVar.q() - oVar.r());
            return true;
        }

        @Override // com.mapbox.android.gestures.o.c
        public boolean b(@NonNull com.mapbox.android.gestures.o oVar) {
            this.f16092e = oVar.g() == 1;
            if (!l.this.f16064c.O()) {
                return false;
            }
            if (this.f16092e) {
                if (!l.this.f16064c.I()) {
                    return false;
                }
                l.this.o.b().a(false);
            } else {
                if (oVar.r() <= 0.0f) {
                    return false;
                }
                float q = oVar.q();
                float r = oVar.r();
                double eventTime = oVar.a().getEventTime();
                double eventTime2 = oVar.c().getEventTime();
                if (eventTime == eventTime2) {
                    return false;
                }
                double abs = Math.abs(q - r);
                Double.isNaN(eventTime);
                Double.isNaN(eventTime2);
                Double.isNaN(abs);
                double d2 = abs / (eventTime - eventTime2);
                if (d2 < this.f16088a) {
                    return false;
                }
                if (!l.this.o.d().o()) {
                    if (Math.abs(l.this.o.d().q()) > 0.4d && d2 < this.f16089b) {
                        return false;
                    }
                    if (l.this.f16064c.B()) {
                        l.this.o.d().a(false);
                    }
                }
            }
            this.f16094g = Resources.getSystem().getDisplayMetrics().heightPixels;
            this.f16095h = l.this.f16062a.f();
            l.this.d();
            l.this.a(oVar);
            this.f16093f = Math.abs(oVar.q() - oVar.r());
            return true;
        }

        @Override // com.mapbox.android.gestures.o.c
        public void a(@NonNull com.mapbox.android.gestures.o oVar, float f2, float f3) {
            if (this.f16092e) {
                l.this.o.b().a(true);
            } else {
                l.this.o.d().a(true);
            }
            l.this.b(oVar);
            float abs = Math.abs(f2) + Math.abs(f3);
            if (!l.this.f16064c.L() || abs < this.f16090c || this.f16093f / abs < this.f16091d) {
                l.this.e();
                return;
            }
            double a2 = a(abs, oVar.t());
            double f4 = l.this.f16062a.f();
            PointF c2 = c(oVar);
            long log = (long) ((Math.log(Math.abs(a2) + (1.0d / Math.pow(2.718281828459045d, 2.0d))) + 2.0d) * 150.0d);
            l lVar = l.this;
            lVar.p = lVar.a(f4, a2, c2, log);
            l lVar2 = l.this;
            lVar2.b(lVar2.p);
        }

        private double a(double d2, boolean z) {
            double a2 = com.mapbox.mapboxsdk.utils.f.a(d2 * 2.5d * 1.0E-4d, 0.0d, 2.5d);
            return z ? -a2 : a2;
        }
    }

    void c(@NonNull com.mapbox.android.gestures.l lVar) {
        Iterator<n.w> it = this.f16073l.iterator();
        while (it.hasNext()) {
            it.next().c(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Animator animator) {
        this.r.add(animator);
        this.s.removeCallbacksAndMessages(null);
        this.s.postDelayed(this.u, 150L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull PointF pointF, boolean z) {
        a(false, pointF, z);
    }

    void b(@NonNull PointF pointF) {
        Iterator<n.p> it = this.f16068g.iterator();
        while (it.hasNext() && !it.next().b(this.f16063b.a(pointF))) {
        }
    }

    void b(@NonNull com.mapbox.android.gestures.c cVar) {
        Iterator<n.r> it = this.f16070i.iterator();
        while (it.hasNext()) {
            it.next().c(cVar);
        }
    }

    private void a(@NonNull AndroidGesturesManager androidGesturesManager, boolean z) {
        if (z) {
            HashSet hashSet = new HashSet();
            hashSet.add(3);
            hashSet.add(1);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(3);
            hashSet2.add(2);
            HashSet hashSet3 = new HashSet();
            hashSet3.add(1);
            hashSet3.add(6);
            androidGesturesManager.a(hashSet, hashSet2, hashSet3);
        }
        this.o = androidGesturesManager;
        this.o.d().b(3.0f);
    }

    void b(@NonNull com.mapbox.android.gestures.k kVar) {
        Iterator<n.u> it = this.f16071j.iterator();
        while (it.hasNext()) {
            it.next().c(kVar);
        }
    }

    void b(@NonNull com.mapbox.android.gestures.o oVar) {
        Iterator<n.v> it = this.f16072k.iterator();
        while (it.hasNext()) {
            it.next().c(oVar);
        }
    }

    void b(@NonNull com.mapbox.android.gestures.l lVar) {
        Iterator<n.w> it = this.f16073l.iterator();
        while (it.hasNext()) {
            it.next().b(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(n.o oVar) {
        this.f16067f.remove(oVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(n.p pVar) {
        this.f16068g.remove(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidGesturesManager b() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.s.removeCallbacksAndMessages(null);
        this.r.clear();
        a(this.p);
        a(this.q);
        e();
    }

    private void a(@Nullable Animator animator) {
        if (animator == null || !animator.isStarted()) {
            return;
        }
        animator.cancel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 2 || motionEvent.getActionMasked() != 8 || !this.f16064c.O()) {
            return false;
        }
        this.f16062a.a();
        this.f16062a.b(motionEvent.getAxisValue(9), new PointF(motionEvent.getX(), motionEvent.getY()));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator a(double d2, double d3, @NonNull PointF pointF, long j2) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat((float) d2, (float) (d2 + d3));
        ofFloat.setDuration(j2);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new b(pointF));
        ofFloat.addListener(new c());
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull PointF pointF, boolean z) {
        a(true, pointF, z);
    }

    private void a(boolean z, @NonNull PointF pointF, boolean z2) {
        a(this.p);
        this.p = a(this.f16062a.f(), z ? 1.0d : -1.0d, pointF, 300L);
        if (z2) {
            this.p.start();
        } else {
            b(this.p);
        }
    }

    void a(@NonNull PointF pointF) {
        Iterator<n.o> it = this.f16067f.iterator();
        while (it.hasNext() && !it.next().a(this.f16063b.a(pointF))) {
        }
    }

    void a(@NonNull com.mapbox.android.gestures.c cVar) {
        Iterator<n.r> it = this.f16070i.iterator();
        while (it.hasNext()) {
            it.next().a(cVar);
        }
    }

    void a(@NonNull com.mapbox.android.gestures.k kVar) {
        Iterator<n.u> it = this.f16071j.iterator();
        while (it.hasNext()) {
            it.next().a(kVar);
        }
    }

    void a(@NonNull com.mapbox.android.gestures.o oVar) {
        Iterator<n.v> it = this.f16072k.iterator();
        while (it.hasNext()) {
            it.next().b(oVar);
        }
    }

    void a(@NonNull com.mapbox.android.gestures.l lVar) {
        Iterator<n.w> it = this.f16073l.iterator();
        while (it.hasNext()) {
            it.next().a(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.o oVar) {
        this.f16067f.add(oVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.p pVar) {
        this.f16068g.add(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.i iVar) {
        this.f16069h.add(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.r rVar) {
        this.f16070i.add(rVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.u uVar) {
        this.f16071j.add(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Context context, @NonNull AndroidGesturesManager androidGesturesManager, boolean z, boolean z2) {
        a(androidGesturesManager, z2);
        a(context, z);
    }
}
