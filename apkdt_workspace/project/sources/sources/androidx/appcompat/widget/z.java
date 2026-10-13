package androidx.appcompat.widget;

import android.content.res.Resources;
import android.widget.SpinnerAdapter;
import androidx.annotation.Nullable;

/* compiled from: ThemedSpinnerAdapter.java */
/* loaded from: classes.dex */
public interface z extends SpinnerAdapter {
    @Nullable
    Resources.Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources.Theme theme);
}
