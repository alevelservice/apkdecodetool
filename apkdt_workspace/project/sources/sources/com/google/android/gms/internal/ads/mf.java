package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class mf implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    private final SensorManager f8092a;

    /* renamed from: c, reason: collision with root package name */
    private final Display f8094c;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("sensorThreadLock")
    private float[] f8097f;

    /* renamed from: g, reason: collision with root package name */
    private Handler f8098g;

    /* renamed from: h, reason: collision with root package name */
    private of f8099h;

    /* renamed from: d, reason: collision with root package name */
    private final float[] f8095d = new float[9];

    /* renamed from: e, reason: collision with root package name */
    private final float[] f8096e = new float[9];

    /* renamed from: b, reason: collision with root package name */
    private final Object f8093b = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public mf(Context context) {
        this.f8092a = (SensorManager) context.getSystemService("sensor");
        this.f8094c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f8098g != null) {
            return;
        }
        Sensor defaultSensor = this.f8092a.getDefaultSensor(11);
        if (defaultSensor == null) {
            qd.b("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        this.f8098g = new jw0(handlerThread.getLooper());
        if (this.f8092a.registerListener(this, defaultSensor, 0, this.f8098g)) {
            return;
        }
        qd.b("SensorManager.registerListener failed.");
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f8098g == null) {
            return;
        }
        this.f8092a.unregisterListener(this);
        this.f8098g.post(new pf(this));
        this.f8098g = null;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.f8093b) {
            if (this.f8097f == null) {
                this.f8097f = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f8095d, fArr);
        int rotation = this.f8094c.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.f8095d, 2, 129, this.f8096e);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.f8095d, 129, 130, this.f8096e);
        } else if (rotation != 3) {
            System.arraycopy(this.f8095d, 0, this.f8096e, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.f8095d, 130, 1, this.f8096e);
        }
        a(1, 3);
        a(2, 6);
        a(5, 7);
        synchronized (this.f8093b) {
            System.arraycopy(this.f8096e, 0, this.f8097f, 0, 9);
        }
        of ofVar = this.f8099h;
        if (ofVar != null) {
            ofVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(of ofVar) {
        this.f8099h = ofVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(float[] fArr) {
        synchronized (this.f8093b) {
            if (this.f8097f == null) {
                return false;
            }
            System.arraycopy(this.f8097f, 0, fArr, 0, this.f8097f.length);
            return true;
        }
    }

    private final void a(int i2, int i3) {
        float[] fArr = this.f8096e;
        float f2 = fArr[i2];
        fArr[i2] = fArr[i3];
        fArr[i3] = f2;
    }
}
