package com.alipay.mobile.security.bio.common.record;

import java.util.Map;

/* loaded from: classes.dex */
public class MetaRecord {
    public static final String BIZ_TYPE = "Biometrics";
    public static final String DEFAULT_LOG_CLASSIFIERS = "1#2";
    public static final String LOG_SEPARATOR = "#";
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = 3;
    public static final int PRIORITY_MIDDLE = 2;
    private String actionID;
    private String appID;
    private String bizType;
    private String caseID;
    private String classifier;
    private boolean enableSequence;
    private String param1;
    private String param2;
    private String param3;
    private Map<String, String> param4;
    private int priority;
    private String seedID;
    private int sequenceId;

    public MetaRecord() {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
    }

    public String getActionID() {
        return this.actionID;
    }

    public String getAppID() {
        return this.appID;
    }

    public String getBizType() {
        return this.bizType;
    }

    public String getCaseID() {
        return this.caseID;
    }

    public String getClassifier() {
        return this.classifier;
    }

    public String getParam1() {
        return this.param1;
    }

    public String getParam2() {
        return this.param2;
    }

    public String getParam3() {
        return this.param3;
    }

    public Map<String, String> getParam4() {
        return this.param4;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getSeedID() {
        return this.seedID;
    }

    public int getSequenceId() {
        return this.sequenceId;
    }

    public boolean isEnableSequence() {
        return this.enableSequence;
    }

    public void setActionID(String str) {
        this.actionID = str;
    }

    public void setAppID(String str) {
        this.appID = str;
    }

    public void setBizType(String str) {
        this.bizType = str;
    }

    public void setCaseID(String str) {
        this.caseID = str;
    }

    public void setClassifier(String str) {
        this.classifier = str;
    }

    public void setEnableSequence(boolean z) {
        this.enableSequence = z;
    }

    public void setParam1(String str) {
        this.param1 = str;
    }

    public void setParam2(String str) {
        this.param2 = str;
    }

    public void setParam3(String str) {
        this.param3 = str;
    }

    public void setParam4(Map<String, String> map) {
        this.param4 = map;
    }

    public void setPriority(int i2) {
        this.priority = i2;
    }

    public void setSeedID(String str) {
        this.seedID = str;
    }

    public void setSequenceId(int i2) {
        this.sequenceId = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("caseID:" + this.caseID + LOG_SEPARATOR);
        sb.append("actionID:" + this.actionID + LOG_SEPARATOR);
        sb.append("appID:" + this.appID + LOG_SEPARATOR);
        sb.append("seedID:" + this.seedID + LOG_SEPARATOR);
        sb.append("bizType:" + this.bizType + LOG_SEPARATOR);
        sb.append("priority:" + this.priority + LOG_SEPARATOR);
        sb.append("classifier:" + this.classifier + LOG_SEPARATOR);
        sb.append("param1:" + this.param1 + LOG_SEPARATOR);
        sb.append("param2:" + this.param2 + LOG_SEPARATOR);
        sb.append("param3:" + this.param3 + LOG_SEPARATOR);
        sb.append("param4:");
        Map<String, String> map = this.param4;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append("@" + ((Object) entry.getKey()) + "=" + ((Object) entry.getValue()));
            }
        }
        return sb.toString();
    }

    public MetaRecord(String str, String str2, String str3, String str4) {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
        this.caseID = str;
        this.actionID = str2;
        this.appID = str3;
        this.seedID = str4;
    }

    public MetaRecord(String str, String str2, String str3, String str4, String str5) {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
        this.caseID = str;
        this.actionID = str2;
        this.appID = str3;
        this.seedID = str4;
        this.classifier = str5;
    }

    public MetaRecord(String str, String str2, String str3, String str4, int i2) {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
        this.caseID = str;
        this.actionID = str2;
        this.appID = str3;
        this.seedID = str4;
        this.priority = i2;
    }

    public MetaRecord(String str, String str2, String str3, String str4, int i2, String str5) {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
        this.caseID = str;
        this.actionID = str2;
        this.appID = str3;
        this.seedID = str4;
        this.priority = i2;
        this.classifier = str5;
    }

    public MetaRecord(String str, String str2, String str3, String str4, boolean z) {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
        this.caseID = str;
        this.actionID = str2;
        this.appID = str3;
        this.seedID = str4;
        this.enableSequence = z;
    }

    public MetaRecord(String str, String str2, String str3, String str4, boolean z, int i2) {
        this.bizType = BIZ_TYPE;
        this.enableSequence = true;
        this.param1 = "";
        this.param2 = "";
        this.param3 = "";
        this.priority = 2;
        this.classifier = "1";
        this.caseID = str;
        this.actionID = str2;
        this.appID = str3;
        this.seedID = str4;
        this.enableSequence = z;
        this.priority = i2;
    }
}
