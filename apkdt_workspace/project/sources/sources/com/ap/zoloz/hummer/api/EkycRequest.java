package com.ap.zoloz.hummer.api;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class EkycRequest {
    public String eKYCId;
    public Map<String, String> eKYCConfig = new HashMap();
    public Map<String, Object> bizConfig = new HashMap();
    public String clientCfg = "";

    public String toString() {
        return "EkycRequest{eKYCId=" + this.eKYCId + ", eKYCConfig=" + this.eKYCConfig.toString() + ", clientCfg=" + this.clientCfg + ", bizConfig=" + this.bizConfig.toString() + '}';
    }
}
