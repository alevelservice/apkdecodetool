package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapKeyListener.java */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private final a0 f16101a;

    /* renamed from: b, reason: collision with root package name */
    private final b0 f16102b;

    /* renamed from: c, reason: collision with root package name */
    private final l f16103c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private a f16104d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapKeyListener.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private boolean f16105e = false;

        a() {
        }

        public void a() {
            this.f16105e = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16105e) {
                return;
            }
            m.this.f16103c.b(new PointF(m.this.f16102b.u() / 2.0f, m.this.f16102b.n() / 2.0f), true);
            m.this.f16104d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(a0 a0Var, b0 b0Var, l lVar) {
        this.f16101a = a0Var;
        this.f16102b = b0Var;
        this.f16103c = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i2, KeyEvent keyEvent) {
        if (keyEvent.isCanceled()) {
            return false;
        }
        if ((i2 != 23 && i2 != 66) || !this.f16102b.O()) {
            return false;
        }
        this.f16103c.a(new PointF(this.f16102b.u() / 2.0f, this.f16102b.n() / 2.0f), true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i2, KeyEvent keyEvent) {
        if ((i2 != 23 && i2 != 66) || !this.f16102b.O()) {
            return false;
        }
        this.f16103c.b(new PointF(this.f16102b.u() / 2.0f, this.f16102b.n() / 2.0f), true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i2, @NonNull KeyEvent keyEvent) {
        double d2 = keyEvent.getRepeatCount() >= 5 ? 50.0d : 10.0d;
        if (i2 != 66) {
            switch (i2) {
                case 19:
                    if (!this.f16102b.M()) {
                        return false;
                    }
                    this.f16101a.a();
                    this.f16101a.a(0.0d, d2, 0L);
                    return true;
                case 20:
                    if (!this.f16102b.M()) {
                        return false;
                    }
                    this.f16101a.a();
                    this.f16101a.a(0.0d, -d2, 0L);
                    return true;
                case 21:
                    if (!this.f16102b.M()) {
                        return false;
                    }
                    this.f16101a.a();
                    this.f16101a.a(d2, 0.0d, 0L);
                    return true;
                case 22:
                    if (!this.f16102b.M()) {
                        return false;
                    }
                    this.f16101a.a();
                    this.f16101a.a(-d2, 0.0d, 0L);
                    return true;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        keyEvent.startTracking();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a aVar = this.f16104d;
            if (aVar != null) {
                aVar.a();
                this.f16104d = null;
            }
            this.f16104d = new a();
            new Handler(Looper.getMainLooper()).postDelayed(this.f16104d, ViewConfiguration.getLongPressTimeout());
            return true;
        }
        if (actionMasked == 1) {
            if (!this.f16102b.O()) {
                return false;
            }
            if (this.f16104d != null) {
                this.f16103c.a(new PointF(this.f16102b.u() / 2.0f, this.f16102b.n() / 2.0f), true);
            }
            return true;
        }
        if (actionMasked != 2) {
            if (actionMasked != 3) {
                return false;
            }
            a aVar2 = this.f16104d;
            if (aVar2 != null) {
                aVar2.a();
                this.f16104d = null;
            }
            return true;
        }
        if (!this.f16102b.M()) {
            return false;
        }
        this.f16101a.a();
        a0 a0Var = this.f16101a;
        double x = motionEvent.getX();
        Double.isNaN(x);
        double y = motionEvent.getY();
        Double.isNaN(y);
        a0Var.a(x * (-10.0d), y * (-10.0d), 0L);
        return true;
    }
}
