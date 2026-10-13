package com.alipay.mobile.security.bio.config.bean;

import com.alipay.zoloz.toyger.face.ToygerFaceAlgorithmConfig;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Algorithm {
    private String[] liveness_combination;
    private Threshold threshold;
    private float differ = 0.15f;
    private float eyeHwratio = 0.16f;
    private int blink = 0;
    private int mouth = 0;
    private int facesize = 50;
    private int yunqiQuality = 4;
    private int minpose = 0;
    private int disWeight = 4;
    private int yawWeight = 1;
    private int pitchWeight = 4;
    private String liveness_combinations = ToygerFaceAlgorithmConfig.BAT_LIVENESS;
    private float matching_score = 79.79f;
    private float pose_motion = 0.2f;
    private float pose_rectwidth = 0.25f;
    private float pose_pitch = 0.2f;
    private float pose_yaw = 0.17f;
    private float pose_light = 40.0f;
    private float pose_integrity = 0.9f;
    private float pose_gaussian = 0.15f;
    private float pose_distanceMin = 200.0f;
    private float pose_distanceMax = 1500.0f;
    private float pose_yawMin = -0.2f;
    private float pose_pitchMin = -0.2f;
    private int log_level = 0;
    private float quality_min_quality = 9.0f;
    private int stack_size = 1;
    private int stack_time = 0;
    private float batLivenessThreshold = 0.05f;

    public float getBatLivenessThreshold() {
        return this.batLivenessThreshold;
    }

    public int getBlink() {
        return this.blink;
    }

    public float getDiffer() {
        return this.differ;
    }

    public int getDisWeight() {
        return this.disWeight;
    }

    public float getEyeHwratio() {
        return this.eyeHwratio;
    }

    public int getFacesize() {
        return this.facesize;
    }

    public String[] getLiveness_combination() {
        return this.liveness_combination;
    }

    public String getLiveness_combinations() {
        return this.liveness_combinations;
    }

    public int getLog_level() {
        return this.log_level;
    }

    public float getMatching_score() {
        return this.matching_score;
    }

    public int getMinpose() {
        return this.minpose;
    }

    public int getMouth() {
        return this.mouth;
    }

    public int getPitchWeight() {
        return this.pitchWeight;
    }

    public float getPose_distanceMax() {
        return this.pose_distanceMax;
    }

    public float getPose_distanceMin() {
        return this.pose_distanceMin;
    }

    public float getPose_gaussian() {
        return this.pose_gaussian;
    }

    public float getPose_integrity() {
        return this.pose_integrity;
    }

    public float getPose_light() {
        return this.pose_light;
    }

    public float getPose_motion() {
        return this.pose_motion;
    }

    public float getPose_pitch() {
        return this.pose_pitch;
    }

    public float getPose_pitchMin() {
        return this.pose_pitchMin;
    }

    public float getPose_rectwidth() {
        return this.pose_rectwidth;
    }

    public float getPose_yaw() {
        return this.pose_yaw;
    }

    public float getPose_yawMin() {
        return this.pose_pitchMin;
    }

    public float getQuality_min_quality() {
        return this.quality_min_quality;
    }

    public int getStack_size() {
        return this.stack_size;
    }

    public int getStack_time() {
        return this.stack_time;
    }

    public int getYawWeight() {
        return this.yawWeight;
    }

    public int getYunqiQuality() {
        return this.yunqiQuality;
    }

    public void setBatLivenessThreshold(float f2) {
        this.batLivenessThreshold = f2;
    }

    public void setBlink(int i2) {
        this.blink = i2;
    }

    public void setDiffer(float f2) {
        this.differ = f2;
    }

    public void setDisWeight(int i2) {
        this.disWeight = i2;
    }

    public void setEyeHwratio(float f2) {
        this.eyeHwratio = f2;
    }

    public void setFacesize(int i2) {
        this.facesize = i2;
    }

    public void setLiveness_combination(String[] strArr) {
        this.liveness_combination = strArr;
    }

    public void setLiveness_combinations(String str) {
        this.liveness_combinations = str;
    }

    public void setLog_level(int i2) {
        this.log_level = i2;
    }

    public void setMatching_score(float f2) {
        this.matching_score = f2;
    }

    public void setMinpose(int i2) {
        this.minpose = i2;
    }

    public void setMouth(int i2) {
        this.mouth = i2;
    }

    public void setPitchWeight(int i2) {
        this.pitchWeight = i2;
    }

    public void setPose_distanceMax(float f2) {
        this.pose_distanceMax = f2;
    }

    public void setPose_distanceMin(float f2) {
        this.pose_distanceMin = f2;
    }

    public void setPose_gaussian(float f2) {
        this.pose_gaussian = f2;
    }

    public void setPose_integrity(float f2) {
        this.pose_integrity = f2;
    }

    public void setPose_light(float f2) {
        this.pose_light = f2;
    }

    public void setPose_motion(float f2) {
        this.pose_motion = f2;
    }

    public void setPose_pitch(float f2) {
        this.pose_pitch = f2;
    }

    public void setPose_pitchMin(float f2) {
        this.pose_pitchMin = f2;
    }

    public void setPose_rectwidth(float f2) {
        this.pose_rectwidth = f2;
    }

    public void setPose_yaw(float f2) {
        this.pose_yaw = f2;
    }

    public void setPose_yawMin(float f2) {
        this.pose_pitchMin = f2;
    }

    public void setQuality_min_quality(float f2) {
        this.quality_min_quality = f2;
    }

    public void setStack_size(int i2) {
        this.stack_size = i2;
    }

    public void setStack_time(int i2) {
        this.stack_time = i2;
    }

    public void setYawWeight(int i2) {
        this.yawWeight = i2;
    }

    public void setYunqiQuality(int i2) {
        this.yunqiQuality = i2;
    }

    public String toString() {
        return "Algorithm{differ=" + this.differ + ", eyeHwratio=" + this.eyeHwratio + ", blink=" + this.blink + ", mouth=" + this.mouth + ", facesize=" + this.facesize + ", yunqiQuality=" + this.yunqiQuality + ", minpose=" + this.minpose + ", disWeight=" + this.disWeight + ", yawWeight=" + this.yawWeight + ", pitchWeight=" + this.pitchWeight + ", liveness_combinations='" + this.liveness_combinations + "', matching_score=" + this.matching_score + ", pose_motion=" + this.pose_motion + ", pose_rectwidth=" + this.pose_rectwidth + ", pose_pitch=" + this.pose_pitch + ", pose_yaw=" + this.pose_yaw + ", pose_light=" + this.pose_light + ", pose_integrity=" + this.pose_integrity + ", pose_gaussian=" + this.pose_gaussian + ", pose_distanceMin=" + this.pose_distanceMin + ", pose_distanceMax=" + this.pose_distanceMax + ", pose_yawMin=" + this.pose_yawMin + ", pose_pitchMin=" + this.pose_pitchMin + ", log_level=" + this.log_level + ", quality_min_quality=" + this.quality_min_quality + ", stack_size=" + this.stack_size + ", stack_time=" + this.stack_time + ", batLivenessThreshold=" + this.batLivenessThreshold + ", liveness_combination=" + Arrays.toString(this.liveness_combination) + ", threshold=" + this.threshold + '}';
    }
}
