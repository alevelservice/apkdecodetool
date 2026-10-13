package com.zoloz.zhub.common.factor.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class FactorNextRequest {
    public String hummerId = "";
    public Integer nextIndex = 0;
    public Map<String, Object> params = new HashMap();
    public String bizId = "";
    public String versionToken = "";
    public List<Map<String, String>> zStack = new ArrayList();

    public String toString() {
        return "FactorNextRequest{hummerId = " + this.hummerId + ", nextIndex = " + this.nextIndex + ", bizId = " + this.bizId + ", versionToken = " + this.versionToken + ", zStack = " + this.zStack.toString() + ", params = " + this.params.toString() + '}';
    }
}
