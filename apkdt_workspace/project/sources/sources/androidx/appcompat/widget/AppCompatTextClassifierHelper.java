package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.app.DialogCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
final class AppCompatTextClassifierHelper {
    private TextClassifier mTextClassifier;
    private TextView mTextView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextClassifierHelper(TextView textView) {
        this.mTextView = (TextView) Preconditions.checkNotNull(textView);
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        this.mTextClassifier = textClassifier;
    }

    public TextClassifier getTextClassifier() {
        Object systemService;
        TextClassifier textClassifier;
        TextClassifier textClassifier2;
        TextClassifier textClassifier3 = this.mTextClassifier;
        if (textClassifier3 != null) {
            return textClassifier3;
        }
        systemService = this.mTextView.getContext().getSystemService((Class<Object>) DialogCompat$$ExternalSyntheticApiModelOutline0.m14m());
        TextClassificationManager m = DialogCompat$$ExternalSyntheticApiModelOutline0.m(systemService);
        if (m != null) {
            textClassifier2 = m.getTextClassifier();
            return textClassifier2;
        }
        textClassifier = TextClassifier.NO_OP;
        return textClassifier;
    }
}
