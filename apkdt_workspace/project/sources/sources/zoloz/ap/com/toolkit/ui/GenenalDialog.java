package zoloz.ap.com.toolkit.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.mobile.security.bio.utils.StressTestUtil;
import com.alipay.mobile.security.faceauth.model.DetectTimerTask;
import e.b.b.a.a.a.c;
import zoloz.ap.com.toolkit.R;

/* loaded from: classes2.dex */
public class GenenalDialog extends AlertDialog {
    private static final int COUNT_TIME_OUT = 20;
    private GenenalDialog _self;
    private String cacelButtonText;
    private String confirmButtonText;
    private Context context;
    private ImageView garfieldIcon;
    private boolean isGarfieldFaceless;
    private DialogCallback mCallback;
    private TextView mCountTv;
    private Handler mHandler;
    private DetectTimerTask mTimerTask;
    private DialogInterface.OnClickListener negativeListener;
    private DialogInterface.OnClickListener positiveListener;
    private boolean showCloseButton;
    private boolean showProtocol;
    private String subTitle;
    private Object tag;
    private String title;

    /* loaded from: classes2.dex */
    public static class Builder {
        private String _cacelButtonText;
        private String _confirmButtonText;
        private Context _context;
        private boolean _isGarfieldFaceless;
        DialogInterface.OnClickListener _negativeListener;
        DialogInterface.OnClickListener _positiveListener;
        private boolean _showCloseButton;
        private boolean _showProtocol;
        private String _subTitle;
        private String _title;

        public Builder(Context context) {
            this._context = context;
        }

        public Builder setMessage(String str) {
            this._subTitle = str;
            return this;
        }

        public Builder setMessage2(String str) {
            this._subTitle = str;
            return this;
        }

        public Builder setNegativeButton(String str, DialogInterface.OnClickListener onClickListener) {
            this._cacelButtonText = str;
            this._negativeListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(String str, DialogInterface.OnClickListener onClickListener) {
            this._confirmButtonText = str;
            this._positiveListener = onClickListener;
            return this;
        }

        public Builder setTitle(String str) {
            this._title = str;
            return this;
        }

        public Builder setToGarfieldFaceless(boolean z) {
            this._isGarfieldFaceless = z;
            return this;
        }

        public GenenalDialog show() {
            GenenalDialog genenalDialog = new GenenalDialog(this._context, this._title, this._subTitle, this._confirmButtonText, this._positiveListener, this._cacelButtonText, this._negativeListener, this._showCloseButton, this._showProtocol, this._isGarfieldFaceless);
            try {
                genenalDialog.show();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return genenalDialog;
        }

        public Builder showCloseButton(boolean z) {
            this._showCloseButton = z;
            return this;
        }

        public Builder showProtocol(boolean z) {
            this._showProtocol = z;
            return this;
        }
    }

    public GenenalDialog(Context context, String str, String str2, String str3, DialogInterface.OnClickListener onClickListener, String str4, DialogInterface.OnClickListener onClickListener2, boolean z, boolean z2, boolean z3) {
        super(context, R.style.dialog_style);
        this.context = context;
        this.title = str;
        this.subTitle = str2;
        this.confirmButtonText = str3;
        this.cacelButtonText = str4;
        this.showCloseButton = z;
        this.showProtocol = z2;
        this.negativeListener = onClickListener2;
        this.positiveListener = onClickListener;
        this.isGarfieldFaceless = z3;
        this._self = this;
        this.mHandler = new Handler();
    }

    private void hideView(View view) {
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private void initViews() {
        ImageButton imageButton;
        LinearLayout linearLayout;
        TextView textView;
        View view;
        setContentView(!this.isGarfieldFaceless ? LayoutInflater.from(this.context).inflate(R.layout.general_dialog, (ViewGroup) null) : null);
        ((TextView) findViewById(R.id.dialog_content_title)).setText(this.title);
        ((TextView) findViewById(R.id.dialog_content_sub_title)).setText(this.subTitle);
        Button button = (Button) findViewById(R.id.dialog_btn_confirm);
        button.setText(this.confirmButtonText);
        Button button2 = (Button) findViewById(R.id.dialog_btn_cancel);
        button2.setText(this.cacelButtonText);
        if (this.isGarfieldFaceless) {
            imageButton = null;
            linearLayout = null;
            textView = null;
            view = null;
        } else {
            imageButton = (ImageButton) findViewById(R.id.btn_x);
            linearLayout = (LinearLayout) findViewById(R.id.dialog_protocol);
            textView = (TextView) findViewById(R.id.protocol);
            view = findViewById(R.id.dialog_btn_cancel_center);
        }
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: zoloz.ap.com.toolkit.ui.GenenalDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                }
            });
        }
        if (TextUtils.isEmpty(this.confirmButtonText)) {
            button.setVisibility(8);
            hideView(view);
            hideView(null);
        } else {
            button.setVisibility(0);
        }
        if (TextUtils.isEmpty(this.cacelButtonText)) {
            button2.setVisibility(8);
            hideView(view);
            hideView(null);
        } else {
            button2.setVisibility(0);
        }
        if (!this.showProtocol && linearLayout != null) {
            linearLayout.setVisibility(4);
        }
        if (!this.showCloseButton) {
            hideView(imageButton);
        }
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        double d2 = this.context.getResources().getDisplayMetrics().widthPixels;
        Double.isNaN(d2);
        attributes.width = (int) (d2 * 0.9d);
        window.setAttributes(attributes);
        button.setOnClickListener(new View.OnClickListener() { // from class: zoloz.ap.com.toolkit.ui.GenenalDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                GenenalDialog.this._self.dismiss();
                if (GenenalDialog.this.positiveListener != null) {
                    GenenalDialog.this.positiveListener.onClick(GenenalDialog.this._self, -1);
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: zoloz.ap.com.toolkit.ui.GenenalDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                GenenalDialog.this._self.dismiss();
                if (GenenalDialog.this.negativeListener != null) {
                    GenenalDialog.this.negativeListener.onClick(GenenalDialog.this._self, -2);
                }
            }
        });
        if (imageButton != null) {
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: zoloz.ap.com.toolkit.ui.GenenalDialog.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    GenenalDialog.this._self.dismiss();
                    if (GenenalDialog.this.negativeListener != null) {
                        GenenalDialog.this.negativeListener.onClick(GenenalDialog.this._self, -2);
                    }
                }
            });
        }
    }

    private void startTimerTask() {
        if (this.mTimerTask != null) {
            stopTimerTask();
        }
        if (StressTestUtil.isStressTest()) {
            this.mTimerTask = new DetectTimerTask(3000);
        } else {
            this.mTimerTask = new DetectTimerTask(c.INFO_INT);
        }
        this.mTimerTask.setTimerTaskListener(new DetectTimerTask.TimerListener() { // from class: zoloz.ap.com.toolkit.ui.GenenalDialog.5
            @Override // com.alipay.mobile.security.faceauth.model.DetectTimerTask.TimerListener
            public void countdown(final int i2) {
                GenenalDialog.this.mHandler.post(new Runnable() { // from class: zoloz.ap.com.toolkit.ui.GenenalDialog.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (GenenalDialog.this.mTimerTask == null || !GenenalDialog.this.mTimerTask.isTimeOut()) {
                            if (GenenalDialog.this.mCountTv != null) {
                                GenenalDialog.this.mCountTv.setText((i2 / 1000) + "S");
                                return;
                            }
                            return;
                        }
                        if (GenenalDialog.this.mCallback != null) {
                            GenenalDialog.this.mCallback.onTimeOut();
                        }
                    }
                });
            }
        });
        this.mTimerTask.start();
    }

    private void stopTimerTask() {
        DetectTimerTask detectTimerTask = this.mTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.setTimerTaskListener(null);
            this.mTimerTask.stop();
            this.mTimerTask = null;
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initViews();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopTimerTask();
    }

    public void setCallback(DialogCallback dialogCallback) {
        this.mCallback = dialogCallback;
    }

    public void setTag(Object obj) {
        this.tag = obj;
    }
}
