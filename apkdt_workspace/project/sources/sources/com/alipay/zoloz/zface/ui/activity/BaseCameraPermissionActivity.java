package com.alipay.zoloz.zface.ui.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.a;
import com.alipay.mobile.security.bio.constants.ZcodeConstants;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import com.alipay.zoloz.toyger.R;
import com.alipay.zoloz.zface.beans.AlertData;
import com.alipay.zoloz.zface.presenter.ZFaceBasePresenter;
import com.alipay.zoloz.zface.presenter.ZFaceCallback;

/* loaded from: classes.dex */
public abstract class BaseCameraPermissionActivity extends Activity implements ZFaceCallback {
    private CameraSurfaceView mCameraSurfaceView;
    private final int PERMISSION_REQUEST_CODE = 1;
    private boolean mFirstCheckPermission = true;
    protected DialogInterface.OnClickListener mGoToPermissionSetting = new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.activity.BaseCameraPermissionActivity.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse("package:" + BaseCameraPermissionActivity.this.getPackageName()));
            intent.addFlags(268435456);
            intent.addFlags(1073741824);
            intent.addFlags(8388608);
            BaseCameraPermissionActivity.this.startActivity(intent);
        }
    };

    private boolean checkCameraPermission() {
        boolean hasPermission = hasPermission();
        if (!hasPermission) {
            this.mCameraSurfaceView.setVisibility(4);
            if (this.mFirstCheckPermission) {
                this.mFirstCheckPermission = false;
                a.a(this, new String[]{"android.permission.CAMERA"}, 1);
            } else {
                alertCameraPermissionFailed(this.mGoToPermissionSetting);
            }
        }
        return hasPermission;
    }

    private void initPresenter() {
        this.mCameraSurfaceView.setVisibility(0);
        createPresenter(this, this.mCameraSurfaceView);
    }

    private void initView() {
        this.mCameraSurfaceView = (CameraSurfaceView) findViewById(R.id.zface_surface_view);
    }

    protected abstract void alertCameraOpenFailed();

    protected abstract void alertCameraPermissionFailed(DialogInterface.OnClickListener onClickListener);

    protected abstract ZFaceBasePresenter createPresenter(ZFaceCallback zFaceCallback, CameraSurfaceView cameraSurfaceView);

    protected abstract int getLayoutResId();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean handleErrorEvnet(AlertData alertData) {
        if (!alertData.subCode.equals(ZcodeConstants.ZCODE_ERROR_CAMERA_STREAM_ERROR) && !alertData.subCode.equals(ZcodeConstants.ZCODE_NO_CAMERA_PERMISSION)) {
            return false;
        }
        if (!checkCameraPermission()) {
            return true;
        }
        alertCameraOpenFailed();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasPermission() {
        return Build.VERSION.SDK_INT < 23 || androidx.core.content.a.a(this, "android.permission.CAMERA") == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCameraWithPermission() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!preCheck()) {
            finish();
            return;
        }
        try {
            getWindow().setFlags(FileUtil.STREAM_BUFFER_SIZE, FileUtil.STREAM_BUFFER_SIZE);
        } catch (Throwable unused) {
        }
        setContentView(getLayoutResId());
        getWindow().addFlags(128);
        initView();
        initPresenter();
        onInitView();
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceCallback
    public void onErrorEvent(AlertData alertData) {
        if (handleErrorEvnet(alertData)) {
        }
    }

    protected abstract void onInitView();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mCameraSurfaceView.setVisibility(4);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 1) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.mCameraSurfaceView.setVisibility(0);
                onCameraWithPermission();
            } else {
                alertCameraPermissionFailed(this.mGoToPermissionSetting);
            }
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        this.mCameraSurfaceView.setVisibility(0);
    }

    protected boolean preCheck() {
        return true;
    }
}
