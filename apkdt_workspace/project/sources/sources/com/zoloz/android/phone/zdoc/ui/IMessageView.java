package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: classes2.dex */
public abstract class IMessageView extends RelativeLayout {

    /* loaded from: classes2.dex */
    public interface IMessageViewClickListener {
        void onConfirmListener(View view);

        void onRetakePhotoListener(View view);

        void onTakePhotoListener(View view);
    }

    public IMessageView(Context context) {
        super(context);
        init(context, null);
    }

    public abstract void clearClickListener();

    protected void init(Context context, AttributeSet attributeSet) {
    }

    public abstract void setOnConfirmListener(View.OnClickListener onClickListener);

    public abstract void setOnReTakePhotoListener(View.OnClickListener onClickListener);

    public abstract void setOnTakePhotoListener(View.OnClickListener onClickListener);

    public abstract void setUiLocation(int i2, int i3, int i4, int i5);

    public abstract void updateMessage(int i2);

    public abstract void updateUI(UIState uIState, int i2, int i3);

    public IMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public IMessageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context, attributeSet);
    }
}
