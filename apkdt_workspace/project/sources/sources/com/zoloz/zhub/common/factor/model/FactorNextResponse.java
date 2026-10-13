package com.zoloz.zhub.common.factor.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class FactorNextResponse {
    public Integer nextIndex;
    public String versionToken = "";
    public List<FactorNextResponseInner> response = new ArrayList();
    public List<Map<String, String>> zStack = new ArrayList();

    public String toString() {
        return "FactorNextResponse{nextIndex = " + this.nextIndex + ", versionToken = " + this.versionToken + ", response = " + this.response.toString() + ", zStack = " + this.zStack.toString() + '}';
    }
}
