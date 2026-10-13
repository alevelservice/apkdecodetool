package com.alipay.zoloz.zface.ui;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.mobile.security.bio.api.BioDetector;
import com.alipay.mobile.security.bio.api.BioResponse;
import com.alipay.mobile.security.bio.config.Constant;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.constants.ZcodeConstants;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioAppManager;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.utils.FastBlur;
import com.alipay.mobile.security.bio.utils.RotateBitmapHelper;
import com.alipay.mobile.security.bio.utils.ScreenUtil;
import com.alipay.mobile.security.faceauth.model.DetectTimerTask;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.alipay.zoloz.hardware.camera.ICameraInterface;
import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import com.alipay.zoloz.toyger.R;
import com.alipay.zoloz.toyger.algorithm.TGFaceState;
import com.alipay.zoloz.toyger.blob.BitmapHelper;
import com.alipay.zoloz.toyger.face.ToygerFaceAttr;
import com.alipay.zoloz.zface.beans.AlertData;
import com.alipay.zoloz.zface.beans.FaceRemoteConfig;
import com.alipay.zoloz.zface.beans.FrameStateData;
import com.alipay.zoloz.zface.beans.PreviewData;
import com.alipay.zoloz.zface.beans.UploadData;
import com.alipay.zoloz.zface.presenter.ZFaceBasePresenter;
import com.alipay.zoloz.zface.presenter.ZFaceCallback;
import com.alipay.zoloz.zface.presenter.ZFacePresenter;
import com.alipay.zoloz.zface.services.TimeRecord;
import com.alipay.zoloz.zface.services.ZFaceRecordService;
import com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity;
import com.alipay.zoloz.zface.ui.util.AlertUtil;
import com.alipay.zoloz.zface.ui.util.EnvCheck;
import com.alipay.zoloz.zface.ui.util.FaceScanTipsUtil;
import com.alipay.zoloz.zface.ui.widget.AlgorithmScheduleProgressBar;
import com.alipay.zoloz.zface.ui.widget.ZfaceUploadLoadingView;
import com.alipay.zoloz.zface.utils.ObjectUtil;
import com.alipay.zoloz.zface.utils.ToygerFrameUtil;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import zoloz.ap.com.toolkit.ui.CustomTextView;
import zoloz.ap.com.toolkit.ui.DialogHelper;
import zoloz.ap.com.toolkit.ui.TitleBar;

/* loaded from: classes.dex */
public class ZFaceActivity extends BaseCameraPermissionActivity implements AlertUtil.AlertClickEvents {
    private AlertUtil mAlertUtil;
    private AlgorithmScheduleProgressBar mAlgorithmScheduleProgressBar;
    private ImageView mCameraPreviewImg;
    private CameraSurfaceView mCameraSurfaceView;
    private DetectTimerTask mDetectTimerTask;
    private FaceScanTipsUtil mFaceScanTipsUtil;
    private TitleBar mTitleBar;
    private ZFacePresenter mZFacePresenter;
    private CustomTextView mZfaceTopTips;
    private ZfaceUploadLoadingView mZfaceUploadLoadingView;
    private String mAppTag = "";
    private boolean mIsShowFrame = false;
    private FrameStateData mFrameStateData = null;
    private boolean isPause = false;
    private boolean mIsFirstResume = true;
    private boolean mIsCheckFaced = false;
    private Bitmap mBestBitmap = null;

    /* JADX INFO: Access modifiers changed from: private */
    public void record(String str) {
        record(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setZfaceTopTips(FrameStateData frameStateData) {
        String reimindTxt = this.mFaceScanTipsUtil.getReimindTxt(frameStateData.uiDesState);
        if (TextUtils.isEmpty(reimindTxt)) {
            this.mZfaceTopTips.setVisibility(4);
        } else {
            this.mZfaceTopTips.setVisibility(0);
            this.mZfaceTopTips.setText(reimindTxt);
        }
    }

    private void showBestFrameBlur(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                Bitmap blur = blur(bitmap, 3.0f, 6.0f);
                if (blur != null) {
                    this.mCameraPreviewImg.setVisibility(0);
                    this.mCameraPreviewImg.setBackgroundDrawable(new BitmapDrawable(getResources(), blur));
                }
            } catch (Exception unused) {
            }
        }
    }

    private void startTimerTask() {
        FaceRemoteConfig remoteConfig;
        if (this.mDetectTimerTask != null) {
            stopTimerTask();
        }
        int i2 = 20;
        ZFacePresenter zFacePresenter = this.mZFacePresenter;
        if (zFacePresenter != null && (remoteConfig = zFacePresenter.getRemoteConfig()) != null && remoteConfig.getColl() != null) {
            i2 = remoteConfig.getColl().getTime();
        }
        final int i3 = i2 * 1000;
        this.mDetectTimerTask = new DetectTimerTask(i3);
        this.mDetectTimerTask.setTimerTaskListener(new DetectTimerTask.TimerListener() { // from class: com.alipay.zoloz.zface.ui.ZFaceActivity.1
            @Override // com.alipay.mobile.security.faceauth.model.DetectTimerTask.TimerListener
            public void countdown(int i4) {
                if (ZFaceActivity.this.mDetectTimerTask != null && ZFaceActivity.this.mDetectTimerTask.isTimeOut()) {
                    ZFaceActivity.this.runOnUiThread(new Runnable() { // from class: com.alipay.zoloz.zface.ui.ZFaceActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ZFaceActivity.this.mAlertUtil.alertTimeOut();
                        }
                    });
                }
                if (i3 == i4 || ZFaceActivity.this.mFrameStateData == null) {
                    return;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("content", ZFaceActivity.this.mFaceScanTipsUtil.getReimindTxt(ZFaceActivity.this.mFrameStateData.uiDesState));
                HashMap<String, String> objectToStringMap = ObjectUtil.objectToStringMap(ZFaceActivity.this.mFrameStateData.attr);
                if (objectToStringMap != null && !objectToStringMap.isEmpty()) {
                    hashMap.putAll(objectToStringMap);
                }
                ZFaceActivity.this.record("actionPrompt", hashMap);
            }
        });
        this.mDetectTimerTask.start();
    }

    private void stopTimerTask() {
        DetectTimerTask detectTimerTask = this.mDetectTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.setTimerTaskListener(null);
            this.mDetectTimerTask.stop();
            this.mDetectTimerTask = null;
        }
    }

    private void updateLanguage(BioAppDescription bioAppDescription) {
        updateLocale(bioAppDescription.getExtProperty().get(ZIMFacade.KEY_LOCALE));
    }

    private void updateLocale(String str) {
        Locale locale;
        if (str != null) {
            try {
                Configuration configuration = getResources().getConfiguration();
                if (str.contains("-")) {
                    String[] split = str.split("-");
                    if (split.length == 2) {
                        locale = new Locale(split[0], split[1]);
                    } else if (split.length == 1) {
                        locale = new Locale(split[0]);
                    } else if (Build.VERSION.SDK_INT >= 24) {
                        locale = getResources().getConfiguration().getLocales().get(0);
                    } else {
                        locale = getResources().getConfiguration().locale;
                    }
                } else {
                    locale = new Locale(str);
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    configuration.setLocale(locale);
                } else {
                    configuration.locale = new Locale(str);
                }
                getBaseContext().getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    protected void alertCameraOpenFailed() {
        this.mAlertUtil.alertCameraOpenFailed();
    }

    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    protected void alertCameraPermissionFailed(DialogInterface.OnClickListener onClickListener) {
        this.mAlertUtil.alertCameraPermissionFailed(onClickListener);
    }

    Bitmap blur(Bitmap bitmap, float f2, float f3) {
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        Bitmap bitmap2 = null;
        try {
            bitmap2 = Bitmap.createBitmap((int) (bitmap.getWidth() / f3), (int) (bitmap.getHeight() / f3), Bitmap.Config.ARGB_4444);
            Canvas canvas = new Canvas(bitmap2);
            float f4 = 1.0f / f3;
            canvas.scale(f4, f4);
            Paint paint = new Paint();
            paint.setFlags(2);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            return FastBlur.doBlur(bitmap2, (int) f2, true);
        } catch (OutOfMemoryError unused) {
            return bitmap2;
        }
    }

    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    protected ZFaceBasePresenter createPresenter(ZFaceCallback zFaceCallback, CameraSurfaceView cameraSurfaceView) {
        this.mAppTag = getIntent().getStringExtra(Constant.BIOLOGY_INTENT_ACTION_INFO);
        this.mZFacePresenter = new ZFacePresenter(zFaceCallback, this.mAppTag, cameraSurfaceView);
        return this.mZFacePresenter;
    }

    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    protected int getLayoutResId() {
        return R.layout.activity_zface;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    public boolean handleErrorEvnet(AlertData alertData) {
        stopTimerTask();
        if (super.handleErrorEvnet(alertData)) {
            return true;
        }
        if (alertData.subCode != null && alertData.type != 11) {
            this.mIsShowFrame = true;
            this.mZFacePresenter.stopProcess();
            if (!alertData.subCode.equals(ZcodeConstants.ZCODE_INIT_TOYGER_ERROR) && !alertData.subCode.equals(ZcodeConstants.ZCODE_ZIM_IS_BUSY)) {
                if (!alertData.subCode.equals(ZcodeConstants.NETWORK_TIMEOUT) && !alertData.subCode.equals(ZcodeConstants.ZCODE_NETWORK_ERROR)) {
                    if (alertData.subCode.equals(ZcodeConstants.ZCODE_ERROR_CAMERA_OPEN_FAILED)) {
                        alertCameraOpenFailed();
                    } else if (!alertData.subCode.equals(ZcodeConstants.ZCODE_OS_VERSION_LOW) && !alertData.subCode.equals(ZcodeConstants.ZCODE_UNSUPPORTED_CPU) && !alertData.subCode.equals(ZcodeConstants.ZCODE_NO_FRANT_CAMERA) && !alertData.subCode.equals(ZcodeConstants.ZCODE_ERROR_CAMERA_NO_DEVICE)) {
                        if (alertData.subCode.equals(ZcodeConstants.ZCODE_OVER_TIME)) {
                            this.mAlertUtil.alertTimeOut();
                        } else if (alertData.subCode.equals(ZcodeConstants.ZCODE_OUT_TIME)) {
                            this.mAlertUtil.alertRetryOutTime();
                        } else if (alertData.subCode.equals(ZcodeConstants.ZCODE_USER_BACK)) {
                            onBackPressed();
                        } else if (alertData.subCode.equals(ZcodeConstants.ZCODE_INTERUPT_RESUME)) {
                            this.mAlertUtil.alertInterruptResume();
                        } else if (alertData.subCode.equals(ZcodeConstants.ZCODE_SYSTEM_EXC)) {
                            this.mAlertUtil.alertSystemError();
                        } else if (alertData.subCode.equals(ZcodeConstants.ZCODE_RETRY_ALERT)) {
                            this.mAlertUtil.alertFailRetry();
                        } else if (alertData.subCode.equals(ZcodeConstants.ZCODE_FIRST_LOGIN)) {
                            this.mAlertUtil.alertFirstLogin();
                        } else {
                            this.mAlertUtil.alertSystemError();
                        }
                    } else {
                        this.mAlertUtil.alertSystemNotSupport(alertData.subCode);
                    }
                } else {
                    this.mAlertUtil.alertNetworkError();
                }
            } else {
                this.mAlertUtil.alertSystemError();
            }
            return true;
        }
        finish();
        return true;
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void handleFinish(boolean z) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mTitleBar.isClickable()) {
            this.mZFacePresenter.stopProcess();
            this.mAlertUtil.alertBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    public void onCameraWithPermission() {
        super.onCameraWithPermission();
        if (hasPermission()) {
            startTimerTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EnvCheck.EnvErrorType check = new EnvCheck().check(false);
        if (check == EnvCheck.EnvErrorType.ENV_ERROR_LOW_OS) {
            this.mAlertUtil.alertSystemNotSupport(ZcodeConstants.ZCODE_OS_VERSION_LOW);
        } else if (check == EnvCheck.EnvErrorType.ENV_ERROR_NO_FRONT_CAMERA) {
            this.mAlertUtil.alertSystemNotSupport(ZcodeConstants.ZCODE_ERROR_CAMERA_NO_DEVICE);
        } else if (check == EnvCheck.EnvErrorType.ENV_ERROR_UNSUPPORTED_CPU) {
            this.mAlertUtil.alertSystemNotSupport(ZcodeConstants.ZCODE_UNSUPPORTED_CPU);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        record(ZFaceRecordService.NOTICE_EXIT_SDK, null);
        ZFacePresenter zFacePresenter = this.mZFacePresenter;
        if (zFacePresenter != null) {
            zFacePresenter.release();
        }
        stopTimerTask();
        super.onDestroy();
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onFrameComplete() {
        this.mAlgorithmScheduleProgressBar.showProgress(1.0f);
        this.mIsShowFrame = true;
        stopTimerTask();
        this.mZfaceUploadLoadingView.setVisibility(0);
        showBestFrameBlur(this.mBestBitmap);
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onFrameQualify(Bitmap bitmap, ToygerFaceAttr toygerFaceAttr) {
        record(ZFaceRecordService.POSE_END);
        record(ZFaceRecordService.LIVEBODY_START);
        TimeRecord.getInstance().recordTime(ZFaceRecordService.LIVEBODY_START);
        record(ZFaceRecordService.UPLOAD_AVARRIABLE);
        Bitmap bitmap2 = this.mBestBitmap;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.mBestBitmap = null;
        }
        this.mBestBitmap = bitmap;
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onFrameStateUpdate(final FrameStateData frameStateData) {
        runOnUiThread(new Runnable() { // from class: com.alipay.zoloz.zface.ui.ZFaceActivity.3
            @Override // java.lang.Runnable
            public void run() {
                ZFaceActivity.this.mFrameStateData = frameStateData;
                ZFaceActivity.this.setZfaceTopTips(frameStateData);
                TGFaceState tGFaceState = frameStateData.tgFaceState;
                if (!tGFaceState.hasFace) {
                    ZFaceActivity.this.mAlgorithmScheduleProgressBar.showProgress(0.0f);
                } else {
                    ZFaceActivity.this.mAlgorithmScheduleProgressBar.showProgress(tGFaceState.progress);
                }
                if (!frameStateData.tgFaceState.hasFace || ZFaceActivity.this.mIsCheckFaced) {
                    return;
                }
                ZFaceActivity.this.mIsCheckFaced = true;
                ZFaceActivity.this.record(ZFaceRecordService.DETECT_COND_END, ToygerFrameUtil.getFaceParam(frameStateData.attr));
                ZFaceActivity.this.record(ZFaceRecordService.POSE_START);
            }
        });
    }

    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    protected void onInitView() {
        this.mAlertUtil = new AlertUtil(this, this);
        this.mFaceScanTipsUtil = new FaceScanTipsUtil(getResources(), this.mZFacePresenter.getRemoteConfig());
        this.mCameraSurfaceView = (CameraSurfaceView) findViewById(R.id.zface_surface_view);
        this.mCameraPreviewImg = (ImageView) findViewById(R.id.zface_preview_img);
        this.mTitleBar = (TitleBar) findViewById(R.id.zface_titlebar);
        this.mAlgorithmScheduleProgressBar = (AlgorithmScheduleProgressBar) findViewById(R.id.zface_algorithm_schedule_progressbar);
        this.mTitleBar.setClickListener(new View.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.ZFaceActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZFaceActivity.this.onBackPressed();
            }
        });
        this.mZfaceTopTips = (CustomTextView) findViewById(R.id.zface_top_tip_tv);
        this.mZfaceUploadLoadingView = (ZfaceUploadLoadingView) findViewById(R.id.zface_upload_loading_view);
        this.mZfaceUploadLoadingView.setVisibility(4);
        if (hasPermission()) {
            startTimerTask();
        }
        ((TextView) findViewById(R.id.zfac_brand_tv)).setText(this.mZFacePresenter.getRemoteConfig().getFaceTips().getBrandTip());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (hasPermission()) {
            this.isPause = true;
        }
        stopTimerTask();
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onPreviewFrame(PreviewData previewData) {
        Bitmap verticalRotateBitmap;
        if (this.mIsShowFrame) {
            this.mIsShowFrame = false;
            if (this.mCameraPreviewImg.getVisibility() == 0) {
                return;
            }
            this.mZFacePresenter.stopProcess();
            stopTimerTask();
            this.mCameraPreviewImg.setVisibility(0);
            byte[] array = previewData.rgbData.array();
            ICameraInterface cameraImpl = CameraSurfaceView.getCameraImpl(this);
            Bitmap bytes2Bitmap = BitmapHelper.bytes2Bitmap(array, cameraImpl.getColorWidth(), cameraImpl.getColorHeight(), previewData.frameMode);
            if (previewData.rotation == 0) {
                verticalRotateBitmap = (cameraImpl == null || !cameraImpl.isMirror()) ? BitmapHelper.reverseBitmap(bytes2Bitmap, 0) : null;
            } else {
                String str = "showLastFrame(), call getVerticalRotateBitmap(bitmap, " + previewData.rotation + ")";
                verticalRotateBitmap = RotateBitmapHelper.getVerticalRotateBitmap(bytes2Bitmap, previewData.rotation);
            }
            if (verticalRotateBitmap == null) {
                verticalRotateBitmap = bytes2Bitmap;
            }
            this.mCameraPreviewImg.setBackgroundDrawable(new BitmapDrawable(getResources(), verticalRotateBitmap));
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        int screenBrightness = ScreenUtil.getScreenBrightness(this);
        try {
            int light = this.mZFacePresenter.getRemoteConfig().getColl().getLight();
            if (light > screenBrightness) {
                ScreenUtil.setScreenBrightness(this, light);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (hasPermission() && this.isPause) {
            this.mAlertUtil.alertInterruptResume();
        } else if (hasPermission()) {
            startTimerTask();
        }
        this.isPause = false;
        if (this.mIsFirstResume) {
            this.mIsFirstResume = false;
            long timeInterval = TimeRecord.getInstance().getTimeInterval(ZFaceRecordService.ENTER_DETECTION_START);
            HashMap hashMap = new HashMap();
            hashMap.put("timecost", String.valueOf(timeInterval));
            hashMap.put("brightness", "" + ScreenUtil.getScreenBrightness(this));
            record(ZFaceRecordService.ENTER_DETECTION_END, hashMap);
        }
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onSurfaceviewInit(double d2, double d3) {
        if (this.mCameraSurfaceView.getVisibility() != 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mCameraSurfaceView.getLayoutParams();
        if (d2 < d3) {
            double d4 = layoutParams.width;
            Double.isNaN(d4);
            layoutParams.height = (int) ((d4 / (d2 * 1.0d)) * d3);
            this.mCameraSurfaceView.setLayoutParams(layoutParams);
            this.mCameraSurfaceView.setBackgroundColor(0);
            this.mCameraPreviewImg.setLayoutParams(layoutParams);
            return;
        }
        double d5 = layoutParams.height;
        Double.isNaN(d5);
        layoutParams.width = (int) ((d5 / (d3 * 1.0d)) * d2);
        this.mCameraSurfaceView.setLayoutParams(layoutParams);
        this.mCameraSurfaceView.setBackgroundColor(0);
        this.mCameraPreviewImg.setLayoutParams(layoutParams);
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onUploadSuccess(final UploadData uploadData) {
        final DialogHelper alertUploadSuccess = this.mAlertUtil.alertUploadSuccess(this);
        this.mZfaceUploadLoadingView.setVisibility(4);
        new Handler().postDelayed(new Runnable() { // from class: com.alipay.zoloz.zface.ui.ZFaceActivity.4
            @Override // java.lang.Runnable
            public void run() {
                DialogHelper dialogHelper = alertUploadSuccess;
                if (dialogHelper != null) {
                    dialogHelper.dismissDialog();
                    alertUploadSuccess.release();
                }
                BioResponse bioResponse = new BioResponse();
                bioResponse.setSuccess(true);
                bioResponse.setToken(ZFaceActivity.this.mZFacePresenter.getBioAppDescription().getBistoken());
                BioUploadResult bioUploadResult = uploadData.getBioUploadResult();
                bioResponse.subCode = bioUploadResult.subCode;
                String str = bioUploadResult.subMsg;
                bioResponse.subMsg = str;
                bioResponse.setResultMessage(str);
                bioResponse.setResult(500);
                bioResponse.setTag(ZFaceActivity.this.mAppTag);
                HashMap hashMap = new HashMap();
                hashMap.put(BioDetector.EXT_KEY_UPLOAD_RESPONSE, uploadData.getOriginalData());
                bioResponse.setExt(hashMap);
                ZFaceActivity.this.mZFacePresenter.sendResponse(bioResponse);
                ZFaceActivity.this.finish();
            }
        }, 800L);
    }

    @Override // com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity
    protected boolean preCheck() {
        BioServiceManager currentInstance = BioServiceManager.getCurrentInstance();
        if (currentInstance == null) {
            new IllegalStateException("null == BioServiceManager.getCurrentInstance()");
            return false;
        }
        this.mAppTag = getIntent().getStringExtra(Constant.BIOLOGY_INTENT_ACTION_INFO);
        updateLanguage(((BioAppManager) currentInstance.getBioService(BioAppManager.class)).getBioAppDescription(this.mAppTag));
        return true;
    }

    @Override // com.alipay.zoloz.zface.ui.util.AlertUtil.AlertClickEvents
    public void retry() {
        if (this.mZFacePresenter != null) {
            this.mCameraPreviewImg.setVisibility(4);
            this.mCameraSurfaceView.setVisibility(0);
            this.mZfaceUploadLoadingView.setVisibility(4);
            this.mZFacePresenter.retry();
        }
        startTimerTask();
    }

    @Override // com.alipay.zoloz.zface.ui.util.AlertUtil.AlertClickEvents
    public void retryUpload() {
        ZFacePresenter zFacePresenter = this.mZFacePresenter;
        if (zFacePresenter != null) {
            zFacePresenter.retryUpload();
        }
    }

    @Override // com.alipay.zoloz.zface.ui.util.AlertUtil.AlertClickEvents
    public void sendResponse(int i2, String str) {
        ZFacePresenter zFacePresenter = this.mZFacePresenter;
        if (zFacePresenter != null) {
            zFacePresenter.sendResponseWithSubcode(i2, str, CodeConstants.getMessage(str));
        }
        finish();
    }

    @Override // com.alipay.zoloz.zface.ui.util.AlertUtil.AlertClickEvents
    public void showFrame() {
        this.mIsShowFrame = true;
    }

    @Override // com.alipay.zoloz.zface.ui.util.AlertUtil.AlertClickEvents
    public void stopProcess() {
        ZFacePresenter zFacePresenter = this.mZFacePresenter;
        if (zFacePresenter != null) {
            zFacePresenter.stopProcess();
        }
        stopTimerTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void record(String str, Map<String, String> map) {
        ZFaceRecordService zFaceRecordService;
        BioServiceManager currentInstance = BioServiceManager.getCurrentInstance();
        if (currentInstance == null || (zFaceRecordService = (ZFaceRecordService) currentInstance.getBioService(ZFaceRecordService.class)) == null) {
            return;
        }
        if (map == null) {
            zFaceRecordService.write(str);
        } else {
            zFaceRecordService.write(str, map);
        }
    }
}
