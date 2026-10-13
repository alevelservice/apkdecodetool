package com.zoloz.android.phone.zdoc.fragment;

import android.view.View;
import com.alipay.zoloz.hardware.camera.CameraData;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.doc.ToygerDocBlobConfig;
import com.alipay.zoloz.toyger.doc.ToygerDocService;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import com.zoloz.android.phone.zdoc.ui.UIState;
import java.util.HashMap;
import zoloz.ap.com.toolkit.ui.DialogHelper;

/* loaded from: classes2.dex */
public class ZdocCaptureFragment extends BaseDocWithNineCaptureFragment {
    private boolean isCaptured = false;
    private TGFrame mTGFrame;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void handleCapture() {
        super.handleCapture();
        this.isCaptured = false;
        this.mPhotoImageView.setVisibility(8);
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseCameraPermissionFragment
    protected void initView() {
        super.initView();
        this.mMessageView.setOnTakePhotoListener(new View.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocCaptureFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZdocCaptureFragment zdocCaptureFragment = ZdocCaptureFragment.this;
                zdocCaptureFragment.mRecordManager.recordClickButton(zdocCaptureFragment.mCurrentState.toString(), ZdocRecordService.TAKE_PHOTO);
                ZdocCaptureFragment.this.isCaptured = true;
            }
        });
        this.mMessageView.setOnConfirmListener(new View.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocCaptureFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZdocCaptureFragment zdocCaptureFragment = ZdocCaptureFragment.this;
                zdocCaptureFragment.mRecordManager.recordClickButton(zdocCaptureFragment.mCurrentState.toString(), ZdocRecordService.PHOTO_CONFIRM);
                ZdocCaptureFragment.this.updateUI(UIState.UPLOADING);
                ZdocCaptureFragment.this.upLoadImage();
            }
        });
        this.mMessageView.setOnReTakePhotoListener(new View.OnClickListener() { // from class: com.zoloz.android.phone.zdoc.fragment.ZdocCaptureFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZdocCaptureFragment zdocCaptureFragment = ZdocCaptureFragment.this;
                zdocCaptureFragment.mRecordManager.recordClickButton(zdocCaptureFragment.mCurrentState.toString(), ZdocRecordService.PHOTO_CANCEL);
                ZdocCaptureFragment.this.updateUI(UIState.CAPTURE);
            }
        });
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocWithNineCaptureFragment, com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mTGFrame = null;
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocWithNineCaptureFragment, com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onPreviewFrame(CameraData cameraData) {
        super.onPreviewFrame(cameraData);
        if (this.isCaptured) {
            this.mTGFrame = createTGFrame(cameraData);
            this.isCaptured = false;
            updateUI(UIState.USER_CONFIRM);
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseFragment
    public void onRestart() {
        DialogHelper dialogHelper;
        super.onRestart();
        if (!hasCameraPermission() || (dialogHelper = this.mDialogHelper) == null || dialogHelper.isShowing()) {
            return;
        }
        UIState uIState = this.mCurrentState;
        UIState uIState2 = UIState.CAPTURE;
        if (uIState == uIState2) {
            updateUI(uIState2);
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocWithNineCaptureFragment, com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    protected void upLoadImage() {
        if (this.mTGFrame != null) {
            ToygerDocBlobConfig toygerDocBlobConfig = new ToygerDocBlobConfig();
            toygerDocBlobConfig.ratio = this.mZdocRemoteConfig.getRatio();
            toygerDocBlobConfig.pageNo = this.mCurrentPageNumber;
            toygerDocBlobConfig.pubkey = this.mUploadManager.getmPublicKey();
            toygerDocBlobConfig.docType = this.mZdocRemoteConfig.getModules().get(this.mCurrentPageNumberIndex).getColl().getDocType();
            HashMap<String, Object> generateDocBlob = ToygerDocService.generateDocBlob(this.mTGFrame, toygerDocBlobConfig, mappingToPic(this.mDefaultMaskView.getDocFrame()));
            this.mContent = (byte[]) generateDocBlob.get("content");
            this.mKey = (byte[]) generateDocBlob.get("key");
            this.mIsUTF8 = false;
        }
        super.upLoadImage();
    }
}
