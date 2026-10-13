package zoloz.ap.com.toolkit.ui;

import android.text.TextUtils;
import android.widget.TextView;
import androidx.core.content.res.e;

/* loaded from: classes2.dex */
public class FontUtils {
    public static boolean setFont(TextView textView, String str) {
        int identifier;
        if (TextUtils.isEmpty(str) || (identifier = textView.getResources().getIdentifier(str, "font", textView.getContext().getPackageName())) == 0) {
            return false;
        }
        textView.setTypeface(e.a(textView.getContext(), identifier), 0);
        return true;
    }
}
