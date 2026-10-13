package com.mapbox.android.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.util.Set;

/* compiled from: ProgressiveGesture.java */
@UiThread
/* loaded from: classes2.dex */
public abstract class i<L> extends e<L> {
    private final Set<Integer> p;
    private boolean q;
    private boolean r;
    VelocityTracker s;
    float t;
    float u;

    public i(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
        this.p = p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 5 || actionMasked == 6 || actionMasked == 3) {
            j();
        }
        if (this.r) {
            this.r = false;
            j();
            l();
        }
        VelocityTracker velocityTracker = this.s;
        if (velocityTracker != null) {
            velocityTracker.addMovement(a());
        }
        boolean a2 = super.a(motionEvent);
        if (actionMasked != 1 && actionMasked != 6) {
            if (actionMasked == 3 && this.q) {
                l();
                return true;
            }
        } else if (this.f15543l.size() < h() && this.q) {
            l();
            return true;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        this.q = true;
        if (this.s == null) {
            this.s = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l() {
        this.q = false;
        VelocityTracker velocityTracker = this.s;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(1000);
            this.t = this.s.getXVelocity();
            this.u = this.s.getYVelocity();
            this.s.recycle();
            this.s = null;
        }
        j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<Integer> m() {
        return this.p;
    }

    public void n() {
        if (o()) {
            this.r = true;
        }
    }

    public boolean o() {
        return this.q;
    }

    @NonNull
    protected abstract Set<Integer> p();

    @Override // com.mapbox.android.gestures.a
    public void a(boolean z) {
        super.a(z);
        if (z) {
            return;
        }
        n();
    }
}
