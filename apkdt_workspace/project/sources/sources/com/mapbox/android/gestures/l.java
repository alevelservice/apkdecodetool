package com.mapbox.android.gestures;

import android.content.Context;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.util.HashSet;
import java.util.Set;

/* compiled from: ShoveGestureDetector.java */
@UiThread
/* loaded from: classes2.dex */
public class l extends i<a> {
    private static final Set<Integer> z = new HashSet();
    private float v;
    private float w;
    float x;
    float y;

    /* compiled from: ShoveGestureDetector.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(@NonNull l lVar, float f2, float f3);

        boolean a(@NonNull l lVar);

        boolean b(@NonNull l lVar, float f2, float f3);
    }

    /* compiled from: ShoveGestureDetector.java */
    /* loaded from: classes2.dex */
    public static class b implements a {
    }

    static {
        z.add(3);
    }

    public l(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(int i2) {
        return Math.abs(this.x) >= this.w && super.a(i2);
    }

    public void b(float f2) {
        this.v = f2;
    }

    public void c(float f2) {
        this.w = f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public boolean d() {
        super.d();
        this.y = q();
        this.x += this.y;
        if (o()) {
            float f2 = this.y;
            if (f2 != 0.0f) {
                return ((a) this.f15524h).b(this, f2, this.x);
            }
        }
        if (!a(3) || !((a) this.f15524h).a(this)) {
            return false;
        }
        k();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public boolean i() {
        return super.i() || !r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public void j() {
        super.j();
        this.x = 0.0f;
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
        return z;
    }

    float q() {
        return ((a().getY(a().findPointerIndex(this.f15543l.get(0).intValue())) + a().getY(a().findPointerIndex(this.f15543l.get(1).intValue()))) / 2.0f) - ((c().getY(c().findPointerIndex(this.f15543l.get(0).intValue())) + c().getY(c().findPointerIndex(this.f15543l.get(1).intValue()))) / 2.0f);
    }

    boolean r() {
        d dVar = this.m.get(new h(this.f15543l.get(0), this.f15543l.get(1)));
        double degrees = Math.toDegrees(Math.abs(Math.atan2(dVar.c(), dVar.a())));
        float f2 = this.v;
        return degrees <= ((double) f2) || 180.0d - degrees <= ((double) f2);
    }

    public void c(@DimenRes int i2) {
        c(this.f15517a.getResources().getDimension(i2));
    }
}
