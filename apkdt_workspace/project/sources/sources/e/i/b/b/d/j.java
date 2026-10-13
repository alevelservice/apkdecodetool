package e.i.b.b.d;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final Executor f17850a = new a();

    /* renamed from: b, reason: collision with root package name */
    static final Executor f17851b = new b0();

    /* loaded from: classes.dex */
    private static final class a implements Executor {

        /* renamed from: e, reason: collision with root package name */
        private final Handler f17852e = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            this.f17852e.post(runnable);
        }
    }
}
