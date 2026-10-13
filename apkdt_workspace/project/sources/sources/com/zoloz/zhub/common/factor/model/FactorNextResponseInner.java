package com.zoloz.zhub.common.factor.model;

import java.util.Map;

/* loaded from: classes2.dex */
public class FactorNextResponseInner {
    public Map<String, Object> outParams;
    public String retCode;
    public String retCodeSub;
    public String retMessageSub;
    public Integer taskIndex;

    public String toString() {
        return "FactorNextResponseInner{taskIndex = " + this.taskIndex + ", retCode = " + this.retCode + ", retCodeSub = " + this.retCodeSub + ", retMessageSub = " + this.retMessageSub + ", outParams = " + this.outParams.toString() + '}';
    }
}
