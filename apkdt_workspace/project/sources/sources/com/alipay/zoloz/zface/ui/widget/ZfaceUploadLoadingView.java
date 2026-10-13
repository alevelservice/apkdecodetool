package com.alipay.zoloz.zface.ui.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.faceauth.model.DetectTimerTask;
import com.alipay.zoloz.toyger.R;
import zoloz.ap.com.toolkit.ui.DialogCallback;

/* loaded from: classes.dex */
public class ZfaceUploadLoadingView extends RelativeLayout {
    private static final int COUNT_TIME_OUT = 15;
    private DialogCallback mCallback;
    Context mContext;
    private TextView mCountTv;
    private Handler mHandler;
    private boolean mIsShowProcess;
    private Handler mMainHandler;
    TextView mProcessTextView;
    RelativeLayout mRootView;
    private DetectTimerTask mTimerTask;
    UploadProgressBar mUploadProgressBar;
    ValueAnimator mValueAnimator;
    private int processsAngle;

    public ZfaceUploadLoadingView(Context context) {
        super(context);
        this.processsAngle = 180;
        this.mValueAnimator = null;
        this.mHandler = new Handler();
        this.mContext = context;
        initViews();
    }

    private String getString(String str, String str2) {
        return StringUtil.isNullorEmpty(str) ? str2 : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void intervalAction() {
        this.mMainHandler.postDelayed(new Runnable() { // from class: com.alipay.zoloz.zface.ui.widget.ZfaceUploadLoadingView.2
            @Override // java.lang.Runnable
            public void run() {
                ZfaceUploadLoadingView zfaceUploadLoadingView = ZfaceUploadLoadingView.this;
                if (zfaceUploadLoadingView.mContext != null) {
                    zfaceUploadLoadingView.intervalAction();
                    ZfaceUploadLoadingView.this.mIsShowProcess = false;
                }
            }
        }, 1000L);
        if (this.mIsShowProcess) {
            return;
        }
        this.mIsShowProcess = true;
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mValueAnimator = ValueAnimator.ofInt(0, 30);
        this.mValueAnimator.setDuration(1000L);
        this.mValueAnimator.setInterpolator(new LinearInterpolator());
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.alipay.zoloz.zface.ui.widget.ZfaceUploadLoadingView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int parseInt = Integer.parseInt(ZfaceUploadLoadingView.this.mValueAnimator.getAnimatedValue() + "");
                ZfaceUploadLoadingView zfaceUploadLoadingView = ZfaceUploadLoadingView.this;
                zfaceUploadLoadingView.processsAngle = zfaceUploadLoadingView.processsAngle + 4;
                ZfaceUploadLoadingView zfaceUploadLoadingView2 = ZfaceUploadLoadingView.this;
                zfaceUploadLoadingView2.mUploadProgressBar.setProgressAngle(zfaceUploadLoadingView2.processsAngle);
                if (30 == parseInt) {
                    ZfaceUploadLoadingView.this.mValueAnimator.cancel();
                    ZfaceUploadLoadingView.this.mValueAnimator = null;
                }
            }
        });
        this.mValueAnimator.start();
    }

    private void startTimerTask() {
        if (this.mTimerTask != null) {
            stopTimerTask();
        }
        this.mTimerTask = new DetectTimerTask(15000);
        this.mTimerTask.setTimerTaskListener(new DetectTimerTask.TimerListener() { // from class: com.alipay.zoloz.zface.ui.widget.ZfaceUploadLoadingView.1
            @Override // com.alipay.mobile.security.faceauth.model.DetectTimerTask.TimerListener
            public void countdown(final int i2) {
                ZfaceUploadLoadingView.this.mHandler.post(new Runnable() { // from class: com.alipay.zoloz.zface.ui.widget.ZfaceUploadLoadingView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ZfaceUploadLoadingView.this.mTimerTask == null || !ZfaceUploadLoadingView.this.mTimerTask.isTimeOut()) {
                            if (ZfaceUploadLoadingView.this.mCountTv != null) {
                                int identifier = ZfaceUploadLoadingView.this.mContext.getResources().getIdentifier("second", "string", ZfaceUploadLoadingView.this.mContext.getPackageName());
                                ZfaceUploadLoadingView.this.mCountTv.setText((i2 / 1000) + ZfaceUploadLoadingView.this.mContext.getString(identifier));
                                return;
                            }
                            return;
                        }
                        if (ZfaceUploadLoadingView.this.mCallback != null) {
                            ZfaceUploadLoadingView.this.mCallback.onTimeOut();
                        }
                    }
                });
            }
        });
        this.mTimerTask.start();
    }

    public void initViews() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.zface_upload_loading, (ViewGroup) this, true);
        this.mRootView = (RelativeLayout) inflate.findViewById(R.id.zface_upload_loading_root_view);
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mUploadProgressBar = (UploadProgressBar) inflate.findViewById(R.id.zface_upload_loading_progress);
        this.mProcessTextView = (TextView) inflate.findViewById(R.id.zface_upload_loading_process_text);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startProcess();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopProcess();
        stopTimerTask();
        this.mContext = null;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.mRootView.setBackgroundColor(i2);
    }

    public void setCallback(DialogCallback dialogCallback) {
        this.mCallback = dialogCallback;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public void startProcess() {
        this.mProcessTextView.setText(this.mContext.getApplicationContext().getResources().getString(R.string.zface_processing));
        intervalAction();
    }

    public void stopProcess() {
    }

    public void stopTimerTask() {
        DetectTimerTask detectTimerTask = this.mTimerTask;
        if (detectTimerTask != null) {
            detectTimerTask.setTimerTaskListener(null);
            this.mTimerTask.stop();
            this.mTimerTask = null;
        }
    }

    public ZfaceUploadLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.processsAngle = 180;
        this.mValueAnimator = null;
        this.mHandler = new Handler();
        this.mContext = context;
        initViews();
    }

    public ZfaceUploadLoadingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.processsAngle = 180;
        this.mValueAnimator = null;
        this.mHandler = new Handler();
        this.mContext = context;
        initViews();
    }
}
