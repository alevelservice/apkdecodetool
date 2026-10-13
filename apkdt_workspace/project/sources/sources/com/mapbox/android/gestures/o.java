package com.mapbox.android.gestures;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.util.HashSet;
import java.util.Set;

/* compiled from: StandardScaleGestureDetector.java */
@UiThread
/* loaded from: classes2.dex */
public class o extends i<c> {
    private static final Set<Integer> H = new HashSet();
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;
    private boolean F;
    private float G;
    private final androidx.core.view.d v;
    private boolean w;
    private PointF x;
    private float y;
    private float z;

    /* compiled from: StandardScaleGestureDetector.java */
    /* loaded from: classes2.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 0) {
                o.this.w = true;
                o.this.x = new PointF(motionEvent.getX(), motionEvent.getY());
            }
            return true;
        }
    }

    /* compiled from: StandardScaleGestureDetector.java */
    /* loaded from: classes2.dex */
    public static class b implements c {
    }

    /* compiled from: StandardScaleGestureDetector.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(@NonNull o oVar, float f2, float f3);

        boolean a(@NonNull o oVar);

        boolean b(@NonNull o oVar);
    }

    static {
        H.add(1);
        H.add(15);
    }

    public o(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
        this.v = new androidx.core.view.d(context, new a());
    }

    private float u() {
        if (this.w) {
            boolean z = (a().getY() < this.x.y && this.z < this.C) || (a().getY() > this.x.y && this.z > this.C);
            float abs = Math.abs(1.0f - (this.z / this.C)) * 0.5f;
            if (this.C <= 0.0f) {
                return 1.0f;
            }
            return z ? 1.0f + abs : 1.0f - abs;
        }
        float f2 = this.C;
        if (f2 > 0.0f) {
            return this.z / f2;
        }
        return 1.0f;
    }

    public void b(float f2) {
        this.E = f2;
    }

    public void c(@DimenRes int i2) {
        b(this.f15517a.getResources().getDimension(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public boolean d() {
        super.d();
        boolean z = false;
        if (o() && this.w && g() > 1) {
            l();
            return false;
        }
        PointF f2 = this.w ? this.x : f();
        this.A = 0.0f;
        this.B = 0.0f;
        for (int i2 = 0; i2 < g(); i2++) {
            this.A += Math.abs(a().getX(i2) - f2.x);
            this.B += Math.abs(a().getY(i2) - f2.y);
        }
        this.A *= 2.0f;
        this.B *= 2.0f;
        if (this.w) {
            this.z = this.B;
        } else {
            this.z = (float) Math.hypot(this.A, this.B);
        }
        if (this.y == 0.0f) {
            this.y = this.z;
        }
        this.D = Math.abs(this.y - this.z);
        this.G = u();
        this.F = this.G < 1.0f;
        if (o() && this.z > 0.0f) {
            z = ((c) this.f15524h).a(this);
        } else if (a(this.w ? 15 : 1) && this.D >= this.E && (z = ((c) this.f15524h).b(this))) {
            k();
        }
        this.C = this.z;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public int h() {
        return (!o() || this.w) ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public boolean i() {
        return super.i() || (!this.w && g() < 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public void j() {
        super.j();
        this.y = 0.0f;
        this.D = 0.0f;
        this.z = 0.0f;
        this.C = 0.0f;
        this.G = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.i
    public void l() {
        super.l();
        ((c) this.f15524h).a(this, this.t, this.u);
        this.w = false;
    }

    @Override // com.mapbox.android.gestures.i
    @NonNull
    protected Set<Integer> p() {
        return H;
    }

    public float q() {
        return this.z;
    }

    public float r() {
        return this.C;
    }

    public float s() {
        return this.G;
    }

    public boolean t() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.i, com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.w) {
            if (actionMasked != 5 && actionMasked != 3) {
                if (!o() && actionMasked == 1) {
                    this.w = false;
                }
            } else if (o()) {
                n();
            } else {
                this.w = false;
            }
        }
        return this.v.a(motionEvent) | super.a(motionEvent);
    }
}
