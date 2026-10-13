package com.mapbox.android.gestures;

import android.content.Context;
import android.graphics.PointF;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: MultiFingerGesture.java */
@UiThread
/* loaded from: classes2.dex */
public abstract class e<L> extends a<L> {

    /* renamed from: i, reason: collision with root package name */
    private final float f15540i;

    /* renamed from: j, reason: collision with root package name */
    private float f15541j;

    /* renamed from: k, reason: collision with root package name */
    private final g f15542k;

    /* renamed from: l, reason: collision with root package name */
    final List<Integer> f15543l;
    final HashMap<h, d> m;
    private PointF n;
    private DisplayMetrics o;

    public e(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
        this.f15542k = new g();
        this.f15543l = new ArrayList();
        this.m = new HashMap<>();
        this.n = new PointF();
        this.f15540i = ViewConfiguration.get(context).getScaledEdgeSlop();
        m();
    }

    private boolean c(MotionEvent motionEvent) {
        boolean z;
        Iterator<Integer> it = this.f15543l.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            if (motionEvent.findPointerIndex(it.next().intValue()) != -1) {
                z = true;
            }
        } while (z);
        return true;
    }

    private void d(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 5) {
            this.f15543l.add(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
        } else if (actionMasked == 1 || actionMasked == 6) {
            this.f15543l.remove(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
        }
    }

    private void k() {
        this.m.clear();
        int i2 = 0;
        while (i2 < this.f15543l.size() - 1) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < this.f15543l.size(); i4++) {
                int intValue = this.f15543l.get(i2).intValue();
                int intValue2 = this.f15543l.get(i4).intValue();
                float x = c().getX(c().findPointerIndex(intValue));
                float y = c().getY(c().findPointerIndex(intValue));
                this.m.put(new h(Integer.valueOf(intValue), Integer.valueOf(intValue2)), new d(c().getX(c().findPointerIndex(intValue2)) - x, c().getY(c().findPointerIndex(intValue2)) - y, a().getX(a().findPointerIndex(intValue2)) - a().getX(a().findPointerIndex(intValue)), a().getY(a().findPointerIndex(intValue2)) - a().getY(a().findPointerIndex(intValue))));
            }
            i2 = i3;
        }
    }

    private boolean l() {
        Iterator<d> it = this.m.values().iterator();
        while (it.hasNext()) {
            if (it.next().b() < this.f15541j) {
                return true;
            }
        }
        return false;
    }

    private void m() {
        if (this.f15518b != null) {
            this.o = new DisplayMetrics();
            Display defaultDisplay = this.f15518b.getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealMetrics(this.o);
                return;
            } else {
                defaultDisplay.getMetrics(this.o);
                return;
            }
        }
        this.o = this.f15517a.getResources().getDisplayMetrics();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.a
    public boolean a(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m();
        }
        boolean z = this.f15542k.a(actionMasked, motionEvent.getPointerCount(), this.f15543l.size()) || (actionMasked == 2 && c(motionEvent));
        if (z) {
            if (this instanceof i) {
                i iVar = (i) this;
                if (iVar.o()) {
                    iVar.l();
                }
            }
            this.f15543l.clear();
            this.m.clear();
        }
        if (!z || actionMasked == 0) {
            d(motionEvent);
        }
        this.n = p.a(motionEvent);
        if (!z && actionMasked == 2 && this.f15543l.size() >= h() && e()) {
            k();
            if (!i()) {
                return d();
            }
        }
        return false;
    }

    public void b(@DimenRes int i2) {
        a(this.f15517a.getResources().getDimension(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean d() {
        return false;
    }

    boolean e() {
        return a().getPressure() / c().getPressure() > 0.67f;
    }

    public PointF f() {
        return this.n;
    }

    public int g() {
        return this.f15543l.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int h() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean i() {
        float f2 = this.o.widthPixels;
        float f3 = this.f15540i;
        float f4 = f2 - f3;
        float f5 = r0.heightPixels - f3;
        Iterator<Integer> it = this.f15543l.iterator();
        while (it.hasNext()) {
            int findPointerIndex = a().findPointerIndex(it.next().intValue());
            float a2 = p.a(a(), findPointerIndex);
            float b2 = p.b(a(), findPointerIndex);
            if (a2 < f3 || b2 < f3 || a2 > f4 || b2 > f5) {
                return true;
            }
        }
        return l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.a
    public boolean a(int i2) {
        return super.a(i2) && !i();
    }

    public void a(float f2) {
        this.f15541j = f2;
    }
}
