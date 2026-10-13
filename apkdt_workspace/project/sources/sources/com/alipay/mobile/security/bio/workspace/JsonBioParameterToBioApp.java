package com.alipay.mobile.security.bio.workspace;

import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisClientConfig;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisClientConfigContent;
import com.alipay.mobile.security.bio.common.statistics.RecordExtAction;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.HashMap;

/* loaded from: classes.dex */
public class JsonBioParameterToBioApp extends BaseBioParameterToBioApp {
    public JsonBioParameterToBioApp(Context context, BioTransfer bioTransfer) {
        super(context, bioTransfer);
    }

    private String handleFcProtocolByJson(String str) {
        BisClientConfigContent bisClientConfigContent;
        JSONObject parseObject;
        BisClientConfig bisClientConfig = (BisClientConfig) JSON.parseObject(str, BisClientConfig.class);
        if (bisClientConfig == null || (bisClientConfigContent = (BisClientConfigContent) JSON.parseObject(bisClientConfig.getContent(), BisClientConfigContent.class)) == null || bisClientConfigContent.getType() != 200 || (parseObject = JSON.parseObject(bisClientConfigContent.getAndroidcfg())) == null) {
            return "";
        }
        int i2 = this.bioTransfer.fcStep;
        if (i2 != 0) {
            return i2 == 1 ? parseFaceProtocol(parseObject, false) : "";
        }
        HashMap hashMap = new HashMap();
        this.bioTransfer.fcToken = bisClientConfigContent.getToken();
        hashMap.put("fcToken", this.bioTransfer.fcToken);
        this.bioTransfer.mRecordExtService.write(RecordExtAction.RECORD_FC_ENTRY_SDK, hashMap);
        hashMap.put(ZdocRecordService.PARAMES, str);
        this.bioTransfer.mRecordExtService.write(RecordExtAction.RECORD_FC_GET_PARAM, hashMap);
        return parseIDProtocol(parseObject, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0046  */
    @Override // com.alipay.mobile.security.bio.workspace.BaseBioParameterToBioApp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alipay.mobile.security.bio.service.BioAppDescription toBioApp(com.alipay.mobile.security.bio.api.BioParameter r13) {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.mobile.security.bio.workspace.JsonBioParameterToBioApp.toBioApp(com.alipay.mobile.security.bio.api.BioParameter):com.alipay.mobile.security.bio.service.BioAppDescription");
    }
}
