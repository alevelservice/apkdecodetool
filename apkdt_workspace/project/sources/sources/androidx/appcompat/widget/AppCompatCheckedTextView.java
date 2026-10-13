package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;

/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: f, reason: collision with root package name */
    private static final int[] f1118f = {R.attr.checkMark};

    /* renamed from: e, reason: collision with root package name */
    private final l f1119e;

    public AppCompatCheckedTextView(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        l lVar = this.f1119e;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        g.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i2) {
        setCheckMarkDrawable(a.a.k.a.a.c(getContext(), i2));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        l lVar = this.f1119e;
        if (lVar != null) {
            lVar.a(context, i2);
        }
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(a0.b(context), attributeSet, i2);
        y.a(this, getContext());
        this.f1119e = new l(this);
        this.f1119e.a(attributeSet, i2);
        this.f1119e.a();
        d0 a2 = d0.a(getContext(), attributeSet, f1118f, i2, 0);
        setCheckMarkDrawable(a2.b(0));
        a2.b();
    }
}
