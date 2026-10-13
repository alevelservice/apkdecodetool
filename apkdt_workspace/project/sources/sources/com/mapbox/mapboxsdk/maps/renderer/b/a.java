package com.mapbox.mapboxsdk.maps.renderer.b;

import android.content.Context;
import android.view.TextureView;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: TextureViewMapRenderer.java */
/* loaded from: classes2.dex */
public class a extends MapRenderer {

    /* renamed from: a, reason: collision with root package name */
    private b f16131a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f16132b;

    public a(@NonNull Context context, @NonNull TextureView textureView, String str, boolean z) {
        super(context, str);
        this.f16132b = z;
        this.f16131a = new b(textureView, this);
        this.f16131a.start();
    }

    public boolean a() {
        return this.f16132b;
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onDestroy() {
        this.f16131a.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onDrawFrame(GL10 gl10) {
        super.onDrawFrame(gl10);
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onStart() {
        this.f16131a.c();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onStop() {
        this.f16131a.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        super.onSurfaceChanged(gl10, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        super.onSurfaceCreated(gl10, eGLConfig);
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRenderer
    protected void onSurfaceDestroyed() {
        super.onSurfaceDestroyed();
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRendererScheduler
    public void queueEvent(Runnable runnable) {
        this.f16131a.a(runnable);
    }

    @Override // com.mapbox.mapboxsdk.maps.renderer.MapRendererScheduler
    public void requestRender() {
        this.f16131a.d();
    }
}
