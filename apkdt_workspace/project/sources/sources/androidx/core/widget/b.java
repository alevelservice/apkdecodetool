package androidx.core.widget;

import android.os.Build;
import androidx.annotation.RestrictTo;

/* compiled from: AutoSizeableTextView.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public interface b {

    /* renamed from: a, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static final boolean f2035a;

    static {
        f2035a = Build.VERSION.SDK_INT >= 27;
    }
}
