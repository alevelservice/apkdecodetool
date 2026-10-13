package com.mapbox.mapboxsdk.annotations;

import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.i;
import com.mapbox.mapboxsdk.k;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.n;
import java.lang.ref.WeakReference;

/* compiled from: InfoWindow.java */
@Deprecated
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference<Marker> f15716a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<n> f15717b;

    /* renamed from: c, reason: collision with root package name */
    protected WeakReference<View> f15718c;

    /* renamed from: d, reason: collision with root package name */
    private float f15719d;

    /* renamed from: e, reason: collision with root package name */
    private float f15720e;

    /* renamed from: f, reason: collision with root package name */
    private float f15721f;

    /* renamed from: g, reason: collision with root package name */
    private float f15722g;

    /* renamed from: h, reason: collision with root package name */
    private PointF f15723h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f15724i;

    /* renamed from: j, reason: collision with root package name */
    @LayoutRes
    private int f15725j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InfoWindow.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n nVar = (n) e.this.f15717b.get();
            if (nVar != null) {
                n.l i2 = nVar.i();
                if (i2 != null ? i2.a(e.this.b()) : false) {
                    return;
                }
                e.this.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InfoWindow.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            n.InterfaceC0159n k2;
            n nVar = (n) e.this.f15717b.get();
            if (nVar == null || (k2 = nVar.k()) == null) {
                return true;
            }
            k2.a(e.this.b());
            return true;
        }
    }

    /* compiled from: InfoWindow.java */
    /* loaded from: classes2.dex */
    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            View view = e.this.f15718c.get();
            if (view != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
                e.this.f15722g = (-view.getMeasuredHeight()) + e.this.f15719d;
                e.this.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(MapView mapView, int i2, n nVar) {
        new c();
        this.f15725j = i2;
        a(LayoutInflater.from(mapView.getContext()).inflate(i2, (ViewGroup) mapView, false), nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        n nVar = this.f15717b.get();
        Marker marker = this.f15716a.get();
        if (marker != null && nVar != null) {
            nVar.a(marker);
        }
        a();
    }

    @Nullable
    Marker b() {
        WeakReference<Marker> weakReference = this.f15716a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void c() {
        n nVar = this.f15717b.get();
        Marker marker = this.f15716a.get();
        View view = this.f15718c.get();
        if (nVar == null || marker == null || view == null) {
            return;
        }
        this.f15723h = nVar.l().a(marker.d());
        if (view instanceof BubbleLayout) {
            view.setX((this.f15723h.x + this.f15721f) - this.f15720e);
        } else {
            view.setX((this.f15723h.x - (view.getMeasuredWidth() / 2)) - this.f15720e);
        }
        view.setY(this.f15723h.y + this.f15722g);
    }

    private void a(@NonNull View view, n nVar) {
        this.f15717b = new WeakReference<>(nVar);
        this.f15724i = false;
        this.f15718c = new WeakReference<>(view);
        view.setOnClickListener(new a());
        view.setOnLongClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull View view, n nVar) {
        new c();
        a(view, nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e a(@NonNull MapView mapView, Marker marker, @NonNull LatLng latLng, int i2, int i3) {
        float f2;
        float f3;
        boolean z;
        boolean z2;
        a(marker);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        n nVar = this.f15717b.get();
        View view = this.f15718c.get();
        if (view != null && nVar != null) {
            view.measure(0, 0);
            float f4 = i3;
            this.f15719d = f4;
            this.f15720e = -i2;
            this.f15723h = nVar.l().a(latLng);
            float f5 = i2;
            float measuredWidth = (this.f15723h.x - (view.getMeasuredWidth() / 2)) + f5;
            float measuredHeight = (this.f15723h.y - view.getMeasuredHeight()) + f4;
            if (view instanceof BubbleLayout) {
                Resources resources = mapView.getContext().getResources();
                float measuredWidth2 = view.getMeasuredWidth() + measuredWidth;
                float right = mapView.getRight();
                float left = mapView.getLeft();
                float dimension = resources.getDimension(i.mapbox_infowindow_margin);
                float dimension2 = resources.getDimension(i.mapbox_infowindow_tipview_width) / 2.0f;
                float measuredWidth3 = (view.getMeasuredWidth() / 2) - dimension2;
                float f6 = this.f15723h.x;
                if (f6 >= 0.0f && f6 <= mapView.getWidth()) {
                    float f7 = this.f15723h.y;
                    if (f7 >= 0.0f && f7 <= mapView.getHeight()) {
                        if (measuredWidth2 > right) {
                            float f8 = measuredWidth2 - right;
                            f2 = measuredWidth - f8;
                            measuredWidth3 += f8 + dimension2;
                            f3 = view.getMeasuredWidth() + f2;
                            z = true;
                        } else {
                            f2 = measuredWidth;
                            f3 = measuredWidth2;
                            z = false;
                        }
                        if (measuredWidth < left) {
                            float f9 = left - measuredWidth;
                            f2 += f9;
                            measuredWidth3 -= f9 + dimension2;
                            measuredWidth = f2;
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z) {
                            float f10 = right - f3;
                            if (f10 < dimension) {
                                float f11 = dimension - f10;
                                f2 -= f11;
                                measuredWidth3 += f11 - dimension2;
                                measuredWidth = f2;
                            }
                        }
                        if (z2) {
                            float f12 = measuredWidth - left;
                            if (f12 < dimension) {
                                float f13 = dimension - f12;
                                f2 += f13;
                                measuredWidth3 -= f13 - dimension2;
                            }
                        }
                        measuredWidth = f2;
                    }
                }
                ((BubbleLayout) view).setArrowPosition(measuredWidth3);
            }
            view.setX(measuredWidth);
            view.setY(measuredHeight);
            this.f15721f = (measuredWidth - this.f15723h.x) - f5;
            this.f15722g = (-view.getMeasuredHeight()) + i3;
            a();
            mapView.addView(view, layoutParams);
            this.f15724i = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e a() {
        n nVar = this.f15717b.get();
        if (this.f15724i && nVar != null) {
            this.f15724i = false;
            View view = this.f15718c.get();
            if (view != null && view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            Marker b2 = b();
            n.m j2 = nVar.j();
            if (j2 != null) {
                j2.a(b2);
            }
            a((Marker) null);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Marker marker, n nVar, @NonNull MapView mapView) {
        View view = this.f15718c.get();
        if (view == null) {
            view = LayoutInflater.from(mapView.getContext()).inflate(this.f15725j, (ViewGroup) mapView, false);
            a(view, nVar);
        }
        this.f15717b = new WeakReference<>(nVar);
        String f2 = marker.f();
        TextView textView = (TextView) view.findViewById(k.infowindow_title);
        if (!TextUtils.isEmpty(f2)) {
            textView.setText(f2);
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
        String e2 = marker.e();
        TextView textView2 = (TextView) view.findViewById(k.infowindow_description);
        if (!TextUtils.isEmpty(e2)) {
            textView2.setText(e2);
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
    }

    @NonNull
    e a(Marker marker) {
        this.f15716a = new WeakReference<>(marker);
        return this;
    }
}
