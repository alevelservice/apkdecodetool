package androidx.transition;

import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* compiled from: ViewGroupUtils.java */
/* loaded from: classes.dex */
class r {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static q a(@NonNull ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new p(viewGroup);
        }
        return o.a(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            t.a(viewGroup, z);
        } else {
            s.a(viewGroup, z);
        }
    }
}
