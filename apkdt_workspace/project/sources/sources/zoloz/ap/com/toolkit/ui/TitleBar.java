package zoloz.ap.com.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import zoloz.ap.com.toolkit.R;

/* loaded from: classes2.dex */
public class TitleBar extends RelativeLayout {
    private boolean mIsShowLeft;
    private LinearLayout mLeftLayout;
    private LinearLayout mRightLayout;
    private CustomTextView mTitleTextView;

    public TitleBar(Context context) {
        super(context);
    }

    public void setClickListener(View.OnClickListener onClickListener) {
        if (this.mIsShowLeft) {
            this.mLeftLayout.setOnClickListener(onClickListener);
        } else {
            this.mRightLayout.setOnClickListener(onClickListener);
        }
    }

    public void setText(String str) {
        this.mTitleTextView.setText(str);
    }

    public TitleBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View inflate = RelativeLayout.inflate(context, R.layout.layout_titile_bar, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TitleBar);
        String string = obtainStyledAttributes.getString(R.styleable.TitleBar_z_text);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.TitleBar_z_left_src, -1);
        int color = obtainStyledAttributes.getColor(R.styleable.TitleBar_z_background, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.TitleBar_z_bg, -1);
        int color2 = obtainStyledAttributes.getColor(R.styleable.TitleBar_z_text_color, -1);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.TitleBar_z_separate_visibility, true);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.TitleBar_z_custom, false);
        obtainStyledAttributes.recycle();
        if (resourceId2 != -1) {
            inflate.setBackgroundResource(resourceId2);
        } else {
            inflate.setBackgroundColor(color);
        }
        ((ImageView) findViewById(R.id.iv_left)).setImageDrawable(getResources().getDrawable(resourceId));
        ((ImageView) findViewById(R.id.iv_right)).setImageDrawable(getResources().getDrawable(resourceId));
        this.mLeftLayout = (LinearLayout) findViewById(R.id.btn_left);
        this.mRightLayout = (LinearLayout) findViewById(R.id.btn_right);
        this.mTitleTextView = (CustomTextView) findViewById(R.id.tv_title);
        if (!z) {
            findViewById(R.id.iv_separate).setVisibility(8);
        }
        this.mTitleTextView.setTextColor(color2);
        this.mTitleTextView.setText(string);
        if (z2) {
            this.mTitleTextView.setTextFont();
            this.mTitleTextView.setSize();
        }
        if (getResources().getBoolean(R.bool.title_bar_title_center_horizontal)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mTitleTextView.getLayoutParams();
            layoutParams.addRule(14);
            this.mTitleTextView.setLayoutParams(layoutParams);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mTitleTextView.getLayoutParams();
            layoutParams2.addRule(17, R.id.iv_separate);
            layoutParams2.addRule(1, R.id.iv_separate);
            this.mTitleTextView.setLayoutParams(layoutParams2);
        }
        this.mIsShowLeft = true;
        try {
            this.mIsShowLeft = getResources().getBoolean(R.bool.title_bar_left);
        } catch (Exception unused) {
        }
        if (this.mIsShowLeft) {
            this.mLeftLayout.setVisibility(0);
            this.mRightLayout.setVisibility(8);
        } else {
            this.mLeftLayout.setVisibility(4);
            findViewById(R.id.iv_separate).setVisibility(8);
            this.mRightLayout.setVisibility(0);
        }
    }

    public TitleBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
