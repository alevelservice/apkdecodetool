package io.flutter.view;

import android.view.Choreographer;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.FlutterJNI;

/* compiled from: VsyncWaiter.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: c, reason: collision with root package name */
    private static h f19614c;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final WindowManager f19615a;

    /* renamed from: b, reason: collision with root package name */
    private final FlutterJNI.b f19616b = new a();

    /* compiled from: VsyncWaiter.java */
    /* loaded from: classes2.dex */
    class a implements FlutterJNI.b {

        /* compiled from: VsyncWaiter.java */
        /* renamed from: io.flutter.view.h$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class ChoreographerFrameCallbackC0249a implements Choreographer.FrameCallback {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ long f19618e;

            ChoreographerFrameCallbackC0249a(long j2) {
                this.f19618e = j2;
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j2) {
                double refreshRate = h.this.f19615a.getDefaultDisplay().getRefreshRate();
                Double.isNaN(refreshRate);
                FlutterJNI.nativeOnVsync(j2, j2 + ((long) (1.0E9d / refreshRate)), this.f19618e);
            }
        }

        a() {
        }

        @Override // io.flutter.embedding.engine.FlutterJNI.b
        public void a(long j2) {
            Choreographer.getInstance().postFrameCallback(new ChoreographerFrameCallbackC0249a(j2));
        }
    }

    private h(@NonNull WindowManager windowManager) {
        this.f19615a = windowManager;
    }

    @NonNull
    public static h a(@NonNull WindowManager windowManager) {
        if (f19614c == null) {
            f19614c = new h(windowManager);
        }
        return f19614c;
    }

    public void a() {
        FlutterJNI.setAsyncWaitForVsyncDelegate(this.f19616b);
        FlutterJNI.setRefreshRateFPS(this.f19615a.getDefaultDisplay().getRefreshRate());
    }
}
