package e.f.c.b;

import android.os.Handler;
import android.os.Looper;
import javax.annotation.Nullable;

/* compiled from: UiThreadImmediateExecutorService.java */
/* loaded from: classes.dex */
public class i extends e {

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private static i f17145f;

    private i() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static i b() {
        if (f17145f == null) {
            f17145f = new i();
        }
        return f17145f;
    }

    @Override // e.f.c.b.e, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }
}
