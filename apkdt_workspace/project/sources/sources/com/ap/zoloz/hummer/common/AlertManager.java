package com.ap.zoloz.hummer.common;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.ap.zoloz.hummer.R;
import zoloz.ap.com.toolkit.ui.DialogHelper;

/* loaded from: classes.dex */
public class AlertManager {
    private static AlertManager sInstance;
    private Context mContext;
    private DialogHelper mDialogHelper;

    public static AlertManager getInstance() {
        if (sInstance == null) {
            synchronized (AlertManager.class) {
                if (sInstance == null) {
                    sInstance = new AlertManager();
                }
            }
        }
        return sInstance;
    }

    public void alert(String str, String str2, String str3, String str4, final IAlertCallback iAlertCallback) {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper == null) {
            return;
        }
        dialogHelper.dismissDialog();
        if (StringUtil.isNullorEmpty(str4)) {
            this.mDialogHelper.alert(str, str2, str3, new DialogInterface.OnClickListener() { // from class: com.ap.zoloz.hummer.common.AlertManager.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    iAlertCallback.onPositive();
                }
            }, null, null);
        } else {
            this.mDialogHelper.alert(str, str2, str3, new DialogInterface.OnClickListener() { // from class: com.ap.zoloz.hummer.common.AlertManager.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    iAlertCallback.onPositive();
                }
            }, str4, new DialogInterface.OnClickListener() { // from class: com.ap.zoloz.hummer.common.AlertManager.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    iAlertCallback.onNegative();
                }
            });
        }
    }

    public void alertNetworkError(final IAlertManagerCallback iAlertManagerCallback) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        getInstance().alert(applicationContext.getString(R.string.network_error_title), applicationContext.getString(R.string.network_error_msg), applicationContext.getString(R.string.network_error_retry), applicationContext.getString(R.string.network_error_exit), new IAlertCallback() { // from class: com.ap.zoloz.hummer.common.AlertManager.5
            @Override // com.ap.zoloz.hummer.common.IAlertCallback
            public void onNegative() {
                IAlertManagerCallback iAlertManagerCallback2 = iAlertManagerCallback;
                if (iAlertManagerCallback2 != null) {
                    iAlertManagerCallback2.onHandelNetworkError(false);
                }
            }

            @Override // com.ap.zoloz.hummer.common.IAlertCallback
            public void onPositive() {
                IAlertManagerCallback iAlertManagerCallback2 = iAlertManagerCallback;
                if (iAlertManagerCallback2 != null) {
                    iAlertManagerCallback2.onHandelNetworkError(true);
                }
            }
        });
    }

    public void alertSystemError(final IAlertManagerCallback iAlertManagerCallback) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        alert(context.getApplicationContext().getString(R.string.system_error_title), this.mContext.getApplicationContext().getString(R.string.system_error_msg), this.mContext.getApplicationContext().getString(R.string.system_error_got_it), null, new IAlertCallback() { // from class: com.ap.zoloz.hummer.common.AlertManager.4
            @Override // com.ap.zoloz.hummer.common.IAlertCallback
            public void onNegative() {
            }

            @Override // com.ap.zoloz.hummer.common.IAlertCallback
            public void onPositive() {
                IAlertManagerCallback iAlertManagerCallback2 = iAlertManagerCallback;
                if (iAlertManagerCallback2 != null) {
                    iAlertManagerCallback2.onHandelSystemError();
                }
            }
        });
    }

    public void dismissDialog() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.dismissDialog();
        }
    }

    public void release() {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.release();
            this.mDialogHelper = null;
        }
        sInstance = null;
    }

    public void setContext(Context context) {
        this.mContext = context;
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper == null) {
            this.mDialogHelper = new DialogHelper((Activity) context);
        } else {
            dialogHelper.setActivity((Activity) context);
        }
    }

    public void showProgressDialog(String str, boolean z, DialogInterface.OnCancelListener onCancelListener, boolean z2) {
        DialogHelper dialogHelper = this.mDialogHelper;
        if (dialogHelper != null) {
            dialogHelper.showProgressDialog(str, z, onCancelListener, z2);
        }
    }
}
