package com.mapbox.mapboxsdk.maps.renderer;

import android.content.Context;
import androidx.annotation.CallSuper;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.b;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.n;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

@Keep
/* loaded from: classes2.dex */
public abstract class MapRenderer implements MapRendererScheduler {
    private static final String TAG = "Mbgl-MapRenderer";
    private n.j onFpsChangedListener;
    private long timeElapsed;
    private long nativePtr = 0;
    private double expectedRenderTime = 0.0d;

    static {
        b.a();
    }

    public MapRenderer(@NonNull Context context, String str) {
        nativeInitialize(this, context.getResources().getDisplayMetrics().density, str);
    }

    private native void nativeInitialize(MapRenderer mapRenderer, float f2, String str);

    private native void nativeOnSurfaceChanged(int i2, int i3);

    private native void nativeOnSurfaceCreated();

    private native void nativeOnSurfaceDestroyed();

    private native void nativeRender();

    private void updateFps() {
        long nanoTime = System.nanoTime();
        double d2 = nanoTime - this.timeElapsed;
        Double.isNaN(d2);
        this.onFpsChangedListener.a(1.0E9d / d2);
        this.timeElapsed = nanoTime;
    }

    @CallSuper
    protected native void finalize();

    /* JADX INFO: Access modifiers changed from: protected */
    public native void nativeReset();

    public void onDestroy() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onDrawFrame(GL10 gl10) {
        long nanoTime = System.nanoTime();
        try {
            nativeRender();
        } catch (Error e2) {
            Logger.e(TAG, e2.getMessage());
        }
        double nanoTime2 = System.nanoTime() - nanoTime;
        double d2 = this.expectedRenderTime;
        if (nanoTime2 < d2) {
            Double.isNaN(nanoTime2);
            try {
                Thread.sleep((long) ((d2 - nanoTime2) / 1000000.0d));
            } catch (InterruptedException e3) {
                Logger.e(TAG, e3.getMessage());
            }
        }
        if (this.onFpsChangedListener != null) {
            updateFps();
        }
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onSurfaceChanged(@NonNull GL10 gl10, int i2, int i3) {
        gl10.glViewport(0, 0, i2, i3);
        nativeOnSurfaceChanged(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        nativeOnSurfaceCreated();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onSurfaceDestroyed() {
        nativeOnSurfaceDestroyed();
    }

    @CallSuper
    void queueEvent(MapRendererRunnable mapRendererRunnable) {
        queueEvent((Runnable) mapRendererRunnable);
    }

    public void setMaximumFps(int i2) {
        if (i2 <= 0) {
            return;
        }
        double d2 = i2;
        Double.isNaN(d2);
        this.expectedRenderTime = 1.0E9d / d2;
    }

    public void setOnFpsChangedListener(n.j jVar) {
        this.onFpsChangedListener = jVar;
    }
}
