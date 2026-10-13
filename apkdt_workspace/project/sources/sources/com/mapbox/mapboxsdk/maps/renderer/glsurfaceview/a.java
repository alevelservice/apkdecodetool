package com.mapbox.mapboxsdk.maps.renderer.glsurfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.MapboxGLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: GLSurfaceViewMapRenderer.java */
/* loaded from: classes2.dex */
public class a extends MapRenderer implements GLSurfaceView.Renderer {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final MapboxGLSurfaceView f16149a;

    /* compiled from: GLSurfaceViewMapRenderer.java */
    /* renamed from: com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0161a implements MapboxGLSurfaceView.a {
        C0161a() {
        }

        @Override // com.mapbox.mapboxsdk.maps.renderer.glsurfaceview.MapboxGLSurfaceView.a
        public void a() {
            a.this.nativeReset();
        }
    }

    public a(Context context, MapboxGLSurfaceView mapboxGLSurfaceView, String str) {
        super(context, str);
        this.f16149a = mapboxGLSurfaceView;
        mapboxGLSurfaceView.setEGLContextClientVersion(2);
        mapboxGLSurfaceView.setEGLConfigChooser(new com.mapbox.mapboxsdk.maps.renderer.a.a());
        mapboxGLSurfaceView.setRenderer(this);
        mapboxGLSurfaceView.setRenderMode(0);
        mapboxGLSurfaceView.setPreserveEGLContextOnPause(true);
        mapboxGLSurfaceView.setDetachedListener(new C0161a());
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onDrawFrame(GL10 gl10) {
        super.onDrawFrame(gl10);
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onPause() {
        super.onPause();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onResume() {
        super.onResume();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onStart() {
        this.f16149a.onResume();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onStop() {
        this.f16149a.onPause();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        super.onSurfaceChanged(gl10, i2, i3);
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        super.onSurfaceCreated(gl10, eGLConfig);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onSurfaceDestroyed() {
        super.onSurfaceDestroyed();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRendererScheduler
    public void queueEvent(Runnable runnable) {
        this.f16149a.queueEvent(runnable);
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRendererScheduler
    public void requestRender() {
        this.f16149a.requestRender();
    }
}
