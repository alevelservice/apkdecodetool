package com.alipay.zoloz.toyger.algorithm;

/* loaded from: classes.dex */
public class ToygerLivenessConfig {
    public float batLivenessThreshold;
    public String collection;
    public float dragonflyMax;
    public float dragonflyMin;
    public boolean fppPreProcess;
    public float geminiMax;
    public float geminiMin;
    public String livenessCombinations;

    public ToygerLivenessConfig() {
        this.batLivenessThreshold = 0.5f;
        this.dragonflyMin = 0.0f;
        this.dragonflyMax = 0.0f;
        this.geminiMin = 0.0f;
        this.geminiMax = 0.0f;
        this.fppPreProcess = false;
    }

    public String toString() {
        return "ToygerLivenessConfig{livenessCombinations='" + this.livenessCombinations + "', collection='" + this.collection + "', batLivenessThreshold=" + this.batLivenessThreshold + ", dragonflyMin=" + this.dragonflyMin + ", dragonflyMax=" + this.dragonflyMax + ", geminiMin=" + this.geminiMin + ", geminiMax=" + this.geminiMax + '}';
    }

    public ToygerLivenessConfig(String str, float f2, float f3, float f4, float f5, float f6, boolean z) {
        this.batLivenessThreshold = 0.5f;
        this.dragonflyMin = 0.0f;
        this.dragonflyMax = 0.0f;
        this.geminiMin = 0.0f;
        this.geminiMax = 0.0f;
        this.fppPreProcess = false;
        this.livenessCombinations = str;
        this.batLivenessThreshold = f2;
        this.dragonflyMin = f3;
        this.dragonflyMax = f4;
        this.geminiMin = f5;
        this.geminiMax = f6;
        this.fppPreProcess = z;
    }
}
