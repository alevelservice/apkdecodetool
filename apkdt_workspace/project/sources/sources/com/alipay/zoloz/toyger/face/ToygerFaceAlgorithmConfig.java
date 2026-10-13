package com.alipay.zoloz.toyger.face;

import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.android.phone.zoloz.toyger.BuildConfig;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.zoloz.toyger.ToygerAlgorithmConfig;
import com.alipay.zoloz.toyger.algorithm.ToygerCameraConfig;
import com.alipay.zoloz.toyger.algorithm.ToygerConfig;
import com.alipay.zoloz.toyger.algorithm.ToygerLivenessConfig;
import com.alipay.zoloz.toyger.algorithm.ToygerQualityConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ToygerFaceAlgorithmConfig extends ToygerAlgorithmConfig {
    public static final String BAT_LIVENESS = "BatLiveness";
    public static final String DARK = "dark";
    public static final String DEPTH = "depth";
    public static final String DRAGONFLY_LIVENESS = "DragonflyLiveness";
    public static final String GEMINI_LIVENESS = "GeminiLiveness";
    public static final String NO_LIVENESS = "NoLiveness";
    public static final String PANO = "pano";
    public float batLivenessThreshold;
    public float dragonflyMax;
    public float dragonflyMin;
    public float geminiMax;
    public float geminiMin;
    public List<String> liveness_combination;
    public int log_level;
    public float pose_integrity;
    public float pose_pitch;
    public float pose_pitchMin;
    public float quality_min_quality;
    public float stack_time;
    public Map<String, List<Float>> threshold;
    public float blink_openness = 0.2f;
    public float eye_openness = 0.2f;
    public float pose_yaw = 0.2f;
    public float pose_yawMin = -0.2f;
    public float pose_gaussian = 0.15f;
    public float pose_motion = 1.0f;
    public float pose_rectwidth = 0.25f;
    public float pose_light = 0.3f;
    public float min_iod = 0.18f;
    public float max_iod = 0.45f;

    public ToygerFaceAlgorithmConfig() {
        this.stack_time = 2.0f;
        this.pose_pitch = 0.2f;
        this.pose_pitchMin = -0.2f;
        this.pose_integrity = 0.9f;
        Float valueOf = Float.valueOf(0.0f);
        this.dragonflyMax = 0.0f;
        this.dragonflyMin = 0.0f;
        this.geminiMin = 0.0f;
        this.geminiMax = 0.0f;
        this.quality_min_quality = 20.0f;
        this.liveness_combination = new ArrayList();
        this.threshold = new HashMap();
        if (TextUtils.equals(BuildConfig.PORTING_WALLET, BuildConfig.PORTING)) {
            this.liveness_combination.add(NO_LIVENESS);
            ArrayList arrayList = new ArrayList();
            arrayList.add(valueOf);
            this.threshold.put(NO_LIVENESS, arrayList);
            return;
        }
        if (TextUtils.equals(BuildConfig.PORTING_VENDING, BuildConfig.PORTING)) {
            this.liveness_combination.add(BAT_LIVENESS);
            this.pose_pitch = 0.17f;
            this.batLivenessThreshold = 0.5f;
            this.pose_pitchMin = -0.17f;
            this.pose_integrity = 0.98f;
            this.stack_time = 1.5f;
            return;
        }
        if (TextUtils.equals(BuildConfig.PORTING_JRCLOUD, BuildConfig.PORTING)) {
            this.liveness_combination.add(NO_LIVENESS);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(valueOf);
            this.threshold.put(NO_LIVENESS, arrayList2);
            return;
        }
        if (TextUtils.equals(BuildConfig.PORTING_SUDIYI, BuildConfig.PORTING)) {
            this.liveness_combination.add(NO_LIVENESS);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(valueOf);
            this.threshold.put(NO_LIVENESS, arrayList3);
            return;
        }
        this.liveness_combination.add(NO_LIVENESS);
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(valueOf);
        this.threshold.put(NO_LIVENESS, arrayList4);
    }

    public static ToygerFaceAlgorithmConfig from(String str) {
        return (ToygerFaceAlgorithmConfig) JSON.parseObject(str, ToygerFaceAlgorithmConfig.class);
    }

    public ToygerConfig toToygerConfig(boolean z) {
        ToygerQualityConfig toygerQualityConfig = new ToygerQualityConfig(this.pose_light, this.pose_rectwidth, this.pose_integrity, this.pose_pitch, this.pose_yaw, this.pose_gaussian, this.pose_motion, this.quality_min_quality, this.stack_time, this.min_iod, this.max_iod, this.blink_openness, this.eye_openness, this.pose_pitchMin, this.pose_yawMin);
        String str = "";
        if (this.liveness_combination != null) {
            for (int i2 = 0; i2 < this.liveness_combination.size(); i2++) {
                if (str.length() > 0) {
                    str = str.concat(MetaRecord.LOG_SEPARATOR).concat(this.liveness_combination.get(i2));
                } else {
                    str = this.liveness_combination.get(i2);
                }
            }
        }
        ToygerLivenessConfig toygerLivenessConfig = new ToygerLivenessConfig(str, this.batLivenessThreshold, this.dragonflyMin, this.dragonflyMax, this.geminiMin, this.geminiMax, z);
        toygerLivenessConfig.fppPreProcess = z;
        ToygerConfig toygerConfig = new ToygerConfig();
        toygerConfig.qualityConfig = toygerQualityConfig;
        toygerConfig.livenessConfig = toygerLivenessConfig;
        toygerConfig.cameraConfig = new ToygerCameraConfig();
        return toygerConfig;
    }
}
