package com.alipay.biometrics.ui.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.TextView;

/* loaded from: classes.dex */
public class PromptTextView extends TextView {
    int mAnimationInterval;
    int mProcessColor;
    int mStepIndex;
    ValueAnimator mValueAnimator;

    public PromptTextView(Context context) {
        super(context);
        this.mProcessColor = Color.parseColor("#108ee9");
        this.mAnimationInterval = 1000;
    }

    public void cancelAnimation() {
        this.mValueAnimator.cancel();
    }

    public void resetAnimation() {
        this.mStepIndex = 0;
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        setTextSpan(0);
    }

    public void setAnimationInterval(int i2) {
        this.mAnimationInterval = i2;
    }

    public void setProcessColor(int i2) {
        this.mProcessColor = i2;
    }

    public void setTextSpan(int i2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getText().toString());
        spannableStringBuilder.setSpan(new ForegroundColorSpan(this.mProcessColor), 0, i2, 33);
        setText(spannableStringBuilder);
    }

    public void startAnimation(int i2) {
        int length = getText().length();
        if (i2 > length) {
            i2 = length;
        }
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mValueAnimator = ValueAnimator.ofInt(this.mStepIndex, i2);
        this.mValueAnimator.setDuration(this.mAnimationInterval);
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.alipay.biometrics.ui.widget.PromptTextView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ((Integer) valueAnimator2.getAnimatedValue()).toString();
                if (PromptTextView.this.mStepIndex != ((Integer) valueAnimator2.getAnimatedValue()).intValue()) {
                    PromptTextView.this.setTextSpan(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
                PromptTextView.this.mStepIndex = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
            }
        });
        this.mValueAnimator.setInterpolator(new LinearInterpolator());
        this.mValueAnimator.start();
    }

    public PromptTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProcessColor = Color.parseColor("#108ee9");
        this.mAnimationInterval = 1000;
    }

    public PromptTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mProcessColor = Color.parseColor("#108ee9");
        this.mAnimationInterval = 1000;
    }
}
