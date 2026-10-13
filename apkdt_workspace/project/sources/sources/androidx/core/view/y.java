package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* compiled from: ViewGroupCompat.java */
/* loaded from: classes.dex */
public final class y {
    public static boolean a(@NonNull ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(a.i.d.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && ViewCompat.u(viewGroup) == null) ? false : true;
    }
}
