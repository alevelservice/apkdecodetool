package com.mapbox.android.gestures;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MoveGestureDetector.java */
@UiThread
/* loaded from: classes2.dex */
public class c extends i<a> {
    private static final Set<Integer> C = new HashSet();
    private float A;
    private final Map<Integer, com.mapbox.android.gestures.b> B;
    private PointF v;
    private boolean w;
    float x;
    float y;

    @Nullable
    private RectF z;

    /* compiled from: MoveGestureDetector.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(@NonNull c cVar, float f2, float f3);

        boolean a(@NonNull c cVar);

        boolean b(@NonNull c cVar, float f2, float f3);
    }

    /* compiled from: MoveGestureDetector.java */
    /* loaded from: classes2.dex */
    public static class b implements a {
    }

    static {
        C.add(13);
    }

    public c(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
        this.B = new HashMap();
    }

    private void t() {
        Iterator<Integer> it = this.f15543l.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            this.B.get(Integer.valueOf(intValue)).a(a().getX(a().findPointerIndex(intValue)), a().getY(a().findPointerIndex(intValue)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.i, com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.B.clear();
            } else if (actionMasked == 3) {
                this.B.clear();
            } else if (actionMasked != 5) {
                if (actionMasked == 6) {
                    this.w = true;
                    this.B.remove(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
                }
            }
            return super.a(motionEvent);
        }
        this.w = true;
        this.B.put(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())), new com.mapbox.android.gestures.b(motionEvent.getX(motionEvent.getActionIndex()), motionEvent.getY(motionEvent.getActionIndex())));
        return super.a(motionEvent);
    }

    public void b(float f2) {
        this.A = f2;
    }

    public com.mapbox.android.gestures.b c(int i2) {
        if (!o() || i2 < 0 || i2 >= g()) {
            return null;
        }
        return this.B.get(this.f15543l.get(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public boolean d() {
        super.d();
        t();
        if (o()) {
            PointF f2 = f();
            PointF pointF = this.v;
            this.x = pointF.x - f2.x;
            this.y = pointF.y - f2.y;
            this.v = f2;
            if (this.w) {
                this.w = false;
                return ((a) this.f15524h).b(this, 0.0f, 0.0f);
            }
            return ((a) this.f15524h).b(this, this.x, this.y);
        }
        if (!a(13) || !((a) this.f15524h).a(this)) {
            return false;
        }
        k();
        this.v = f();
        this.w = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public int h() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public void j() {
        super.j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.i
    public void l() {
        super.l();
        ((a) this.f15524h).a(this, this.t, this.u);
    }

    @Override // com.mapbox.android.gestures.i
    @NonNull
    protected Set<Integer> p() {
        return C;
    }

    boolean q() {
        Iterator<com.mapbox.android.gestures.b> it = this.B.values().iterator();
        if (!it.hasNext()) {
            return false;
        }
        com.mapbox.android.gestures.b next = it.next();
        boolean z = Math.abs(next.d()) >= this.A || Math.abs(next.f()) >= this.A;
        RectF rectF = this.z;
        return !(rectF != null && rectF.contains(f().x, f().y)) && z;
    }

    public float r() {
        return this.A;
    }

    @Nullable
    public RectF s() {
        return this.z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(int i2) {
        return super.a(i2) && q();
    }

    public void a(@Nullable RectF rectF) {
        this.z = rectF;
    }
}
