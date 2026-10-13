package zoloz.ap.com.toolkit.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;
import zoloz.ap.com.toolkit.R;
import zoloz.ap.com.toolkit.ui.GenenalDialog;

/* loaded from: classes2.dex */
public class DialogHelper {
    protected static final String TAG = "DialogHelper";
    private Activity mActivity;
    private AlertDialog mAlertDialog;

    /* loaded from: classes2.dex */
    public class ZolozSuccessDialog extends AlertDialog {
        public ZolozSuccessDialog(Context context) {
            super(context);
        }

        @Override // android.app.AlertDialog, android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(R.layout.layout_upload_success);
        }
    }

    public DialogHelper(Activity activity) {
        this.mActivity = activity;
    }

    public void alert(String str, String str2, String str3, DialogInterface.OnClickListener onClickListener, String str4, DialogInterface.OnClickListener onClickListener2) {
        alert(str, str2, str3, onClickListener, str4, onClickListener2, false);
    }

    public void dismissDialog() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: zoloz.ap.com.toolkit.ui.DialogHelper.3
            @Override // java.lang.Runnable
            public void run() {
                if (DialogHelper.this.mAlertDialog == null || !DialogHelper.this.mAlertDialog.isShowing() || DialogHelper.this.mActivity.isFinishing()) {
                    return;
                }
                try {
                    DialogHelper.this.mAlertDialog.dismiss();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        });
    }

    public void forceDismissDialog() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: zoloz.ap.com.toolkit.ui.DialogHelper.4
            @Override // java.lang.Runnable
            public void run() {
                if (DialogHelper.this.mAlertDialog == null || !DialogHelper.this.mAlertDialog.isShowing()) {
                    return;
                }
                try {
                    DialogHelper.this.mAlertDialog.dismiss();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        });
    }

    public boolean isShowing() {
        AlertDialog alertDialog = this.mAlertDialog;
        return alertDialog != null && alertDialog.isShowing();
    }

    public void release() {
        this.mActivity = null;
        this.mAlertDialog = null;
    }

    public void setActivity(Activity activity) {
        this.mActivity = activity;
    }

    public void showProgressDialog(final String str, final boolean z, final DialogInterface.OnCancelListener onCancelListener, final boolean z2) {
        dismissDialog();
        this.mActivity.runOnUiThread(new Runnable() { // from class: zoloz.ap.com.toolkit.ui.DialogHelper.2
            @Override // java.lang.Runnable
            public void run() {
                if (DialogHelper.this.mActivity == null || DialogHelper.this.mActivity.isFinishing()) {
                    return;
                }
                DialogHelper dialogHelper = DialogHelper.this;
                dialogHelper.mAlertDialog = new ZolozProgressDialog(dialogHelper.mActivity);
                DialogHelper.this.mAlertDialog.setMessage(str);
                ((ZolozProgressDialog) DialogHelper.this.mAlertDialog).setProgressVisiable(z2);
                DialogHelper.this.mAlertDialog.setCancelable(z);
                DialogHelper.this.mAlertDialog.setOnCancelListener(onCancelListener);
                DialogHelper.this.mAlertDialog.setCanceledOnTouchOutside(false);
                DialogHelper.this.mAlertDialog.getWindow().setGravity(17);
                DialogHelper.this.mAlertDialog.show();
            }
        });
    }

    public void showSuccessDialog(final boolean z, final DialogInterface.OnCancelListener onCancelListener) {
        dismissDialog();
        this.mActivity.runOnUiThread(new Runnable() { // from class: zoloz.ap.com.toolkit.ui.DialogHelper.5
            @Override // java.lang.Runnable
            public void run() {
                if (DialogHelper.this.mActivity == null || DialogHelper.this.mActivity.isFinishing()) {
                    return;
                }
                DialogHelper dialogHelper = DialogHelper.this;
                dialogHelper.mAlertDialog = new ZolozSuccessDialog(dialogHelper.mActivity);
                DialogHelper.this.mAlertDialog.setCancelable(z);
                DialogHelper.this.mAlertDialog.setOnCancelListener(onCancelListener);
                DialogHelper.this.mAlertDialog.setCanceledOnTouchOutside(false);
                DialogHelper.this.mAlertDialog.getWindow().setGravity(17);
                DialogHelper.this.mAlertDialog.show();
            }
        });
    }

    /* loaded from: classes2.dex */
    public class ZolozProgressDialog extends AlertDialog {
        private boolean mIndeterminate;
        private CharSequence mMessage;
        private TextView mMessageView;
        private ProgressBar mProgress;
        private boolean mProgressVisiable;

        public ZolozProgressDialog(Context context) {
            super(context, R.style.process_style);
        }

        private void setMessageAndView() {
            this.mMessageView.setText(this.mMessage);
            CharSequence charSequence = this.mMessage;
            if (charSequence == null || "".equals(charSequence)) {
                this.mMessageView.setVisibility(8);
            }
            this.mProgress.setVisibility(this.mProgressVisiable ? 0 : 8);
        }

        @Override // android.app.AlertDialog, android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(R.layout.layout_progress_dialog);
            this.mProgress = (ProgressBar) findViewById(android.R.id.progress);
            this.mMessageView = (TextView) findViewById(R.id.message);
            setMessageAndView();
            setIndeterminate(this.mIndeterminate);
        }

        public void setIndeterminate(boolean z) {
            ProgressBar progressBar = this.mProgress;
            if (progressBar != null) {
                progressBar.setIndeterminate(z);
            } else {
                this.mIndeterminate = z;
            }
        }

        @Override // android.app.AlertDialog
        public void setMessage(CharSequence charSequence) {
            this.mMessage = charSequence;
        }

        public void setProgressVisiable(boolean z) {
            this.mProgressVisiable = z;
        }

        public ZolozProgressDialog(Context context, int i2) {
            super(context, i2);
        }
    }

    public void alert(String str, String str2, String str3, DialogInterface.OnClickListener onClickListener, String str4, DialogInterface.OnClickListener onClickListener2, Boolean bool) {
        alert(str, str2, str3, onClickListener, str4, onClickListener2, false, false);
    }

    public void alert(final String str, final String str2, final String str3, final DialogInterface.OnClickListener onClickListener, final String str4, final DialogInterface.OnClickListener onClickListener2, Boolean bool, Boolean bool2) {
        dismissDialog();
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.mActivity.runOnUiThread(new Runnable() { // from class: zoloz.ap.com.toolkit.ui.DialogHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DialogHelper.this.mActivity == null || DialogHelper.this.mActivity.isFinishing()) {
                        return;
                    }
                    GenenalDialog.Builder builder = new GenenalDialog.Builder(DialogHelper.this.mActivity);
                    String str5 = str;
                    if (str5 != null) {
                        builder.setTitle(str5);
                    }
                    String str6 = str2;
                    if (str6 != null) {
                        builder.setMessage(str6);
                    }
                    String str7 = str3;
                    if (str7 != null) {
                        builder.setPositiveButton(str7, onClickListener);
                    }
                    String str8 = str4;
                    if (str8 != null) {
                        builder.setNegativeButton(str8, onClickListener2);
                    }
                    builder.setToGarfieldFaceless(false);
                    builder.showCloseButton(false);
                    builder.showProtocol(false);
                    GenenalDialog show = builder.show();
                    DialogHelper.this.mAlertDialog = show;
                    show.setCancelable(false);
                    show.setCanceledOnTouchOutside(false);
                    show.getWindow().setGravity(17);
                }
            });
        }
    }
}
