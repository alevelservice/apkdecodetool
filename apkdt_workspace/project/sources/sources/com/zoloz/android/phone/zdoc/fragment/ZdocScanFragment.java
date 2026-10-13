package com.zoloz.android.phone.zdoc.fragment;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Handler;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.faceauth.model.DetectTimerTask;
import com.alipay.zoloz.toyger.ToygerService;
import com.alipay.zoloz.toyger.doc.ToygerDocAttr;
import com.alipay.zoloz.toyger.doc.ToygerDocCallback;
import com.alipay.zoloz.toyger.doc.ToygerDocService;
import com.alipay.zoloz.toyger.doc.ToygerDocState;
import com.zoloz.android.phone.zdoc.R;
import com.zoloz.android.phone.zdoc.module.AlgorithmModule;
import com.zoloz.android.phone.zdoc.module.CollModule;
import com.zoloz.android.phone.zdoc.module.DocModule;
import com.zoloz.android.phone.zdoc.module.UploadModule;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import com.zoloz.android.phone.zdoc.ui.UIState;
import java.util.HashMap;
import java.util.Map;
import zoloz.ap.com.toolkit.ui.DialogHelper;

/* loaded from: classes2.dex */
public class ZdocScanFragment extends BaseDocFragment {
    private AlgorithmModule mAlgorithmModule;
    private DetectTimerTask mDetectTimerTask;
    private ToygerDocService mToygerDocService;
    private UploadModule mUploadModule;
    private final String TAG = ZdocScanFragment.class.getName();
    private boolean isAlgorithmStarted = false;
    private boolean isCompleted = false;
    private boolean isGetPreviewingImg = false;
    private int mCurrentMessage = -1;

    private int getRotateTimes() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnStatusUpdated(ToygerDocState toygerDocState) {
        new HashMap(2).put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mCurrentPageNumber));
        if (!toygerDocState.hasDoc) {
            this.mRecordManager.appendBasicCheck(ZdocRecordService.DOC_NO_DETECT);
            this.mCurrentMessage = this.mRecordManager.recordActionPrompt(ZdocRecordService.DOC_NO_DETECT, this.mCurrentMessage, 1);
        } else if (!toygerDocState.isCompleted) {
            this.mRecordManager.appendBasicCheck(ZdocRecordService.DOC_INCOMPLETE);
            this.mCurrentMessage = this.mRecordManager.recordActionPrompt(ZdocRecordService.DOC_INCOMPLETE, this.mCurrentMessage, 0);
        } else if (toygerDocState.isReflected) {
            this.mRecordManager.appendBasicCheck(ZdocRecordService.DOC_REFLECTION);
            this.mCurrentMessage = this.mRecordManager.recordActionPrompt(ZdocRecordService.DOC_REFLECTION, this.mCurrentMessage, 3);
        } else if (toygerDocState.isBlur) {
            this.mRecordManager.appendBasicCheck(ZdocRecordService.DOC_VAGUE);
            this.mCurrentMessage = this.mRecordManager.recordActionPrompt(ZdocRecordService.DOC_VAGUE, this.mCurrentMessage, 2);
        } else if (toygerDocState.isCopy) {
            this.mRecordManager.appendBasicCheck(ZdocRecordService.DOC_COPY);
            this.mCurrentMessage = this.mRecordManager.recordActionPrompt(ZdocRecordService.DOC_COPY, this.mCurrentMessage, 4);
        }
        startProcessImg();
    }

    private void initAlgorithm() {
        this.mToygerDocService = new ToygerDocService();
        HashMap hashMap = new HashMap(3);
        hashMap.put(ToygerService.KEY_PUBLIC_KEY, this.mUploadManager.getmPublicKey());
        hashMap.put(ToygerService.KEY_DOC_FRAME_RECT, mappingToPic(this.mDefaultMaskView.getDocFrame()));
        hashMap.put(ToygerService.KEY_ROTATE_TIMES, Integer.valueOf(getRotateTimes()));
        this.isAlgorithmStarted = this.mToygerDocService.init2(getActivity().getApplicationContext(), new ToygerDocCallback() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.4
            @Override // com.alipay.zoloz.toyger.ToygerCallback
            public PointF onAlignDepthPoint(PointF pointF) {
                return null;
            }

            @Override // com.alipay.zoloz.toyger.ToygerCallback
            public boolean onComplete(int i2, byte[] bArr, byte[] bArr2, boolean z) {
                if (ZdocScanFragment.this.isCompleted) {
                    return false;
                }
                ZdocScanFragment.this.isCompleted = true;
                ZdocScanFragment.this.mRecordManager.recordEndScan(true);
                ZdocScanFragment zdocScanFragment = ZdocScanFragment.this;
                zdocScanFragment.mContent = bArr;
                zdocScanFragment.mKey = bArr2;
                zdocScanFragment.mIsUTF8 = z;
                if (zdocScanFragment.mDetectTimerTask != null) {
                    ZdocScanFragment.this.mDetectTimerTask.stop();
                }
                ZdocScanFragment.this.runOnUiThread(new Runnable() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ZdocScanFragment.this.updateUI(UIState.USER_CONFIRM);
                    }
                });
                return false;
            }

            @Override // com.alipay.zoloz.toyger.ToygerCallback
            public boolean onEvent(int i2, Map<String, Object> map) {
                String str = "zdoc onEvent eventCode = " + i2;
                if (i2 == -7) {
                    ZdocScanFragment.this.mRecordManager.recordCompressResult(map);
                    return false;
                }
                if (i2 != -2 && i2 != -5 && i2 != -4) {
                    return false;
                }
                ZdocScanFragment.this.alertSystemError();
                return false;
            }

            @Override // com.alipay.zoloz.toyger.ToygerCallback
            public boolean onHighQualityFrame(Bitmap bitmap, ToygerDocAttr toygerDocAttr) {
                return false;
            }

            @Override // com.alipay.zoloz.toyger.ToygerCallback
            public /* bridge */ /* synthetic */ boolean onStateUpdated(ToygerDocState toygerDocState, ToygerDocAttr toygerDocAttr, Map map) {
                return onStateUpdated2(toygerDocState, toygerDocAttr, (Map<String, Object>) map);
            }

            /* renamed from: onStateUpdated, reason: avoid collision after fix types in other method */
            public boolean onStateUpdated2(ToygerDocState toygerDocState, ToygerDocAttr toygerDocAttr, Map<String, Object> map) {
                if (ZdocScanFragment.this.isCompleted) {
                    return false;
                }
                ZdocScanFragment.this.handleOnStatusUpdated(toygerDocState);
                return false;
            }
        }, JSON.toJSONString(this.mAlgorithmModule), JSON.toJSONString(this.mUploadModule), (Map<String, Object>) hashMap);
        if (!this.isAlgorithmStarted) {
            new Handler().postDelayed(new Runnable() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    ZdocScanFragment.this.alertSystemError();
                }
            }, 300L);
        } else {
            this.mRecordManager.recordStartScan();
        }
    }

    private void initCountDownTimer() {
        this.mDetectTimerTask = new DetectTimerTask(this.mZdocRemoteConfig.getModules().get(this.mCurrentPageNumberIndex).getColl().getScanTimeout() * 1000);
        this.mDetectTimerTask.setTimerTaskListener(new DetectTimerTask.TimerListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.3
            @Override // com.alipay.mobile.security.faceauth.model.DetectTimerTask.TimerListener
            public void countdown(int i2) {
                if (ZdocScanFragment.this.mDetectTimerTask != null && ZdocScanFragment.this.mDetectTimerTask.isTimeOut()) {
                    ZdocScanFragment.this.mRecordManager.recordOverTime();
                    ZdocScanFragment.this.mRecordManager.recordEndScan(false);
                    ZdocScanFragment.this.mRecordManager.retry();
                    DialogHelper dialogHelper = ZdocScanFragment.this.mDialogHelper;
                    if (dialogHelper == null || dialogHelper.isShowing()) {
                        return;
                    }
                    ZdocScanFragment.this.updateUI(UIState.ALERT);
                    ZdocScanFragment zdocScanFragment = ZdocScanFragment.this;
                    if (zdocScanFragment.mCurrentRetryTimes < zdocScanFragment.mMaxRetryTimes) {
                        zdocScanFragment.mRecordManager.recordAlertAppear(ZdocRecordService.OVERTIME_ERROR);
                        ZdocScanFragment zdocScanFragment2 = ZdocScanFragment.this;
                        zdocScanFragment2.mDialogHelper.alert(zdocScanFragment2.getString(R.string.alert_timeout_error_title), ZdocScanFragment.this.getString(R.string.alert_timeout_error_msg), ZdocScanFragment.this.getString(R.string.btn_retry), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.3.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i3) {
                                ZdocScanFragment zdocScanFragment3 = ZdocScanFragment.this;
                                zdocScanFragment3.mCurrentRetryTimes++;
                                zdocScanFragment3.mRecordManager.recordAlertChoose(ZdocRecordService.OVERTIME_ERROR, Integer.toString(1));
                                dialogInterface.dismiss();
                                ZdocScanFragment.this.mRecordManager.recordStartScan();
                                ZdocScanFragment.this.updateUI(UIState.CAPTURE);
                            }
                        }, ZdocScanFragment.this.getString(R.string.btn_exit), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.3.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i3) {
                                ZdocScanFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.OVERTIME_ERROR, Integer.toString(0));
                                dialogInterface.dismiss();
                                ZdocScanFragment.this.responseWithCode(203, null);
                            }
                        });
                        return;
                    }
                    zdocScanFragment.failQuit(null);
                    return;
                }
                ZdocScanFragment.this.runOnUiThread(new Runnable() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.3.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ZdocScanFragment zdocScanFragment3 = ZdocScanFragment.this;
                        zdocScanFragment3.mMessageView.updateMessage(zdocScanFragment3.mCurrentMessage);
                    }
                });
            }
        });
    }

    private void startProcessImg() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void formatConfigs() {
        super.formatConfigs();
        DocModule docModule = this.mZdocRemoteConfig.getModules().get(this.mCurrentPageNumberIndex);
        CollModule coll = docModule.getColl();
        this.mAlgorithmModule = docModule.getAlgorithm();
        this.mAlgorithmModule.setAlgoType(coll.getAlgoType());
        this.mUploadModule = new UploadModule();
        this.mUploadModule.setDocType(coll.getDocType());
        this.mUploadModule.setPageNo(coll.getPageNo());
        this.mUploadModule.setRatio(this.mZdocRemoteConfig.getRatio());
        ToygerDocService toygerDocService = this.mToygerDocService;
        if (toygerDocService != null) {
            toygerDocService.config(JSON.toJSONString(this.mAlgorithmModule), JSON.toJSONString(this.mUploadModule));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void handleAlert(UIState uIState) {
        super.handleAlert(uIState);
        DetectTimerTask detectTimerTask = this.mDetectTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void handleCapture() {
        super.handleCapture();
        if (this.isCompleted) {
            this.isCompleted = false;
            ToygerDocService toygerDocService = this.mToygerDocService;
            if (toygerDocService != null) {
                toygerDocService.reset();
            }
        }
        DetectTimerTask detectTimerTask = this.mDetectTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.reset();
            this.mDetectTimerTask.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void handleUserConfirm() {
        super.handleUserConfirm();
        DetectTimerTask detectTimerTask = this.mDetectTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.stop();
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initCountDownTimer();
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DetectTimerTask detectTimerTask = this.mDetectTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.stop();
            this.mDetectTimerTask.setTimerTaskListener(null);
            this.mDetectTimerTask = null;
        }
        this.isCompleted = false;
        this.isAlgorithmStarted = false;
        ToygerDocService toygerDocService = this.mToygerDocService;
        if (toygerDocService != null) {
            toygerDocService.release();
            this.mToygerDocService = null;
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseFragment
    public void onRestart() {
        DialogHelper dialogHelper;
        super.onRestart();
        if (this.mCurrentState != UIState.CAPTURE || (dialogHelper = this.mDialogHelper) == null || dialogHelper.isShowing()) {
            return;
        }
        updateUI(UIState.ALERT);
        this.mRecordManager.recordAlertAppear(ZdocRecordService.BACKSTAGE_INTERRUPT);
        this.mDialogHelper.alert(getString(R.string.alert_interrupt_error_title), getString(R.string.alert_interrupt_error_msg), getString(R.string.btn_retry), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ZdocScanFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.BACKSTAGE_INTERRUPT, Integer.toString(1));
                dialogInterface.dismiss();
                ZdocScanFragment.this.updateUI(UIState.CAPTURE);
            }
        }, getString(R.string.btn_exit), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ZdocScanFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.BACKSTAGE_INTERRUPT, Integer.toString(0));
                dialogInterface.dismiss();
                ZdocScanFragment.this.responseWithCode(202, null);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        DetectTimerTask detectTimerTask = this.mDetectTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.stop();
        }
    }
}
