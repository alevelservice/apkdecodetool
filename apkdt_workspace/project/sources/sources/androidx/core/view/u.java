package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
import androidx.annotation.RestrictTo;

/* compiled from: PointerIconCompat.java */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    private Object f1990a;

    private u(Object obj) {
        this.f1990a = obj;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public Object a() {
        return this.f1990a;
    }

    public static u a(Context context, int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new u(PointerIcon.getSystemIcon(context, i2));
        }
        return new u(null);
    }
}
