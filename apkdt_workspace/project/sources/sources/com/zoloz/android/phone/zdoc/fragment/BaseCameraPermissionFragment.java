package com.zoloz.android.phone.zdoc.fragment;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.content.a;
import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import com.zoloz.android.phone.zdoc.R;

/* loaded from: classes2.dex */
public abstract class BaseCameraPermissionFragment extends BaseFragment implements PermissionDialogEvent {
    private static final int CAMERA_PERMISSION_REQUEST_CODE = 1;
    private boolean isFirst = true;
    private CameraSurfaceView mCameraSurfaceView;
    private View mRootView;

    private void dealCameraHasPermission() {
        onCameraInit();
        this.mCameraSurfaceView.setVisibility(0);
    }

    protected abstract void alertCameraNoPermissionDialog(PermissionDialogEvent permissionDialogEvent);

    public void checkCameraPermission() {
        if (!this.isFirst) {
            alertCameraNoPermissionDialog(this);
            return;
        }
        this.isFirst = false;
        if (hasCameraPermission()) {
            dealCameraHasPermission();
        } else {
            requestPermissions(new String[]{"android.permission.CAMERA"}, 1);
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.PermissionDialogEvent
    public void execute() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setData(Uri.parse("package:" + getContext().getPackageName()));
        intent.addFlags(268435456);
        intent.addFlags(1073741824);
        intent.addFlags(8388608);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View findViewById(int i2) {
        return this.mRootView.findViewById(i2);
    }

    protected abstract int getLayoutId();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasCameraPermission() {
        return Build.VERSION.SDK_INT < 23 || a.a(getActivity(), "android.permission.CAMERA") == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initView() {
        this.mCameraSurfaceView = (CameraSurfaceView) findViewById(R.id.surface);
        this.mCameraSurfaceView.setVisibility(4);
        onInitView();
        onCameraInit();
    }

    protected abstract void onCameraInit();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = this.mRootView;
        if (view == null) {
            this.mRootView = layoutInflater.inflate(getLayoutId(), viewGroup, false);
            initView();
        } else {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mRootView);
            }
        }
        return this.mRootView;
    }

    protected abstract void onInitView();

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.mCameraSurfaceView.setVisibility(4);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 1) {
            if (iArr.length > 0 && iArr[0] == 0) {
                dealCameraHasPermission();
            } else {
                alertCameraNoPermissionDialog(this);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.mCameraSurfaceView.setVisibility(0);
    }
}
