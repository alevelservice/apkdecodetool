package com.mapbox.mapboxsdk.t.a;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.android.gestures.c;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.maps.MapView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DraggableAnnotationController.java */
@UiThread
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: j, reason: collision with root package name */
    private static i f16328j;

    /* renamed from: a, reason: collision with root package name */
    private MapView f16329a;

    /* renamed from: b, reason: collision with root package name */
    private com.mapbox.mapboxsdk.maps.n f16330b;

    /* renamed from: c, reason: collision with root package name */
    private List<com.mapbox.mapboxsdk.t.a.b> f16331c;

    /* renamed from: d, reason: collision with root package name */
    private final int f16332d;

    /* renamed from: e, reason: collision with root package name */
    private final int f16333e;

    /* renamed from: f, reason: collision with root package name */
    private final int f16334f;

    /* renamed from: g, reason: collision with root package name */
    private final int f16335g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private com.mapbox.mapboxsdk.t.a.a f16336h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private com.mapbox.mapboxsdk.t.a.b f16337i;

    /* compiled from: DraggableAnnotationController.java */
    /* loaded from: classes2.dex */
    class a implements View.OnTouchListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ AndroidGesturesManager f16338e;

        a(AndroidGesturesManager androidGesturesManager) {
            this.f16338e = androidGesturesManager;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            com.mapbox.mapboxsdk.t.a.a aVar = i.this.f16336h;
            this.f16338e.a(motionEvent);
            return (i.this.f16336h == null && aVar == null) ? false : true;
        }
    }

    /* compiled from: DraggableAnnotationController.java */
    /* loaded from: classes2.dex */
    private class b implements c.a {
        private b() {
        }

        @Override // com.mapbox.android.gestures.c.a
        public boolean a(com.mapbox.android.gestures.c cVar) {
            return i.this.b(cVar);
        }

        @Override // com.mapbox.android.gestures.c.a
        public boolean b(com.mapbox.android.gestures.c cVar, float f2, float f3) {
            return i.this.a(cVar);
        }

        /* synthetic */ b(i iVar, a aVar) {
            this();
        }

        @Override // com.mapbox.android.gestures.c.a
        public void a(com.mapbox.android.gestures.c cVar, float f2, float f3) {
            i.this.a();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    i(MapView mapView, com.mapbox.mapboxsdk.maps.n nVar) {
        this(mapView, nVar, new AndroidGesturesManager(mapView.getContext(), false), mapView.getScrollX(), mapView.getScrollY(), mapView.getMeasuredWidth(), mapView.getMeasuredHeight());
    }

    private static void c() {
        i iVar = f16328j;
        if (iVar != null) {
            iVar.f16329a = null;
            iVar.f16330b = null;
            f16328j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(com.mapbox.mapboxsdk.t.a.b bVar) {
        this.f16331c.remove(bVar);
        if (this.f16331c.isEmpty()) {
            c();
        }
    }

    public static i a(MapView mapView, com.mapbox.mapboxsdk.maps.n nVar) {
        i iVar = f16328j;
        if (iVar == null || iVar.f16329a != mapView || iVar.f16330b != nVar) {
            f16328j = new i(mapView, nVar);
        }
        return f16328j;
    }

    @VisibleForTesting
    public i(MapView mapView, com.mapbox.mapboxsdk.maps.n nVar, AndroidGesturesManager androidGesturesManager, int i2, int i3, int i4, int i5) {
        this.f16331c = new ArrayList();
        this.f16329a = mapView;
        this.f16330b = nVar;
        this.f16332d = i2;
        this.f16333e = i3;
        this.f16334f = i4;
        this.f16335g = i5;
        androidGesturesManager.a(new b(this, null));
        mapView.setOnTouchListener(new a(androidGesturesManager));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        b(this.f16336h, this.f16337i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mapbox.mapboxsdk.t.a.b bVar) {
        this.f16331c.add(bVar);
    }

    boolean b(com.mapbox.android.gestures.c cVar) {
        com.mapbox.mapboxsdk.t.a.a a2;
        for (com.mapbox.mapboxsdk.t.a.b bVar : this.f16331c) {
            if (cVar.g() == 1 && (a2 = bVar.a(cVar.f())) != null && a(a2, bVar)) {
                return true;
            }
        }
        return false;
    }

    boolean a(com.mapbox.android.gestures.c cVar) {
        if (this.f16336h != null && (cVar.g() > 1 || !this.f16336h.e())) {
            b(this.f16336h, this.f16337i);
            return true;
        }
        if (this.f16336h != null) {
            com.mapbox.android.gestures.b c2 = cVar.c(0);
            PointF pointF = new PointF(c2.a() - this.f16332d, c2.b() - this.f16333e);
            float f2 = pointF.x;
            if (f2 >= 0.0f) {
                float f3 = pointF.y;
                if (f3 >= 0.0f && f2 <= this.f16334f && f3 <= this.f16335g) {
                    Geometry a2 = this.f16336h.a(this.f16330b.l(), c2, this.f16332d, this.f16333e);
                    if (a2 != null) {
                        this.f16336h.a((com.mapbox.mapboxsdk.t.a.a) a2);
                        this.f16337i.d();
                        Iterator it = this.f16337i.b().iterator();
                        while (it.hasNext()) {
                            ((s) it.next()).a(this.f16336h);
                        }
                        return true;
                    }
                }
            }
            b(this.f16336h, this.f16337i);
            return true;
        }
        return false;
    }

    void b(@Nullable com.mapbox.mapboxsdk.t.a.a aVar, @Nullable com.mapbox.mapboxsdk.t.a.b bVar) {
        if (aVar != null && bVar != null) {
            Iterator it = bVar.b().iterator();
            while (it.hasNext()) {
                ((s) it.next()).b(aVar);
            }
        }
        this.f16336h = null;
        this.f16337i = null;
    }

    void a() {
        b(this.f16336h, this.f16337i);
    }

    boolean a(@NonNull com.mapbox.mapboxsdk.t.a.a aVar, @NonNull com.mapbox.mapboxsdk.t.a.b bVar) {
        if (!aVar.e()) {
            return false;
        }
        Iterator it = bVar.b().iterator();
        while (it.hasNext()) {
            ((s) it.next()).c(aVar);
        }
        this.f16336h = aVar;
        this.f16337i = bVar;
        return true;
    }
}
