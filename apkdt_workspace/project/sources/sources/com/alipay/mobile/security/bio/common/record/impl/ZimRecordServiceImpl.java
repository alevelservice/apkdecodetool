package com.alipay.mobile.security.bio.common.record.impl;

import android.util.Base64;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.mobile.security.bio.log.BehaviourIdEnum;
import com.alipay.mobile.security.bio.log.VerifyBehavior;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.ZimRecordService;
import com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService;
import com.alipay.mobile.security.bio.utils.StringUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ZimRecordServiceImpl extends ZimRecordService {
    public static final String LOG_CLASSIFIERS = "log_classifiers";
    public static final String ZOLOZ_RECORDS = "zoloz_records";
    private MonitorLogService mMonitorLogService;
    protected String mUniqueID = "";
    protected int mSequenceID = 0;
    protected int mRetryID = -1;
    protected Map<String, String> mExtParams = new Hashtable();
    private final Set<String> mLogClassifiers = new HashSet(Arrays.asList(MetaRecord.DEFAULT_LOG_CLASSIFIERS.split(MetaRecord.LOG_SEPARATOR)));

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public void addExtProperties(Map<String, String> map) {
        this.mExtParams.putAll(map);
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public void addExtProperty(String str, String str2) {
        this.mExtParams.put(str, str2);
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public Map<String, String> getExtProperties() {
        return this.mExtParams;
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public int getRetryID() {
        return this.mRetryID;
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public int getSequenceID() {
        return this.mSequenceID;
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public String getUniqueID() {
        return this.mUniqueID;
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public void init(String str, int i2, int i3, Map<String, String> map) {
        this.mUniqueID = str;
        this.mSequenceID = i2;
        this.mRetryID = i3;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                    this.mExtParams.put(entry.getKey(), entry.getValue());
                }
            }
        }
        String str2 = "mExtParams:" + StringUtil.map2String(this.mExtParams);
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onCreate(BioServiceManager bioServiceManager) {
        super.onCreate(bioServiceManager);
        this.mMonitorLogService = (MonitorLogService) bioServiceManager.getBioService(MonitorLogService.class);
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public void retry() {
        this.mRetryID++;
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public void setLogClassifier(Set<String> set) {
        if (set != null) {
            this.mLogClassifiers.clear();
            this.mLogClassifiers.addAll(set);
        }
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public boolean write(MetaRecord metaRecord) {
        return write(metaRecord, null);
    }

    @Override // com.alipay.mobile.security.bio.service.ZimRecordService
    public boolean write(MetaRecord metaRecord, Map<String, String> map) {
        JSONObject jSONObject;
        if (metaRecord != null && this.mLogClassifiers.contains(metaRecord.getClassifier())) {
            VerifyBehavior verifyBehavior = new VerifyBehavior();
            verifyBehavior.setUserCaseID(metaRecord.getCaseID());
            String actionID = metaRecord.getActionID();
            verifyBehavior.setAppID(metaRecord.getAppID());
            verifyBehavior.setSeedID(metaRecord.getSeedID());
            verifyBehavior.setParam1(this.mUniqueID);
            StringBuilder sb = new StringBuilder();
            int i2 = this.mSequenceID + 1;
            this.mSequenceID = i2;
            sb.append(i2);
            sb.append("");
            verifyBehavior.setParam2(sb.toString());
            verifyBehavior.setParam3(this.mRetryID + "");
            verifyBehavior.setBizType(metaRecord.getBizType());
            verifyBehavior.setLoggerLevel(metaRecord.getPriority());
            verifyBehavior.addExtParam("base64", "true");
            HashMap hashMap = new HashMap();
            for (String str : this.mExtParams.keySet()) {
                String str2 = this.mExtParams.get(str);
                if (ZimRecordService.EXCLUDE_EXT_PARAMS.contains(str)) {
                    verifyBehavior.addExtParam(str, str2);
                } else {
                    hashMap.put(str, str2);
                }
            }
            verifyBehavior.addExtParam("publicParam", Base64.encodeToString(new JSONObject(hashMap).toString().getBytes(), 2));
            if (map != null) {
                jSONObject = new JSONObject(map);
            } else {
                jSONObject = new JSONObject();
            }
            verifyBehavior.addExtParam("extParam", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            BehaviourIdEnum convert = BehaviourIdEnum.convert(actionID);
            MonitorLogService monitorLogService = this.mMonitorLogService;
            if (monitorLogService == null) {
                new RuntimeException(ZimRecordServiceImpl.class.getName() + ".write(" + metaRecord + ") failed. MonitorLogService==null");
            } else {
                monitorLogService.logBehavior(convert, verifyBehavior);
                return true;
            }
        }
        return false;
    }
}
