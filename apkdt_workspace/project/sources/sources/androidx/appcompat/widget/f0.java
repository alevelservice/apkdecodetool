package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: TooltipCompat.java */
/* loaded from: classes.dex */
public class f0 {
    public static void a(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            g0.a(view, charSequence);
        }
    }
}
