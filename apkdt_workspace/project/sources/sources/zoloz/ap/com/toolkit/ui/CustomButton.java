package zoloz.ap.com.toolkit.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;
import zoloz.ap.com.toolkit.R;

/* loaded from: classes2.dex */
public class CustomButton extends Button {
    private static String fontName;

    public CustomButton(Context context) {
        super(context);
    }

    public static void setFontName(String str) {
        fontName = str;
    }

    public void setTextFont() {
        FontUtils.setFont(this, fontName);
    }

    public CustomButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CustomButton);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.CustomButton_z_button_font, false);
        obtainStyledAttributes.recycle();
        if (z) {
            FontUtils.setFont(this, fontName);
        }
    }

    public CustomButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
