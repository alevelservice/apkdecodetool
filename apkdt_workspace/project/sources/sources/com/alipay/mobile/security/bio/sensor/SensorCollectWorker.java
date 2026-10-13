package com.alipay.mobile.security.bio.sensor;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.alipay.mobile.security.bio.sensor.SensorCollectors;

/* loaded from: classes.dex */
class SensorCollectWorker implements SensorEventListener {
    private static final int SENSOR_RATEUS = 50000;
    private String mResultData;
    private Sensor mSensorEntity;
    private SensorManager mSensorManager;
    String mSensorName;
    int mSensorType;
    private Object objLock = new Object();

    public SensorCollectWorker(SensorManager sensorManager, SensorCollectors.SensorType sensorType, int i2) {
        reset();
        if (sensorManager == null || sensorType == null) {
            return;
        }
        this.mSensorManager = sensorManager;
        this.mSensorEntity = sensorManager.getDefaultSensor(sensorType.getmSensorType());
        this.mSensorName = sensorType.getSensorName();
        this.mSensorType = sensorType.getmSensorType();
        if (this.mSensorEntity == null) {
            String str = "SensorCollectWorker: " + sensorType.getSensorName() + " 注册失败.［" + System.currentTimeMillis() + "]";
            return;
        }
        String str2 = "SensorCollectWorker: " + sensorType.getSensorName() + " 注册成功.［" + System.currentTimeMillis() + "]";
    }

    private void reset() {
        this.mResultData = "[,,]";
        this.mSensorEntity = null;
    }

    public void destory() {
        SensorManager sensorManager;
        Sensor sensor = this.mSensorEntity;
        if (sensor == null || (sensorManager = this.mSensorManager) == null) {
            return;
        }
        try {
            sensorManager.unregisterListener(this, sensor);
        } catch (Throwable unused) {
        }
        this.mSensorEntity = null;
        String str = "SensorCollectWorker: " + this.mSensorName + " 停止采集数据.［" + System.currentTimeMillis() + "]";
    }

    public String getName() {
        return this.mSensorEntity == null ? "" : this.mSensorName;
    }

    public String getResultData() {
        String str;
        synchronized (this.objLock) {
            str = this.mResultData;
        }
        return str;
    }

    public int getType() {
        if (this.mSensorEntity == null) {
            return -1;
        }
        return this.mSensorType;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent == null || sensorEvent.values == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        try {
            int length = sensorEvent.values.length;
            sb.append("[");
            int i2 = 0;
            while (i2 < length) {
                sb.append((int) (sensorEvent.values[i2] * 100.0f));
                i2++;
                if (i2 < length) {
                    sb.append(",");
                }
            }
            sb.append("]");
        } catch (Throwable unused) {
        }
        synchronized (this.objLock) {
            this.mResultData = sb.toString();
        }
    }

    public void start() {
        SensorManager sensorManager;
        Sensor sensor = this.mSensorEntity;
        if (sensor == null || (sensorManager = this.mSensorManager) == null) {
            return;
        }
        sensorManager.registerListener(this, sensor, SENSOR_RATEUS);
        String str = "SensorCollectWorker: " + this.mSensorName + " 开始采集数据.［" + System.currentTimeMillis() + "]";
    }
}
