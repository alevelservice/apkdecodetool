package com.alipay.zoloz.zface.ui.util;

import a.e.a;
import android.content.res.Resources;
import android.text.TextUtils;
import com.alipay.mobile.security.bio.config.bean.FaceTips;
import com.alipay.zoloz.toyger.R;
import com.alipay.zoloz.zface.beans.FaceRemoteConfig;

/* loaded from: classes.dex */
public class FaceScanTipsUtil {
    private a<Integer, String> mRemindText;

    public FaceScanTipsUtil(Resources resources) {
        this.mRemindText = new a<>();
        initLocalTips(resources);
    }

    private void initLocalTips(Resources resources) {
        if (resources == null) {
            return;
        }
        this.mRemindText.put(1, resources.getString(R.string.zface_no_face));
        this.mRemindText.put(2, resources.getString(R.string.zface_distance_too_far));
        this.mRemindText.put(3, resources.getString(R.string.zface_distance_too_close));
        this.mRemindText.put(4, resources.getString(R.string.zface_not_in_center));
        this.mRemindText.put(5, resources.getString(R.string.zface_bad_pitch));
        this.mRemindText.put(6, resources.getString(R.string.zface_bad_yaw));
        this.mRemindText.put(7, resources.getString(R.string.zface_is_moving));
        this.mRemindText.put(8, resources.getString(R.string.zface_bad_brightness));
        this.mRemindText.put(9, resources.getString(R.string.zface_bad_quality));
        this.mRemindText.put(10, resources.getString(R.string.zface_bad_eye_openness));
        this.mRemindText.put(11, resources.getString(R.string.zface_blink_openness));
        this.mRemindText.put(12, resources.getString(R.string.zface_stack_time));
    }

    private void updateTips(int i2, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mRemindText.put(Integer.valueOf(i2), str);
    }

    public String getReimindTxt(int i2) {
        return this.mRemindText.get(Integer.valueOf(i2));
    }

    public void updateRemoteTips(FaceRemoteConfig faceRemoteConfig) {
        FaceTips faceTips;
        if (faceRemoteConfig == null || (faceTips = faceRemoteConfig.getFaceTips()) == null) {
            return;
        }
        updateTips(1, faceTips.topText_noface);
        updateTips(2, faceTips.topText_rectwidth);
        updateTips(3, faceTips.topText_max_rectwidth);
        updateTips(4, faceTips.topText_integrity);
        updateTips(5, faceTips.topText_pitch);
        updateTips(6, faceTips.topText_yaw);
        updateTips(7, faceTips.topText_stay);
        updateTips(8, faceTips.topText_light);
        updateTips(9, faceTips.topText_quality);
        updateTips(10, faceTips.topText_blink);
        updateTips(11, faceTips.topText_openness);
    }

    public FaceScanTipsUtil(Resources resources, FaceRemoteConfig faceRemoteConfig) {
        this(resources);
        updateRemoteTips(faceRemoteConfig);
    }
}
