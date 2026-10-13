package com.zoloz.android.phone.zdoc.utils;

import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class ZdocRecordManager {
    private int mPageNumber;
    private ZdocRecordService mZdocRecordService;
    private final String TAG = "ZdocRecord";
    private ArrayList<String> mBasicCheck = new ArrayList<>();
    private long mStartTime = 0;

    public ZdocRecordManager() {
        this.mZdocRecordService = null;
        this.mZdocRecordService = (ZdocRecordService) BioServiceManager.getCurrentInstance().getBioService(ZdocRecordService.class);
    }

    public void appendBasicCheck(String str) {
        this.mBasicCheck.add(str);
    }

    public void destory() {
    }

    public void record(String str) {
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(str);
        }
    }

    public int recordActionPrompt(String str, int i2, int i3) {
        if (i2 != i3) {
            HashMap hashMap = new HashMap(2);
            hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
            hashMap.put(ZdocRecordService.PAGE_CONTENT, ZdocRecordService.DOC_INCOMPLETE);
            ZdocRecordService zdocRecordService = this.mZdocRecordService;
            if (zdocRecordService != null) {
                zdocRecordService.write("actionPrompt", hashMap);
            }
        }
        return i3;
    }

    public void recordAlertAppear(String str) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.REASON, str);
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.ALERT_APPEAR, hashMap);
        }
    }

    public void recordAlertChoose(String str, String str2) {
        HashMap hashMap = new HashMap(3);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.PAGE_CONTENT, str);
        hashMap.put(ZdocRecordService.CLICK_ALERT, str2);
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.ALERT_CHOOSE, hashMap);
        }
    }

    public void recordAuthCheck(int i2) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(ZdocRecordService.AUTH_CHECK_RESULT, Integer.toString(i2));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.AUTH_CHECK, hashMap);
        }
        if (i2 == 0) {
            recordAlertAppear(ZdocRecordService.CAMERA_ERROR);
        }
    }

    public void recordBasicCheck() {
        ArrayList<String> arrayList = this.mBasicCheck;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.PAGE_CONTENT, Arrays.toString(this.mBasicCheck.toArray()));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.BASIC_CHECK, hashMap);
        }
        this.mBasicCheck.clear();
    }

    public void recordClickButton(String str, String str2) {
        HashMap hashMap = new HashMap(3);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.ON_PAGE, str);
        hashMap.put(ZdocRecordService.CLICK_ITEM, str2);
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.CLICK_BUTTON, hashMap);
        }
    }

    public void recordCompressResult(Map<String, Object> map) {
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), (String) entry.getValue());
        }
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.COMPRESS_RESULT, hashMap);
        }
    }

    public void recordEndScan(boolean z) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.SCAN_RESULT, Boolean.toString(z));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.END_SCAN, hashMap);
        }
    }

    public void recordImageSize(int i2, int i3) {
        if (this.mZdocRecordService != null) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("width", String.valueOf(i2));
            hashMap.put("height", String.valueOf(i3));
            this.mZdocRecordService.write(ZdocRecordService.FRAME_SIZE_WH, hashMap);
        }
    }

    public void recordImageUploadEnd(BioUploadResult bioUploadResult) {
        if (this.mZdocRecordService != null) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("rpcResultCode", String.valueOf(bioUploadResult.productRetCode));
            hashMap.put("uploadTime", String.valueOf(System.currentTimeMillis() - this.mStartTime));
            ZdocRecordService zdocRecordService = this.mZdocRecordService;
            if (zdocRecordService != null) {
                zdocRecordService.write("uploadEnd", hashMap);
            }
        }
    }

    public void recordOverThreshold() {
        HashMap hashMap = new HashMap(1);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.OVER_THRESHOLD, hashMap);
        }
    }

    public void recordOverTime() {
        HashMap hashMap = new HashMap(2);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.OVERTIME_REASON, ZdocRecordService.SCAN_OVER_TIME);
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.OVER_TIME, hashMap);
        }
    }

    public void recordStartScan() {
        HashMap hashMap = new HashMap(1);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write(ZdocRecordService.START_SCAN, hashMap);
        }
    }

    public void recordUploadEnd(int i2, int i3, int i4) {
        HashMap hashMap = new HashMap();
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(ZdocRecordService.UPLOAD_RESULT, Integer.toString(i2));
        hashMap.put(ZdocRecordService.VALIDATION_RESULT, Integer.toString(i3));
        hashMap.put(ZdocRecordService.SERVER_RESULT, Integer.toString(i4));
        hashMap.put("uploadTime", String.valueOf(System.currentTimeMillis() - this.mStartTime));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write("uploadEnd", hashMap);
        }
    }

    public void recordUploadStart(long j2) {
        this.mStartTime = System.currentTimeMillis();
        HashMap hashMap = new HashMap();
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mPageNumber));
        hashMap.put(HummerConstants.PAYLOAD, String.valueOf(((float) j2) / 1024.0f));
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.write("uploadStart", hashMap);
        }
    }

    public void retry() {
        ZdocRecordService zdocRecordService = this.mZdocRecordService;
        if (zdocRecordService != null) {
            zdocRecordService.retry();
        }
    }

    public void updatePageNumber(int i2) {
        this.mPageNumber = i2;
    }
}
