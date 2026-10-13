package zoloz.ap.com.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import zoloz.ap.com.toolkit.R;

/* loaded from: classes2.dex */
public class CustomTextView extends TextView {
    private static String fontName;
    private int mImgResId;

    public CustomTextView(Context context) {
        super(context);
        init(context, null);
    }

    public static void setFontName(String str) {
        fontName = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CustomTextView);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.CustomTextView_z_textview_font, false);
        obtainStyledAttributes.recycle();
        if (z) {
            FontUtils.setFont(this, fontName);
        }
    }

    public void setSize() {
        setTextSize(0, getContext().getResources().getDimension(R.dimen.font_x_large));
    }

    public void setTextFont() {
        FontUtils.setFont(this, fontName);
    }

    public CustomTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public CustomTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context, attributeSet);
    }
}
