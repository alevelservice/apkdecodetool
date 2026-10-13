package com.alipay.zoloz.hardware.camera.utils;

import android.os.Build;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;

/* loaded from: classes.dex */
public class DeviceSettingUtil {
    public static DeviceSetting getPropertyDeviceSetting(DeviceSetting[] deviceSettingArr) {
        DeviceSetting deviceSetting;
        if (deviceSettingArr != null) {
            int parseInt = Integer.parseInt(Build.VERSION.SDK);
            int length = deviceSettingArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                deviceSetting = deviceSettingArr[i2];
                if (parseInt >= deviceSetting.getMinApiLevel() && parseInt <= deviceSetting.getMaxApiLevel()) {
                    break;
                }
            }
        }
        deviceSetting = null;
        return deviceSetting == null ? new DeviceSetting() : deviceSetting;
    }
}
