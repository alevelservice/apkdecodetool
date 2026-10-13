package com.mapbox.android.gestures;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import java.util.HashSet;
import java.util.Set;

/* compiled from: RotateGestureDetector.java */
@UiThread
/* loaded from: classes2.dex */
public class k extends i<a> {
    private static final Set<Integer> y = new HashSet();
    private float v;
    float w;
    float x;

    /* compiled from: RotateGestureDetector.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(@NonNull k kVar, float f2, float f3, float f4);

        boolean a(@NonNull k kVar);

        boolean a(@NonNull k kVar, float f2, float f3);
    }

    /* compiled from: RotateGestureDetector.java */
    /* loaded from: classes2.dex */
    public static class b implements a {
    }

    static {
        y.add(2);
    }

    public k(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e, com.mapbox.android.gestures.a
    public boolean a(int i2) {
        return Math.abs(this.w) >= this.v && super.a(i2);
    }

    public void b(float f2) {
        this.v = f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public boolean d() {
        super.d();
        this.x = s();
        this.w += this.x;
        if (o()) {
            float f2 = this.x;
            if (f2 != 0.0f) {
                return ((a) this.f15524h).a(this, f2, this.w);
            }
        }
        if (!a(2) || !((a) this.f15524h).a(this)) {
            return false;
        }
        k();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.e
    public void j() {
        super.j();
        this.w = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.android.gestures.i
    public void l() {
        super.l();
        if (this.x == 0.0f) {
            this.t = 0.0f;
            this.u = 0.0f;
        }
        ((a) this.f15524h).a(this, this.t, this.u, a(this.t, this.u));
    }

    @Override // com.mapbox.android.gestures.i
    @NonNull
    protected Set<Integer> p() {
        return y;
    }

    public float q() {
        return this.x;
    }

    public float r() {
        return this.w;
    }

    float s() {
        d dVar = this.m.get(new h(this.f15543l.get(0), this.f15543l.get(1)));
        return (float) Math.toDegrees(Math.atan2(dVar.e(), dVar.d()) - Math.atan2(dVar.c(), dVar.a()));
    }

    float a(float f2, float f3) {
        double d2 = (f().x * f3) + (f().y * f2);
        double pow = Math.pow(f().x, 2.0d) + Math.pow(f().y, 2.0d);
        Double.isNaN(d2);
        float abs = Math.abs((float) (d2 / pow));
        return this.x < 0.0f ? -abs : abs;
    }
}
