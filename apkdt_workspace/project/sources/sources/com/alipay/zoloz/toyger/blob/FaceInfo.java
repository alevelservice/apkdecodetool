package com.alipay.zoloz.toyger.blob;

import android.graphics.Point;
import android.graphics.Rect;
import java.util.List;

/* loaded from: classes.dex */
public class FaceInfo {
    public float confidence;
    public String feaVersion;
    public String feature;
    public List<Point> points;
    public float quality;
    public Rect rect;

    public FaceInfo() {
    }

    public FaceInfo(Rect rect, List<Point> list, float f2, float f3, String str, String str2) {
        this.rect = rect;
        this.points = list;
        this.confidence = f2;
        this.quality = f3;
        this.feature = str;
        this.feaVersion = str2;
    }
}
