package com.ap.zoloz.hummer.common;

import android.content.Context;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.zim.biz.RecordProcessor;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.Map;

/* loaded from: classes.dex */
public class RecordManager {
    private static RecordManager sInstance;
    private RecordProcessor mRecordProcessor;

    public static RecordManager getInstance() {
        if (sInstance == null) {
            synchronized (RecordManager.class) {
                if (sInstance == null) {
                    sInstance = new RecordManager();
                }
            }
        }
        return sInstance;
    }

    public void init(Context context, Map<String, String> map) {
        HummerLogService.reset();
        HummerLogService.config.putAll(map);
        String str = map.get(HummerConstants.HUMMER_ID);
        String str2 = map.get(HummerConstants.BIZ_ID);
        this.mRecordProcessor = RecordProcessor.getInstance();
        if (this.mRecordProcessor == null) {
            this.mRecordProcessor = RecordProcessor.createInstance(context);
        }
        if (!StringUtil.isNullorEmpty(str)) {
            this.mRecordProcessor.setUniqueID(str);
        } else if (!StringUtil.isNullorEmpty(str2)) {
            this.mRecordProcessor.setUniqueID(str2);
        }
        this.mRecordProcessor.setDestroyable(false);
    }

    public void record(String str, Map<String, String> map) {
        RecordProcessor recordProcessor = this.mRecordProcessor;
        if (recordProcessor != null) {
            recordProcessor.record(new MetaRecord("", "event", "20001117", str, 1), map);
        }
    }

    public void release() {
        RecordProcessor recordProcessor = this.mRecordProcessor;
        if (recordProcessor != null) {
            recordProcessor.destroy();
            this.mRecordProcessor = null;
        }
        sInstance = null;
    }
}
