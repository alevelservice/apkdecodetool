package com.mapbox.android.gestures;

import android.content.Context;
import android.view.MotionEvent;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: MultiFingerTapGestureDetector.java */
@UiThread
/* loaded from: classes2.dex */
public class f extends e<a> {
    private long p;
    private float q;
    private boolean r;
    private boolean s;
    private int t;

    /* compiled from: MultiFingerTapGestureDetector.java */
    /* loaded from: classes2.dex */
    public interface a {
        boolean a(@NonNull f fVar, int i2);
    }

    public f(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(@NonNull MotionEvent motionEvent) {
        super.a(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            boolean a2 = a(4) ? ((a) this.f15524h).a(this, this.t) : false;
            j();
            return a2;
        }
        if (actionMasked != 2) {
            if (actionMasked == 5) {
                if (this.s) {
                    this.r = true;
                }
                this.t = this.f15543l.size();
            } else if (actionMasked == 6) {
                this.s = true;
            }
        } else if (!this.r) {
            this.r = a(this.m);
        }
        return false;
    }

    public void b(float f2) {
        this.q = f2;
    }

    public void c(@DimenRes int i2) {
        b(this.f15517a.getResources().getDimension(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public void j() {
        super.j();
        this.t = 0;
        this.r = false;
        this.s = false;
    }

    boolean a(HashMap<h, d> hashMap) {
        Iterator<d> it = hashMap.values().iterator();
        do {
            if (!it.hasNext()) {
                return false;
            }
            d next = it.next();
            float abs = Math.abs(next.a() - next.d());
            float abs2 = Math.abs(next.c() - next.e());
            float f2 = this.q;
            this.r = abs > f2 || abs2 > f2;
        } while (!this.r);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(int i2) {
        return this.t > 1 && !this.r && b() < this.p && super.a(i2);
    }

    public void a(long j2) {
        this.p = j2;
    }
}
