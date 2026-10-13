package com.alipay.mobile.security.bio.common.record.impl;

import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.mobile.security.bio.log.BehaviourIdEnum;
import com.alipay.mobile.security.bio.log.VerifyBehavior;
import com.alipay.mobile.security.bio.service.BioRecordService;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService;
import com.alipay.mobile.security.bio.utils.SignHelper;
import java.util.Hashtable;
import java.util.Map;

/* loaded from: classes.dex */
public class BioRecordServiceImpl extends BioRecordService {
    private static final String INIT_SEQUENCE_ID_KEY = "sequence_id";
    protected String mUniqueID;
    private MonitorLogService monitorLogService;
    protected int mSequenceId = 0;
    protected Map<String, String> mParam4 = new Hashtable();
    protected Object objLock = new Object();

    public BioRecordServiceImpl() {
        this.mUniqueID = "";
        this.mUniqueID = SignHelper.SHA1("" + System.currentTimeMillis() + Math.round(10000.0f));
        synchronized (this.objLock) {
            if (this.mParam4 != null) {
                this.mParam4.clear();
            }
        }
    }

    protected static void addExtParam(Map<String, String> map, Map<String, String> map2) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null && value != null) {
                    map2.put(key.toString(), value.toString());
                }
            }
        }
    }

    protected String getExtParam4() {
        StringBuilder sb = new StringBuilder();
        sb.append("ExtParam:");
        synchronized (this.objLock) {
            if (this.mParam4 != null) {
                for (Map.Entry<String, String> entry : this.mParam4.entrySet()) {
                    sb.append("@" + ((Object) entry.getKey()) + "=" + ((Object) entry.getValue()));
                }
            }
        }
        return sb.toString();
    }

    @Override // com.alipay.mobile.security.bio.service.BioRecordService
    public int getSequenceID() {
        return this.mSequenceId;
    }

    @Override // com.alipay.mobile.security.bio.service.BioRecordService
    public String getUniqueID() {
        return this.mUniqueID;
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onCreate(BioServiceManager bioServiceManager) {
        super.onCreate(bioServiceManager);
        this.monitorLogService = (MonitorLogService) bioServiceManager.getBioService(MonitorLogService.class);
        String str = BioRecordServiceImpl.class.getName() + " call mBioServiceManager.getBioService(MonitorLogService.class): " + this.monitorLogService;
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onDestroy() {
    }

    @Override // com.alipay.mobile.security.bio.service.BioRecordService
    public void setExtProperty(Map<String, String> map) {
        synchronized (this.objLock) {
            addExtParam(map, this.mParam4);
        }
    }

    @Override // com.alipay.mobile.security.bio.service.BioRecordService
    public void setUniqueID(String str) {
        this.mUniqueID = str;
    }

    public void superWrite(MetaRecord metaRecord) {
        synchronized (this.objLock) {
            if (metaRecord != null) {
                metaRecord.setParam1(this.mUniqueID);
                if (metaRecord.isEnableSequence()) {
                    this.mSequenceId++;
                    metaRecord.setSequenceId(this.mSequenceId);
                    this.mParam4.put(INIT_SEQUENCE_ID_KEY, "" + this.mSequenceId);
                } else {
                    this.mParam4.remove(INIT_SEQUENCE_ID_KEY);
                }
            }
        }
    }

    @Override // com.alipay.mobile.security.bio.service.BioRecordService
    public void write(MetaRecord metaRecord) {
        superWrite(metaRecord);
        String str = BioRecordServiceImpl.class.getSimpleName() + "(sequenceId=" + this.mSequenceId + "):" + metaRecord;
        if (metaRecord != null) {
            VerifyBehavior verifyBehavior = new VerifyBehavior();
            verifyBehavior.setUserCaseID(metaRecord.getCaseID());
            String actionID = metaRecord.getActionID();
            verifyBehavior.setAppID(metaRecord.getAppID());
            verifyBehavior.setSeedID(metaRecord.getSeedID());
            verifyBehavior.setParam1(this.mUniqueID);
            verifyBehavior.setParam2(metaRecord.getParam2());
            verifyBehavior.setParam3(metaRecord.getParam3());
            verifyBehavior.setBizType(metaRecord.getBizType());
            verifyBehavior.setLoggerLevel(metaRecord.getPriority());
            addExtParam(verifyBehavior, this.mParam4);
            addExtParam(verifyBehavior, metaRecord.getParam4());
            BehaviourIdEnum convert = BehaviourIdEnum.convert(actionID);
            MonitorLogService monitorLogService = this.monitorLogService;
            if (monitorLogService == null) {
                new RuntimeException(BioRecordServiceImpl.class.getName() + ".write(" + metaRecord + ") failed. MonitorLogService==null");
                return;
            }
            monitorLogService.logBehavior(convert, verifyBehavior);
        }
    }

    private void addExtParam(VerifyBehavior verifyBehavior, Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null && value != null) {
                    verifyBehavior.addExtParam(key.toString(), value.toString());
                }
            }
        }
    }
}
