package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* compiled from: AppCompatTextClassifierHelper.java */
/* loaded from: classes.dex */
final class k {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private TextView f1380a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private TextClassifier f1381b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(@NonNull TextView textView) {
        a.i.m.i.a(textView);
        this.f1380a = textView;
    }

    @RequiresApi(api = 26)
    public void a(@Nullable TextClassifier textClassifier) {
        this.f1381b = textClassifier;
    }

    @NonNull
    @RequiresApi(api = 26)
    public TextClassifier a() {
        TextClassifier textClassifier = this.f1381b;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1380a.getContext().getSystemService(TextClassificationManager.class);
        if (textClassificationManager != null) {
            return textClassificationManager.getTextClassifier();
        }
        return TextClassifier.NO_OP;
    }
}
