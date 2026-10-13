package com.mapbox.mapboxsdk.location;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: LocationComponentCompassEngine.java */
/* loaded from: classes2.dex */
class l implements b, SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final WindowManager f15870a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final SensorManager f15871b;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private Sensor f15873d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private Sensor f15874e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private Sensor f15875f;

    /* renamed from: i, reason: collision with root package name */
    private float[] f15878i;

    /* renamed from: j, reason: collision with root package name */
    private float f15879j;

    /* renamed from: k, reason: collision with root package name */
    private int f15880k;

    /* renamed from: l, reason: collision with root package name */
    private long f15881l;

    /* renamed from: c, reason: collision with root package name */
    private final List<c> f15872c = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private float[] f15876g = new float[4];

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    private float[] f15877h = new float[9];

    @Nullable
    private float[] m = new float[3];

    @Nullable
    private float[] n = new float[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(@NonNull WindowManager windowManager, @NonNull SensorManager sensorManager) {
        this.f15870a = windowManager;
        this.f15871b = sensorManager;
        this.f15873d = sensorManager.getDefaultSensor(11);
        if (this.f15873d == null) {
            Logger.d("Mbgl-LocationComponentCompassEngine", "Rotation vector sensor not supported on device, falling back to accelerometer and magnetic field.");
            this.f15874e = sensorManager.getDefaultSensor(1);
            this.f15875f = sensorManager.getDefaultSensor(2);
        }
    }

    private void c() {
        if (b()) {
            this.f15871b.registerListener(this, this.f15873d, 100000);
        } else {
            this.f15871b.registerListener(this, this.f15874e, 100000);
            this.f15871b.registerListener(this, this.f15875f, 100000);
        }
    }

    private void d() {
        if (b()) {
            this.f15871b.unregisterListener(this, this.f15873d);
        } else {
            this.f15871b.unregisterListener(this, this.f15874e);
            this.f15871b.unregisterListener(this, this.f15875f);
        }
    }

    private void e() {
        int i2;
        int i3;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime < this.f15881l) {
            return;
        }
        float[] fArr = this.f15878i;
        if (fArr != null) {
            SensorManager.getRotationMatrixFromVector(this.f15877h, fArr);
        } else {
            SensorManager.getRotationMatrix(this.f15877h, null, this.m, this.n);
        }
        int rotation = this.f15870a.getDefaultDisplay().getRotation();
        int i4 = 129;
        int i5 = 1;
        if (rotation == 1) {
            i2 = 2;
            i3 = 129;
        } else if (rotation == 2) {
            i2 = 129;
            i3 = 130;
        } else if (rotation != 3) {
            i2 = 1;
            i3 = 2;
        } else {
            i2 = 130;
            i3 = 1;
        }
        float[] fArr2 = new float[9];
        SensorManager.remapCoordinateSystem(this.f15877h, i2, i3, fArr2);
        float[] fArr3 = new float[3];
        SensorManager.getOrientation(fArr2, fArr3);
        if (fArr3[1] < -0.7853981633974483d) {
            int rotation2 = this.f15870a.getDefaultDisplay().getRotation();
            if (rotation2 != 1) {
                if (rotation2 != 2) {
                    if (rotation2 != 3) {
                        i4 = 1;
                        i5 = 3;
                    } else {
                        i4 = 131;
                    }
                }
                i5 = 131;
            } else {
                i4 = 3;
                i5 = 129;
            }
        } else if (fArr3[1] > 0.7853981633974483d) {
            int rotation3 = this.f15870a.getDefaultDisplay().getRotation();
            if (rotation3 != 1) {
                if (rotation3 != 2) {
                    if (rotation3 != 3) {
                        i4 = 1;
                        i5 = 131;
                    } else {
                        i4 = 3;
                    }
                }
                i5 = 3;
            } else {
                i4 = 131;
                i5 = 129;
            }
        } else if (Math.abs(fArr3[2]) > 1.5707963267948966d) {
            int rotation4 = this.f15870a.getDefaultDisplay().getRotation();
            if (rotation4 == 1) {
                i4 = 130;
                i5 = 129;
            } else if (rotation4 == 2) {
                i5 = 2;
            } else if (rotation4 != 3) {
                i4 = 1;
                i5 = 130;
            } else {
                i4 = 2;
            }
        } else {
            i4 = i2;
            i5 = i3;
        }
        SensorManager.remapCoordinateSystem(this.f15877h, i4, i5, fArr2);
        SensorManager.getOrientation(fArr2, fArr3);
        a((float) Math.toDegrees(fArr3[0]));
        this.f15881l = elapsedRealtime + 500;
    }

    @Override // com.mapbox.mapboxsdk.location.b
    public void a(@NonNull c cVar) {
        this.f15872c.remove(cVar);
        if (this.f15872c.isEmpty()) {
            d();
        }
    }

    @Override // com.mapbox.mapboxsdk.location.b
    public void b(@NonNull c cVar) {
        if (this.f15872c.isEmpty()) {
            c();
        }
        this.f15872c.add(cVar);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
        if (this.f15880k != i2) {
            Iterator<c> it = this.f15872c.iterator();
            while (it.hasNext()) {
                it.next().a(i2);
            }
            this.f15880k = i2;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(@NonNull SensorEvent sensorEvent) {
        if (this.f15880k == 0) {
            Logger.d("Mbgl-LocationComponentCompassEngine", "Compass sensor is unreliable, device calibration is needed.");
        }
        if (sensorEvent.sensor.getType() == 11) {
            this.f15878i = a(sensorEvent);
            e();
        } else if (sensorEvent.sensor.getType() == 1) {
            this.m = a(a(sensorEvent), this.m);
            e();
        } else if (sensorEvent.sensor.getType() == 2) {
            this.n = a(a(sensorEvent), this.n);
            e();
        }
    }

    private boolean b() {
        return this.f15873d != null;
    }

    @Override // com.mapbox.mapboxsdk.location.b
    public float a() {
        return this.f15879j;
    }

    private void a(float f2) {
        Iterator<c> it = this.f15872c.iterator();
        while (it.hasNext()) {
            it.next().a(f2);
        }
        this.f15879j = f2;
    }

    @NonNull
    private float[] a(@NonNull float[] fArr, @Nullable float[] fArr2) {
        if (fArr2 == null) {
            return fArr;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr2[i2] = fArr2[i2] + ((fArr[i2] - fArr2[i2]) * 0.45f);
        }
        return fArr2;
    }

    @NonNull
    private float[] a(@NonNull SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr.length <= 4) {
            return fArr;
        }
        System.arraycopy(fArr, 0, this.f15876g, 0, 4);
        return this.f15876g;
    }
}
