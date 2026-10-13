package e.f.i.c;

import android.app.ActivityManager;
import android.os.Build;

/* compiled from: DefaultBitmapMemoryCacheParamsSupplier.java */
/* loaded from: classes.dex */
public class i implements com.facebook.common.internal.j<q> {

    /* renamed from: a, reason: collision with root package name */
    private final ActivityManager f17564a;

    public i(ActivityManager activityManager) {
        this.f17564a = activityManager;
    }

    private int a() {
        int min = Math.min(this.f17564a.getMemoryClass() * 1048576, Integer.MAX_VALUE);
        if (min < 33554432) {
            return 4194304;
        }
        if (min < 67108864) {
            return 6291456;
        }
        if (Build.VERSION.SDK_INT < 11) {
            return 8388608;
        }
        return min / 4;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.common.internal.j
    public q get() {
        return new q(a(), 256, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
    }
}
