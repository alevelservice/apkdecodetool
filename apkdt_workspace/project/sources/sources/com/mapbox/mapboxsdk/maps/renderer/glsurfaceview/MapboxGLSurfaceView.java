package com.mapbox.mapboxsdk.maps.renderer.glsurfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class MapboxGLSurfaceView extends GLSurfaceView {

    /* renamed from: e, reason: collision with root package name */
    private a f16148e;

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    public MapboxGLSurfaceView(Context context) {
        super(context);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        a aVar = this.f16148e;
        if (aVar != null) {
            aVar.a();
        }
        super.onDetachedFromWindow();
    }

    public void setDetachedListener(@NonNull a aVar) {
        if (this.f16148e == null) {
            this.f16148e = aVar;
            return;
        }
        throw new IllegalArgumentException("Detached from window listener has been already set.");
    }

    public MapboxGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
