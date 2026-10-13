package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.zoloz.android.phone.zdoc.R;
import zoloz.ap.com.toolkit.ui.CustomTextView;

/* loaded from: classes2.dex */
public class MessageView extends IMessageView {
    public static final int SHOW_POWER_BY_ZOLOZ = 1;
    private View mBottomLayout;
    private CustomTextView mBrandTextView;
    protected CustomTextView mCaptureTips;
    private View mConfirmPhoto;
    private CustomTextView mConfirmTextView;
    private CustomTextView mMainTextView;
    private ImageView mPressImageView;
    private View mRetakePhoto;
    private int mShowByZoloz;
    private boolean mShowPress;
    protected CustomTextView mTipsTextView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.zoloz.android.phone.zdoc.ui.MessageView$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public /* synthetic */ class AnonymousClass1 {
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
        }
    }

    public MessageView(Context context) {
        super(context);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void clearClickListener() {
        this.mPressImageView.setOnClickListener(null);
        this.mConfirmPhoto.setOnClickListener(null);
        this.mRetakePhoto.setOnClickListener(null);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    protected void init(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(R.layout.layout_message, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MessageView);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.MessageView_z_message_view_custom, false);
        this.mShowPress = obtainStyledAttributes.getBoolean(R.styleable.MessageView_z_showPress, false);
        obtainStyledAttributes.recycle();
        this.mPressImageView = (ImageView) findViewById(R.id.btn_press);
        this.mRetakePhoto = findViewById(R.id.btn_X);
        this.mConfirmPhoto = findViewById(R.id.btn_ok);
        this.mBrandTextView = (CustomTextView) findViewById(R.id.tv_branding);
        this.mMainTextView = (CustomTextView) findViewById(R.id.tv_main_message);
        this.mConfirmTextView = (CustomTextView) findViewById(R.id.tv_confirm_msg);
        this.mCaptureTips = (CustomTextView) findViewById(R.id.zdoc_capture);
        this.mTipsTextView = (CustomTextView) findViewById(R.id.remind_text);
        this.mBottomLayout = findViewById(R.id.message_opt_layout);
        if (z) {
            this.mMainTextView.setTextFont();
            this.mBrandTextView.setTextFont();
        }
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void setOnConfirmListener(View.OnClickListener onClickListener) {
        this.mConfirmPhoto.setOnClickListener(onClickListener);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void setOnReTakePhotoListener(View.OnClickListener onClickListener) {
        this.mRetakePhoto.setOnClickListener(onClickListener);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void setOnTakePhotoListener(View.OnClickListener onClickListener) {
        this.mPressImageView.setOnClickListener(onClickListener);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void setUiLocation(int i2, int i3, int i4, int i5) {
        updateFooterLayout(i2, i3, i4, i5);
        updateTipsView(i2, i3, i4, i5);
    }

    protected void updateFooterLayout(int i2, int i3, int i4, int i5) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mBottomLayout.getLayoutParams();
        layoutParams.height = i5;
        this.mBottomLayout.setLayoutParams(layoutParams);
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void updateMessage(int i2) {
        updateUI(UIState.CAPTURE, this.mShowByZoloz, i2);
    }

    protected void updateTipsView(int i2, int i3, int i4, int i5) {
        ((RelativeLayout.LayoutParams) this.mTipsTextView.getLayoutParams()).bottomMargin = i4;
        this.mTipsTextView.setText(UIFacade.getMainMessage(getContext(), i2));
    }

    @Override // com.zoloz.android.phone.zdoc.ui.IMessageView
    public void updateUI(UIState uIState, int i2, int i3) {
        this.mShowByZoloz = i2;
        if (i2 == 1) {
            this.mBrandTextView.setVisibility(0);
        } else {
            this.mBrandTextView.setVisibility(8);
        }
        int i4 = AnonymousClass1.$SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState[uIState.ordinal()];
        if (i4 == 1) {
            if (this.mShowPress) {
                this.mPressImageView.setVisibility(0);
            }
            this.mMainTextView.setVisibility(8);
            this.mRetakePhoto.setVisibility(8);
            this.mConfirmPhoto.setVisibility(8);
            this.mConfirmTextView.setVisibility(8);
            this.mTipsTextView.setVisibility(0);
            this.mCaptureTips.setVisibility(0);
            return;
        }
        if (i4 == 2) {
            this.mMainTextView.setVisibility(8);
            this.mPressImageView.setVisibility(8);
            this.mRetakePhoto.setVisibility(0);
            this.mConfirmPhoto.setVisibility(0);
            this.mConfirmTextView.setVisibility(0);
            this.mTipsTextView.setVisibility(8);
            this.mCaptureTips.setVisibility(8);
            return;
        }
        if (i4 == 3) {
            this.mMainTextView.setText(UIFacade.getUploadingString(getContext()));
            this.mMainTextView.setVisibility(0);
            this.mRetakePhoto.setVisibility(8);
            this.mConfirmPhoto.setVisibility(8);
            this.mPressImageView.setVisibility(8);
            this.mConfirmTextView.setVisibility(8);
            this.mTipsTextView.setVisibility(8);
            this.mCaptureTips.setVisibility(8);
            return;
        }
        if (i4 == 4) {
            this.mMainTextView.setVisibility(0);
            this.mMainTextView.setText(UIFacade.getUploadEndString(getContext()));
            this.mConfirmTextView.setVisibility(8);
            this.mTipsTextView.setVisibility(8);
            this.mCaptureTips.setVisibility(8);
            return;
        }
        if (i4 != 5) {
            return;
        }
        this.mMainTextView.setVisibility(8);
        this.mConfirmTextView.setVisibility(8);
        this.mTipsTextView.setVisibility(8);
        this.mCaptureTips.setVisibility(8);
    }

    public MessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MessageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
