package com.alipay.zoloz.zface.utils;

import android.graphics.RectF;
import com.alibaba.fastjson.JSONObject;
import com.alipay.zoloz.toyger.algorithm.TGFaceAttr;
import com.alipay.zoloz.toyger.algorithm.TGFaceState;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.alipay.zoloz.toyger.face.ToygerFaceService;
import com.alipay.zoloz.zface.beans.ToygerFrame;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ToygerFrameUtil {
    public static Map<String, String> getFaceParam(ToygerFrame toygerFrame) {
        HashMap hashMap = new HashMap();
        JSONObject jSONObject = new JSONObject();
        jSONObject.putAll(getFaceState(toygerFrame.tgFaceState));
        hashMap.put("toygerRetParam", jSONObject.toJSONString());
        hashMap.put("algoType", BlobStatic.META_TYPE_FACE);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.putAll(getFaceParam(toygerFrame.tgFaceAttr));
        hashMap.put("algorithmDetails", jSONObject2.toJSONString());
        Map<String, Object> map = toygerFrame.extInfo;
        hashMap.put(ToygerFaceService.KEY_TOYGER_TIME_CONSUMING, (map == null || !map.containsKey(ToygerFaceService.KEY_TOYGER_TIME_CONSUMING)) ? "" : (String) toygerFrame.extInfo.remove(ToygerFaceService.KEY_TOYGER_TIME_CONSUMING));
        return hashMap;
    }

    public static Map<String, String> getFaceState(TGFaceState tGFaceState) {
        if (tGFaceState == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("progress", tGFaceState.progress + "");
        hashMap.put("goodYaw", tGFaceState.goodYaw + "");
        hashMap.put("isMoving", tGFaceState.isMoving + "");
        hashMap.put("messageCode", tGFaceState.messageCode + "");
        hashMap.put("brightness", tGFaceState.brightness + "");
        hashMap.put("distance", tGFaceState.distance + "");
        hashMap.put("goodQuality", tGFaceState.goodQuality + "");
        hashMap.put("hasFace", tGFaceState.hasFace + "");
        hashMap.put("faceInCenter", tGFaceState.faceInCenter + "");
        hashMap.put("goodPitch", tGFaceState.goodPitch + "");
        return hashMap;
    }

    public static Map<String, String> getFaceParam(TGFaceAttr tGFaceAttr) {
        if (tGFaceAttr == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        RectF rectF = tGFaceAttr.faceRegion;
        if (rectF != null) {
            hashMap.put("frectwidth", rectF.width() + "");
            hashMap.put("frectheight", rectF.height() + "");
            hashMap.put("frectX", rectF.left + "");
            hashMap.put("frectY", rectF.top + "");
        } else {
            hashMap.put("frectwidth", "");
            hashMap.put("frectheight", "");
            hashMap.put("frectX", "");
            hashMap.put("frectY", "");
        }
        hashMap.put("fquality", tGFaceAttr.quality + "");
        hashMap.put("flight", tGFaceAttr.brightness + "");
        hashMap.put("facePitch", tGFaceAttr.pitch + "");
        hashMap.put("faceYaw", tGFaceAttr.yaw + "");
        hashMap.put("faceEyeLeftHwratio", tGFaceAttr.leftEyeBlinkRatio + "");
        hashMap.put("faceEyeRightHwratio", tGFaceAttr.rightEyeBlinkRatio + "");
        hashMap.put("faceGaussian", tGFaceAttr.gaussian + "");
        hashMap.put("faceMotion", tGFaceAttr.motion + "");
        hashMap.put("integrity", tGFaceAttr.integrity + "");
        hashMap.put("deviceLight", tGFaceAttr.brightness + "");
        hashMap.put("distance", ((int) tGFaceAttr.distance) + "");
        hashMap.put("keypts10", Arrays.toString(tGFaceAttr.keypts10));
        hashMap.put("confidence", tGFaceAttr.confidence + "");
        hashMap.put("roll", tGFaceAttr.roll + "");
        hashMap.put("iodRatio", tGFaceAttr.iodRatio + "");
        hashMap.put("deepLiveness", tGFaceAttr.deepLiveness + "");
        return hashMap;
    }
}
