package com.alipay.zoloz.hardware.camera.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.alipay.android.phone.zoloz.camera.BuildConfig;
import com.alipay.mobile.security.bio.utils.DisplayUtil;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;
import com.alipay.zoloz.hardware.camera.ICameraCallback;
import com.alipay.zoloz.hardware.camera.ICameraInterface;
import com.alipay.zoloz.hardware.camera.utils.DeviceSettingUtil;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class CameraSurfaceView extends SurfaceView implements SurfaceHolder.Callback {
    static ICameraInterface mCameraInterface;
    ICameraCallback mCameraCallback;
    Context mContext;
    private DeviceSetting mDeviceSetting;
    float mPreviewRate;
    SurfaceHolder mSurfaceHolder;

    public CameraSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context.getApplicationContext();
        this.mPreviewRate = DisplayUtil.getScreenRate(this.mContext);
        this.mSurfaceHolder = getHolder();
        this.mSurfaceHolder.setFormat(-2);
        this.mSurfaceHolder.setType(3);
        this.mSurfaceHolder.addCallback(this);
    }

    public static ICameraInterface getCameraImpl(Context context) {
        if (mCameraInterface == null) {
            try {
                mCameraInterface = (ICameraInterface) Class.forName("com.alipay.zoloz.hardware.camera.impl.AndroidImpl").getMethod("getInstance", Context.class).invoke(null, context);
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (NoSuchMethodException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
        return mCameraInterface;
    }

    public static String getCameraName() {
        try {
            Field field = BuildConfig.class.getField("CAMERA");
            field.setAccessible(true);
            return (String) field.get(BuildConfig.class);
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return "Android";
        }
    }

    public static void release() {
        mCameraInterface = null;
    }

    public SurfaceHolder getSurfaceHolder() {
        return this.mSurfaceHolder;
    }

    public void init(DeviceSetting[] deviceSettingArr) {
        this.mDeviceSetting = DeviceSettingUtil.getPropertyDeviceSetting(deviceSettingArr);
        getCameraImpl(this.mContext);
        ICameraInterface iCameraInterface = mCameraInterface;
        if (iCameraInterface != null) {
            iCameraInterface.initCamera(this.mDeviceSetting);
        }
    }

    public void setCameraCallback(ICameraCallback iCameraCallback) {
        this.mCameraCallback = iCameraCallback;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        ICameraInterface iCameraInterface = mCameraInterface;
        if (iCameraInterface != null) {
            iCameraInterface.startPreview(this.mSurfaceHolder, this.mPreviewRate, i3, i4);
            if (this.mCameraCallback != null) {
                int cameraViewRotation = mCameraInterface.getCameraViewRotation();
                if (cameraViewRotation == 90 || cameraViewRotation == 270) {
                    i3 = mCameraInterface.getPreviewHeight();
                    i4 = mCameraInterface.getPreviewWidth();
                } else if (cameraViewRotation == 0 || cameraViewRotation == 180) {
                    i3 = mCameraInterface.getPreviewWidth();
                    i4 = mCameraInterface.getPreviewHeight();
                }
                this.mCameraCallback.onSurfaceChanged(i3, i4);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        ICameraInterface iCameraInterface = mCameraInterface;
        if (iCameraInterface != null) {
            iCameraInterface.setCallback(this.mCameraCallback);
        }
        try {
            if (mCameraInterface != null) {
                mCameraInterface.startCamera();
            }
            ICameraCallback iCameraCallback = this.mCameraCallback;
            if (iCameraCallback != null) {
                iCameraCallback.onSurfaceCreated();
            }
        } catch (Exception unused) {
            ICameraCallback iCameraCallback2 = this.mCameraCallback;
            if (iCameraCallback2 != null) {
                iCameraCallback2.onError(-1);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ICameraInterface iCameraInterface = mCameraInterface;
        if (iCameraInterface != null) {
            iCameraInterface.stopCamera();
            mCameraInterface.setCallback(null);
        }
        ICameraCallback iCameraCallback = this.mCameraCallback;
        if (iCameraCallback != null) {
            iCameraCallback.onSurfaceDestroyed();
        }
    }
}
