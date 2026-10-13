package com.alipay.zoloz.zface.ui.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.text.TextUtils;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.constants.ZcodeConstants;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.zoloz.toyger.R;
import com.alipay.zoloz.zface.services.ZFaceRecordService;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.HashMap;
import zoloz.ap.com.toolkit.ui.DialogCallback;
import zoloz.ap.com.toolkit.ui.DialogHelper;
import zoloz.ap.com.toolkit.ui.GenenalDialog;

/* loaded from: classes.dex */
public class AlertUtil {
    private boolean isAlert = false;
    private Activity mActivity;
    private AlertClickEvents mAlertClickEvents;

    /* loaded from: classes.dex */
    public interface AlertClickEvents {
        void retry();

        void retryUpload();

        void sendResponse(int i2, String str);

        void showFrame();

        void stopProcess();
    }

    public AlertUtil(Activity activity, AlertClickEvents alertClickEvents) {
        this.mActivity = activity;
        this.mAlertClickEvents = alertClickEvents;
    }

    private String getString(int i2) {
        return this.mActivity.getString(i2);
    }

    private static void record(String str, String str2) {
        record(str, str2, "");
    }

    public Dialog alert(String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener) {
        return alert(str, str2, str3, str4, onClickListener, null, null);
    }

    public void alertBack() {
        alert("clickXback", getString(R.string.zface_user_cancel_title), getString(R.string.zface_user_cancel_msg), getString(R.string.zface_user_cancel_stay), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.19
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.retry();
            }
        }, getString(R.string.zface_user_cancel_quit), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(202, CodeConstants.USER_QUITE);
            }
        });
    }

    public void alertCameraOpenFailed() {
        alert("cameraInitError", getString(R.string.zface_camera_init_error_msg), "", getString(R.string.zface_camera_init_error_got_it), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(200, CodeConstants.ERROR_CAMERA);
            }
        });
    }

    public void alertCameraPermissionFailed(DialogInterface.OnClickListener onClickListener) {
        alert("cameraPermission", getString(R.string.zface_camera_without_permission_title), getString(R.string.zface_camera_without_permission_msg), getString(R.string.zface_camera_without_permission_go_settings), onClickListener, getString(R.string.zface_camera_without_permission_quit), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.15
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(100, CodeConstants.ERROR_CAMERA);
            }
        });
    }

    public void alertFailRetry() {
        alert("livnessFail", getString(R.string.zface_scan_fail_title), getString(R.string.zface_scan_fail_msg), getString(R.string.zface_scan_fail_retry), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.retry();
            }
        }, getString(R.string.zface_scan_fail_quit), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(208, CodeConstants.SERVER_FAIL);
            }
        });
    }

    public void alertFirstLogin() {
        alert("authorization", getString(R.string.zface_detect_dialog_first_login), "", getString(R.string.zface_detect_dialog_first_login_confirm), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.retry();
            }
        }, getString(R.string.zface_detect_dialog_first_login_cancel), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(210, ZcodeConstants.ZCODE_FIRST_LOGIN);
            }
        });
    }

    public void alertInterruptResume() {
        alert("systemInterrupt", getString(R.string.zface_interrupt_title), getString(R.string.zface_interrupt_msg), getString(R.string.zface_interrupt_retry), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.retry();
            }
        }, getString(R.string.zface_interrupt_close), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(301, CodeConstants.USER_BACK);
            }
        });
    }

    public void alertNetworkError() {
        alert("networkFail", getString(R.string.network_error_title), getString(R.string.network_error_msg), getString(R.string.network_error_retry), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.retryUpload();
            }
        }, getString(R.string.network_error_exit), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.18
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(207, CodeConstants.NETWORK_TIMEOUT);
            }
        });
    }

    public void alertRetryOutTime() {
        alert("retryOverMax", getString(R.string.zface_retry_max_title), getString(R.string.zface_retry_max_msg), getString(R.string.zface_retry_max_got_it), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(209, CodeConstants.OUT_TIME);
            }
        });
    }

    public void alertSystemError() {
        alert("loadAlgorithmErr", getString(R.string.system_error_title), getString(R.string.system_error_msg), getString(R.string.system_error_got_it), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(205, CodeConstants.SERVER_PARAM_ERROR);
            }
        });
    }

    public void alertSystemNotSupport(final String str) {
        alert("errorDeviceModel", getString(R.string.zface_device_unsupport_msg), "", getString(R.string.zface_device_unsupport_got_it), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String str2 = str;
                if (str2 == ZcodeConstants.ZCODE_UNSUPPORTED_CPU) {
                    AlertUtil.this.mAlertClickEvents.sendResponse(102, CodeConstants.USER_UNSURPPORT_CPU);
                } else if (str2 == ZcodeConstants.ZCODE_NO_FRANT_CAMERA) {
                    AlertUtil.this.mAlertClickEvents.sendResponse(101, CodeConstants.ERROR_CAMERA);
                } else {
                    AlertUtil.this.mAlertClickEvents.sendResponse(105, CodeConstants.ANDROID_VERSION_LOW);
                }
            }
        });
    }

    public void alertTimeOut() {
        alert("timeout", getString(R.string.zface_time_out_title), getString(R.string.zface_time_out_msg), getString(R.string.zface_time_out_retry), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.retry();
            }
        }, getString(R.string.zface_time_out_quit), new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AlertUtil.this.mAlertClickEvents.sendResponse(202, CodeConstants.OVER_TIME);
            }
        });
    }

    public DialogHelper alertUploadSuccess(Activity activity) {
        DialogHelper dialogHelper = new DialogHelper(activity);
        dialogHelper.showSuccessDialog(false, null);
        return dialogHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void record(String str, String str2, String str3) {
        BioServiceManager currentInstance = BioServiceManager.getCurrentInstance();
        if (currentInstance == null) {
            return;
        }
        ZFaceRecordService zFaceRecordService = (ZFaceRecordService) currentInstance.getBioService(ZFaceRecordService.class);
        HashMap hashMap = new HashMap();
        hashMap.put(ZdocRecordService.REASON, str2);
        if (!TextUtils.isEmpty(str3)) {
            hashMap.put("choose", str3);
        }
        if (zFaceRecordService != null) {
            zFaceRecordService.write(str, hashMap);
        }
    }

    public Dialog alert(String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener, String str5, DialogInterface.OnClickListener onClickListener2) {
        return alert(str, str2, str3, str4, onClickListener, str5, onClickListener2, false, null);
    }

    public Dialog alert(final String str, String str2, String str3, final String str4, final DialogInterface.OnClickListener onClickListener, final String str5, final DialogInterface.OnClickListener onClickListener2, boolean z, DialogCallback dialogCallback) {
        if (this.isAlert) {
            return null;
        }
        this.isAlert = true;
        this.mAlertClickEvents.showFrame();
        this.mAlertClickEvents.stopProcess();
        if (this.mActivity.isFinishing()) {
            return null;
        }
        record(ZFaceRecordService.ALERT_APPEAR, str);
        GenenalDialog.Builder builder = new GenenalDialog.Builder(this.mActivity);
        if (!TextUtils.isEmpty(str2)) {
            builder.setTitle(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            builder.setMessage(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            builder.setPositiveButton(str4, new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    onClickListener.onClick(dialogInterface, i2);
                    AlertUtil.record(ZFaceRecordService.ALERT_CHOOSE, str, str4);
                }
            });
        }
        if (!TextUtils.isEmpty(str5)) {
            builder.setNegativeButton(str5, new DialogInterface.OnClickListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    onClickListener2.onClick(dialogInterface, i2);
                    AlertUtil.record(ZFaceRecordService.ALERT_CHOOSE, str, str5);
                }
            });
        }
        builder.showCloseButton(false);
        builder.showProtocol(false);
        GenenalDialog show = builder.show();
        show.setCanceledOnTouchOutside(z);
        show.setCancelable(z);
        show.setCallback(dialogCallback);
        show.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.alipay.zoloz.zface.ui.util.AlertUtil.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                AlertUtil.this.isAlert = false;
            }
        });
        return show;
    }
}
