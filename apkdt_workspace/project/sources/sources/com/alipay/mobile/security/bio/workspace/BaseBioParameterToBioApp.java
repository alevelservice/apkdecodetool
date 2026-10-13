package com.alipay.mobile.security.bio.workspace;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.security.bio.api.BioParameter;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.utils.SignHelper;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class BaseBioParameterToBioApp {
    protected static final String TAG_TGCONFIG = "\"ui\":992";
    final BioTransfer bioTransfer;
    protected final Context mContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseBioParameterToBioApp(Context context, BioTransfer bioTransfer) {
        this.bioTransfer = bioTransfer;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getEnv(String str) {
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                Matcher matcher = Pattern.compile("(?<=\\\"env\\\":\\s?\"?)(\\d+)(?=\"?,)").matcher(str);
                if (matcher.find()) {
                    String group = matcher.group();
                    String str2 = "envStr=" + group;
                    i2 = Integer.parseInt(group);
                }
            } catch (Throwable unused) {
            }
        }
        String str3 = "env=" + i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getUi(String str) {
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                Matcher matcher = Pattern.compile("(?<=\\\"ui\\\":\\s?\"?)(\\d+)(?=\"?,)").matcher(str);
                if (matcher.find()) {
                    String group = matcher.group();
                    String str2 = "uiStr=" + group;
                    i2 = Integer.parseInt(group) + 1000;
                }
            } catch (Throwable unused) {
            }
        }
        String str3 = "ui=" + i2;
        return i2;
    }

    public static String getUniqueTag() {
        return SignHelper.MD5(System.currentTimeMillis() + "_" + (Math.random() * 10000.0d) + UUID.randomUUID().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String parseFaceProtocol(JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("f", (Object) "fc");
        jSONObject2.put("fcToken", (Object) this.bioTransfer.fcToken);
        this.bioTransfer.mFcSpecialData = jSONObject2;
        if (z) {
            return jSONObject.getString("faceCfg");
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("content", (Object) jSONObject.getString("faceCfg"));
        return jSONObject3.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String parseIDProtocol(JSONObject jSONObject, boolean z) {
        String string = jSONObject.getString("paperGuideUrl");
        String string2 = jSONObject.getString("showPaperGuide");
        String string3 = jSONObject.getString("certType");
        int intValue = jSONObject.getIntValue("paperStartPage");
        int intValue2 = jSONObject.getIntValue("paperTotalPage");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("showPaperGuide", (Object) string2);
        jSONObject2.put("paperGuideUrl", (Object) string);
        jSONObject2.put("certType", (Object) string3);
        jSONObject2.put("paperStartPage", (Object) Integer.valueOf(intValue));
        jSONObject2.put("paperTotalPage", (Object) Integer.valueOf(intValue2));
        jSONObject2.put("fcToken", (Object) this.bioTransfer.fcToken);
        this.bioTransfer.mFcSpecialData = jSONObject2;
        if (z) {
            return jSONObject.getString("papersCfg");
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("content", (Object) jSONObject.getString("papersCfg"));
        return jSONObject3.toString();
    }

    public abstract BioAppDescription toBioApp(BioParameter bioParameter);
}
