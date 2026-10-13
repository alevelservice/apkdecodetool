package com.zoloz.android.phone.zdoc.fragment;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadCallBack;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.BioUploadService;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;
import com.alipay.zoloz.hardware.camera.CameraData;
import com.alipay.zoloz.hardware.camera.ICameraCallback;
import com.alipay.zoloz.hardware.camera.ICameraInterface;
import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.blob.BitmapHelper;
import com.zoloz.android.phone.zdoc.R;
import com.zoloz.android.phone.zdoc.cardmanager.FalconTaskManager;
import com.zoloz.android.phone.zdoc.cardmanager.ZdocResponse;
import com.zoloz.android.phone.zdoc.module.CollModule;
import com.zoloz.android.phone.zdoc.module.ZdocRemoteConfig;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import com.zoloz.android.phone.zdoc.ui.BaseMaskView;
import com.zoloz.android.phone.zdoc.ui.IMessageView;
import com.zoloz.android.phone.zdoc.ui.UIFacade;
import com.zoloz.android.phone.zdoc.ui.UIState;
import com.zoloz.android.phone.zdoc.upload.UploadManager;
import com.zoloz.android.phone.zdoc.utils.ZdocRecordManager;
import java.util.Map;
import zoloz.ap.com.toolkit.ui.DialogHelper;
import zoloz.ap.com.toolkit.ui.TitleBar;

/* loaded from: classes2.dex */
public class BaseDocFragment extends BaseCameraPermissionFragment implements ICameraCallback {
    private static final String TAG = "ZdocCaptureActivity";
    protected BioAppDescription mBioAppDescription;
    protected BioUploadService mBioUploadService;
    private ICameraInterface mCameraInterface;
    private CameraSurfaceView mCameraSurfaceView;
    protected byte[] mContent;
    protected int mCurrentPageNumber;
    protected int mCurrentPageNumberIndex;
    protected int mCurrentRetryTimes;
    protected BaseMaskView mDefaultMaskView;
    protected DialogHelper mDialogHelper;
    protected boolean mIsUTF8;
    protected byte[] mKey;
    protected int mMaxRetryTimes;
    protected IMessageView mMessageView;
    protected ImageView mPhotoImageView;
    protected ZdocRecordManager mRecordManager;
    protected TitleBar mTitleBar;
    protected int mUiType;
    protected UploadManager mUploadManager;
    protected ZdocRemoteConfig mZdocRemoteConfig;
    private Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private boolean mShowFrame = false;
    protected UIState mCurrentState = UIState.CAPTURE;
    private boolean needRecordImageSize = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment$15, reason: invalid class name */
    /* loaded from: classes2.dex */
    public /* synthetic */ class AnonymousClass15 {
        static final /* synthetic */ int[] $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState = new int[UIState.values().length];

        static {
            try {
                $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[UIState.CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[UIState.USER_CONFIRM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[UIState.UPLOADING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[UIState.UPLOAD_END_SUCCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[UIState.UPLOAD_END_FAIL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[UIState.ALERT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private int findBackCameraId() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == 0) {
                return i2;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFailRetry(Map<String, String> map) {
        char c2 = 0;
        this.mRecordManager.recordUploadEnd(1, 0, 2002);
        this.mRecordManager.recordStartScan();
        updateUI(UIState.UPLOAD_END_FAIL);
        this.mRecordManager.retry();
        this.mRecordManager.recordAlertAppear(ZdocRecordService.SERVER_QUALITY_ERROR);
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper == null || dialogHelper.isShowing()) {
            return;
        }
        updateUI(UIState.ALERT);
        if (this.mCurrentRetryTimes < this.mMaxRetryTimes) {
            int i2 = R.string.zdoc_unknow_title;
            int i3 = R.string.zdoc_unknow_msg;
            try {
                String valueOf = String.valueOf(JSON.parseObject(map.get("clientExtInfo")).get("detectCode"));
                switch (valueOf.hashCode()) {
                    case -2003602871:
                        if (valueOf.equals("IMPERFECT")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1437569509:
                        if (valueOf.equals("NO_FACE")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1143378681:
                        if (valueOf.equals("EXPOSURE")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 2041959:
                        if (valueOf.equals("BLUR")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 666915289:
                        if (valueOf.equals("NO_DOCUMENT")) {
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                if (c2 == 0) {
                    i2 = R.string.zdoc_no_document_title;
                    i3 = R.string.zdoc_no_document_msg;
                } else if (c2 == 1) {
                    i2 = R.string.zdoc_imperfect_title;
                    i3 = R.string.zdoc_imperfect_msg;
                } else if (c2 == 2) {
                    i2 = R.string.zdoc_blur_title;
                    i3 = R.string.zdoc_blur_msg;
                } else if (c2 == 3) {
                    i2 = R.string.zdoc_exposure_title;
                    i3 = R.string.zdoc_exposure_msg;
                } else if (c2 == 4) {
                    i2 = R.string.zdoc_noface_title;
                    i3 = R.string.zdoc_noface_msg;
                }
            } catch (Exception unused) {
            }
            this.mDialogHelper.alert(getString(i2), getString(i3), getString(R.string.zdoc_dialog_retry), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i4) {
                    BaseDocFragment.this.mCurrentRetryTimes++;
                    dialogInterface.dismiss();
                    BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.SERVER_QUALITY_ERROR, Integer.toString(1));
                    BaseDocFragment.this.updateUI(UIState.CAPTURE);
                }
            }, getString(R.string.zdoc_dialog_close), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i4) {
                    dialogInterface.dismiss();
                    BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.SERVER_QUALITY_ERROR, Integer.toString(0));
                    BaseDocFragment.this.responseWithCode(208, null);
                }
            });
            return;
        }
        failQuit(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetWorkError() {
        this.mRecordManager.recordUploadEnd(0, 0, 999);
        updateUI(UIState.UPLOAD_END_FAIL);
        this.mRecordManager.recordAlertAppear(ZdocRecordService.NETWORK_ERROR);
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper == null || dialogHelper.isShowing()) {
            return;
        }
        updateUI(UIState.ALERT);
        this.mDialogHelper.alert(getString(R.string.network_error_title), getString(R.string.network_error_msg), getString(R.string.network_error_retry), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.NETWORK_ERROR, Integer.toString(1));
                BaseDocFragment.this.updateUI(UIState.UPLOADING);
                BaseDocFragment.this.upLoadImage();
            }
        }, getString(R.string.network_error_exit), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.NETWORK_ERROR, Integer.toString(0));
                BaseDocFragment.this.responseWithCode(207, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuccContinue() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.dismissDialog();
        }
        this.mCurrentRetryTimes = 0;
        this.mRecordManager.recordUploadEnd(1, 1, 1002);
        updateUI(UIState.UPLOAD_END_SUCCESS);
        this.mCurrentPageNumberIndex++;
        if (this.mCurrentPageNumberIndex < this.mZdocRemoteConfig.getModules().size()) {
            new Handler().postDelayed(new Runnable() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.8
                @Override // java.lang.Runnable
                public void run() {
                    BaseDocFragment.this.formatConfigs();
                    BaseDocFragment.this.mRecordManager.recordStartScan();
                    BaseDocFragment.this.updateUI(UIState.CAPTURE);
                }
            }, 1000L);
        }
    }

    private void initData() {
        this.mBioAppDescription = (BioAppDescription) getArguments().getSerializable("bio");
        this.mZdocRemoteConfig = (ZdocRemoteConfig) getArguments().getSerializable("config");
        if (this.mBioAppDescription == null || this.mZdocRemoteConfig == null) {
        }
    }

    private void initUpload() {
        if (this.mBioAppDescription == null || this.mZdocRemoteConfig == null) {
            return;
        }
        this.mUploadManager = new UploadManager(getActivity(), this.mBioAppDescription, this.mZdocRemoteConfig);
        this.mUploadManager.init();
        if (BioServiceManager.getCurrentInstance() == null) {
            new IllegalStateException("null == BioServiceManager.getCurrentInstance()");
            getActivity().finish();
        } else {
            this.mBioUploadService = (BioUploadService) BioServiceManager.getCurrentInstance().getBioService(BioUploadService.class);
            this.mBioUploadService.clearUp();
            this.mBioUploadService.addCallBack(new BioUploadCallBack() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.5
                @Override // com.alipay.mobile.security.bio.service.BioUploadCallBack
                public boolean onResponse(final BioUploadResult bioUploadResult) {
                    BaseDocFragment.this.mRecordManager.recordBasicCheck();
                    int i2 = bioUploadResult.productRetCode;
                    if (i2 == 1001) {
                        BaseDocFragment.this.mRecordManager.recordUploadEnd(1, 1, 1001);
                        BaseDocFragment.this.updateUI(UIState.UPLOAD_END_SUCCESS);
                        new Handler().postDelayed(new Runnable() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DialogHelper dialogHelper = BaseDocFragment.this.mDialogHelper;
                                if (dialogHelper != null) {
                                    dialogHelper.dismissDialog();
                                }
                                BaseDocFragment.this.responseWithCode(500, bioUploadResult);
                            }
                        }, 800L);
                    } else if (i2 == 1002) {
                        BaseDocFragment.this.handleSuccContinue();
                    } else if (i2 == 2001) {
                        BaseDocFragment.this.mRecordManager.recordUploadEnd(1, 0, i2);
                        BaseDocFragment.this.updateUI(UIState.UPLOAD_END_FAIL);
                        BaseDocFragment.this.failQuit(bioUploadResult);
                    } else if (i2 == 2002) {
                        BaseDocFragment.this.handleFailRetry(bioUploadResult.extParams);
                    } else if (i2 == 3001 || i2 == 3002) {
                        BaseDocFragment.this.handleNetWorkError();
                    } else {
                        BaseDocFragment.this.mRecordManager.recordUploadEnd(1, 0, i2);
                        BaseDocFragment.this.updateUI(UIState.UPLOAD_END_FAIL);
                        BaseDocFragment.this.updateUI(UIState.ALERT);
                        BaseDocFragment.this.alertSystemError();
                    }
                    return false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void interrupt() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper == null || dialogHelper.isShowing()) {
            return;
        }
        this.mRecordManager.recordAlertAppear(ZdocRecordService.ACTIVE_EXIT);
        final UIState uIState = this.mCurrentState;
        updateUI(UIState.ALERT);
        this.mDialogHelper.alert(getString(R.string.zdoc_user_cancel_title), getString(R.string.zdoc_user_cancel_msg), getString(R.string.zdoc_user_cancel_stay), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.ACTIVE_EXIT, Integer.toString(1));
                UIState uIState2 = uIState;
                UIState uIState3 = UIState.CAPTURE;
                if (uIState2 == uIState3) {
                    BaseDocFragment.this.updateUI(uIState3);
                }
            }
        }, getString(R.string.zdoc_user_cancel_quit), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.ACTIVE_EXIT, Integer.toString(0));
                BaseDocFragment.this.responseWithCode(301, null);
            }
        });
    }

    protected void adjustPreview(double d2, double d3) {
        CameraSurfaceView cameraSurfaceView = this.mCameraSurfaceView;
        if (cameraSurfaceView != null) {
            ViewGroup.LayoutParams layoutParams = cameraSurfaceView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = this.mPhotoImageView.getLayoutParams();
            int width = this.mCameraSurfaceView.getWidth();
            int height = this.mCameraSurfaceView.getHeight();
            double d4 = width;
            Double.isNaN(d4);
            int i2 = (int) ((d4 / d2) * d3);
            if (i2 >= height) {
                layoutParams.height = i2;
                layoutParams2.height = i2;
            } else {
                double d5 = height;
                Double.isNaN(d5);
                int i3 = (int) ((d5 / d3) * d2);
                if (i3 >= width) {
                    layoutParams.width = i3;
                    layoutParams2.width = i3;
                }
            }
            this.mCameraSurfaceView.setLayoutParams(layoutParams);
            this.mPhotoImageView.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseCameraPermissionFragment
    protected void alertCameraNoPermissionDialog(final PermissionDialogEvent permissionDialogEvent) {
        this.mRecordManager.recordAuthCheck(0);
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.alert(getString(R.string.zdoc_camera_permission_title), getString(R.string.zdoc_camera_permission_msg), getString(R.string.zdoc_camera_permission_settings), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    permissionDialogEvent.execute();
                }
            }, getString(R.string.zdoc_camera_permission_not_allow), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.CAMERA_ERROR, Integer.toString(1));
                    BaseDocFragment.this.responseWithCode(100, null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void alertSystemError() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper == null || dialogHelper.isShowing()) {
            return;
        }
        this.mRecordManager.recordAlertAppear(ZdocRecordService.SYSTEM_EXCEPTION_ERROR);
        this.mDialogHelper.alert(getString(R.string.system_error_title), getString(R.string.system_error_msg), getString(R.string.system_error_got_it), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.SYSTEM_EXCEPTION_ERROR, Integer.toString(1));
                dialogInterface.dismiss();
                BaseDocFragment.this.responseWithCode(205, null);
            }
        }, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TGFrame createTGFrame(CameraData cameraData) {
        TGFrame tGFrame = new TGFrame();
        tGFrame.data = cameraData.getColorData().array();
        tGFrame.width = cameraData.getColorWidth();
        tGFrame.height = cameraData.getColorHeight();
        tGFrame.frameMode = 0;
        tGFrame.rotation = CameraSurfaceView.getCameraImpl(getContext()).getCameraViewRotation();
        return tGFrame;
    }

    public void failQuit(final BioUploadResult bioUploadResult) {
        this.mRecordManager.recordAlertAppear(ZdocRecordService.OVER_THRESHOLD_ERROR);
        this.mRecordManager.recordOverThreshold();
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.alert(getString(R.string.zdoc_retry_max_title), getString(R.string.zdoc_retry_max_msg), getString(R.string.zdoc_retry_max_got_it), new DialogInterface.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.11
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    BaseDocFragment.this.mRecordManager.recordAlertChoose(ZdocRecordService.OVER_THRESHOLD_ERROR, Integer.toString(1));
                    BaseDocFragment.this.responseWithCode(209, bioUploadResult);
                }
            }, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void formatConfigs() {
        ZdocRemoteConfig zdocRemoteConfig = this.mZdocRemoteConfig;
        if (zdocRemoteConfig == null) {
            return;
        }
        CollModule coll = zdocRemoteConfig.getModules().get(this.mCurrentPageNumberIndex).getColl();
        this.mUiType = coll.getUiType();
        this.mCurrentPageNumber = coll.getPageNo();
        this.mCurrentRetryTimes = 0;
        this.mMaxRetryTimes = coll.getRetryLimit();
        this.mRecordManager.updatePageNumber(this.mCurrentPageNumber);
    }

    protected DeviceSetting getCurrentDeviceSetting() {
        DeviceSetting deviceSetting = new DeviceSetting();
        deviceSetting.setCameraAuto(false);
        deviceSetting.setCameraID(findBackCameraId());
        return deviceSetting;
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseCameraPermissionFragment
    protected int getLayoutId() {
        return UIFacade.getLayoutId(getActivity(), this.mUiType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleAlert(UIState uIState) {
        if (uIState == UIState.CAPTURE) {
            this.mShowFrame = true;
            this.mRecordManager.recordBasicCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleCapture() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.dismissDialog();
        }
        this.mPhotoImageView.setVisibility(4);
        this.mCameraSurfaceView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUploading() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.showProgressDialog("", false, null, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUserConfirm() {
        this.mShowFrame = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Rect mappingToPic(Rect rect) {
        int previewHeight = CameraSurfaceView.getCameraImpl(getActivity()).getPreviewHeight();
        int previewWidth = CameraSurfaceView.getCameraImpl(getActivity()).getPreviewWidth();
        if (previewHeight >= previewWidth) {
            previewWidth = previewHeight;
            previewHeight = previewWidth;
        }
        int height = this.mCameraSurfaceView.getHeight();
        int width = this.mCameraSurfaceView.getWidth();
        float f2 = previewHeight / width;
        String str = "mappingToPic leftx =" + rect.left + "rightX =" + rect.right + "leftY =" + rect.top + "rightY =" + rect.bottom + "imagewidth =" + previewHeight + "imageheight =" + previewWidth + "screenwidth =" + width + "screenheight =" + height + "ratioH =" + f2;
        rect.left = (int) (rect.left * f2);
        float f3 = (previewWidth - (height * f2)) / 2.0f;
        rect.top = (int) ((rect.top * f2) + f3);
        rect.right = (int) (rect.right * f2);
        rect.bottom = (int) ((f2 * rect.bottom) + f3);
        String str2 = "mappingToPic leftx =" + rect.left + "rightX =" + rect.right + "leftY =" + rect.top + "rightY =" + rect.bottom + "imagewidth =" + previewHeight + "imageheight =" + previewWidth + "screenwidth =" + width + "screenheight =" + height;
        return rect;
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseFragment
    public boolean onBackPressed() {
        interrupt();
        return true;
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseCameraPermissionFragment
    protected void onCameraInit() {
        this.mCameraSurfaceView.setCameraCallback(this);
        this.mCameraInterface = CameraSurfaceView.getCameraImpl(getActivity());
        this.mCameraInterface.setCallback(this);
        this.mCameraInterface.initCamera(getCurrentDeviceSetting());
        this.mCameraSurfaceView.setVisibility(0);
        updateUI(UIState.CAPTURE);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (BioServiceManager.getCurrentInstance() == null) {
            new IllegalStateException("null == BioServiceManager.getCurrentInstance()");
            getActivity().finish();
            return;
        }
        initData();
        initUpload();
        this.mCurrentPageNumberIndex = 0;
        this.mRecordManager = new ZdocRecordManager();
        formatConfigs();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.mCurrentPageNumberIndex = 0;
        this.mCurrentPageNumber = 0;
        this.mCurrentRetryTimes = 0;
        this.mContent = null;
        this.mKey = null;
        IMessageView iMessageView = this.mMessageView;
        if (iMessageView != null) {
            iMessageView.clearClickListener();
        }
        TitleBar titleBar = this.mTitleBar;
        if (titleBar != null) {
            titleBar.setClickListener(null);
        }
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.forceDismissDialog();
            this.mDialogHelper.release();
            this.mDialogHelper = null;
        }
        ICameraInterface iCameraInterface = this.mCameraInterface;
        if (iCameraInterface != null) {
            iCameraInterface.releaseCamera();
        }
        if (this.mUploadManager != null) {
            this.mUploadManager = null;
        }
        this.mBioUploadService = null;
        ZdocRecordManager zdocRecordManager = this.mRecordManager;
        if (zdocRecordManager != null) {
            zdocRecordManager.destory();
        }
        super.onDestroy();
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onError(int i2) {
        if (i2 == -1) {
            this.mCameraSurfaceView.setVisibility(4);
            checkCameraPermission();
        } else if (i2 != 0) {
            this.mCameraSurfaceView.setVisibility(4);
            alertSystemError();
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseCameraPermissionFragment
    protected void onInitView() {
        this.mDialogHelper = new DialogHelper(getActivity());
        this.mCameraSurfaceView = (CameraSurfaceView) findViewById(R.id.surface);
        this.mPhotoImageView = (ImageView) findViewById(R.id.iv_photo);
        this.mTitleBar = (TitleBar) findViewById(R.id.layout_titlebar);
        this.mMessageView = (IMessageView) findViewById(R.id.layout_message);
        this.mMessageView.updateUI(UIState.CAPTURE, this.mZdocRemoteConfig.getShowPowerByZoloz(), -1);
        this.mTitleBar.setClickListener(new View.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseDocFragment baseDocFragment = BaseDocFragment.this;
                baseDocFragment.mRecordManager.recordClickButton(baseDocFragment.mCurrentState.toString(), ZdocRecordService.GO_BACK);
                BaseDocFragment.this.interrupt();
            }
        });
        this.mDefaultMaskView = (BaseMaskView) findViewById(R.id.layout_mask_view);
        this.mDefaultMaskView.setLayerType(1, null);
        if (this.mBioAppDescription == null || this.mZdocRemoteConfig == null) {
            alertSystemError();
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onPreviewFrame(CameraData cameraData) {
        if (this.mShowFrame) {
            showPreviewImg(createTGFrame(cameraData));
            this.mShowFrame = false;
        }
        if (this.needRecordImageSize) {
            this.mRecordManager.recordImageSize(cameraData.getPreviewWidth(), cameraData.getPreviewHeight());
            this.needRecordImageSize = false;
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onSurfaceChanged(final double d2, final double d3) {
        this.mMainThreadHandler.post(new Runnable() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocFragment.2
            @Override // java.lang.Runnable
            public void run() {
                BaseDocFragment.this.adjustPreview(d2, d3);
            }
        });
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onSurfaceCreated() {
        this.mRecordManager.recordAuthCheck(1);
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onSurfaceDestroyed() {
    }

    public void onWindowFocusChanged(boolean z) {
        if (z) {
            this.mMessageView.setUiLocation(this.mUiType, this.mCameraSurfaceView.getHeight(), this.mDefaultMaskView.getTipsBottomMargin(), this.mDefaultMaskView.getInvisibleHeight());
        }
    }

    public void responseWithCode(int i2, BioUploadResult bioUploadResult) {
        if (i2 == 202 || i2 == 301) {
            this.mRecordManager.recordEndScan(false);
        }
        ZdocResponse zdocResponse = new ZdocResponse();
        zdocResponse.retCode = i2;
        zdocResponse.bioUploadResult = bioUploadResult;
        FalconTaskManager.getInstance().transResult(zdocResponse);
    }

    protected void showPreviewImg(TGFrame tGFrame) {
        try {
            this.mPhotoImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            Bitmap rotateBitmap = BitmapHelper.rotateBitmap(BitmapHelper.bytes2Bitmap(tGFrame.data, tGFrame.width, tGFrame.height, tGFrame.frameMode), tGFrame.rotation);
            if (rotateBitmap != null) {
                this.mPhotoImageView.setImageBitmap(BitmapHelper.resize(rotateBitmap, (int) (rotateBitmap.getWidth() * 0.8f), (int) (rotateBitmap.getHeight() * 0.8f)));
                this.mPhotoImageView.setVisibility(0);
            }
        } catch (OutOfMemoryError unused) {
            this.mRecordManager.record("zdoc_out_of_memory");
            System.gc();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void upLoadImage() {
        this.mRecordManager.recordUploadStart(this.mContent.length);
        UploadManager uploadManager = this.mUploadManager;
        if (uploadManager != null) {
            uploadManager.setRetryTimes(this.mCurrentRetryTimes);
            this.mUploadManager.upload(this.mContent, this.mKey, this.mIsUTF8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateUI(UIState uIState) {
        switch (AnonymousClass15.$SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[uIState.ordinal()]) {
            case 1:
                handleCapture();
                break;
            case 2:
                handleUserConfirm();
                break;
            case 3:
                handleUploading();
                break;
            case 4:
                DialogHelper dialogHelper = this.mDialogHelper;
                if (dialogHelper != null) {
                    dialogHelper.showSuccessDialog(false, null);
                    break;
                }
                break;
            case 5:
                DialogHelper dialogHelper2 = this.mDialogHelper;
                if (dialogHelper2 != null) {
                    dialogHelper2.dismissDialog();
                    break;
                }
                break;
            case 6:
                handleAlert(this.mCurrentState);
                break;
        }
        this.mCurrentState = uIState;
        ZdocRemoteConfig zdocRemoteConfig = this.mZdocRemoteConfig;
        if (zdocRemoteConfig != null) {
            this.mMessageView.updateUI(uIState, zdocRemoteConfig.getShowPowerByZoloz(), -1);
        }
    }
}
