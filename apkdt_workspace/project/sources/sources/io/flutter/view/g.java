package io.flutter.view;

import android.graphics.SurfaceTexture;

/* compiled from: TextureRegistry.java */
/* loaded from: classes2.dex */
public interface g {

    /* compiled from: TextureRegistry.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        SurfaceTexture b();

        long id();
    }

    a createSurfaceTexture();
}
