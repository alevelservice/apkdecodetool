package com.mapbox.mapboxsdk.net;

import androidx.annotation.Keep;
import com.mapbox.mapboxsdk.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NativeConnectivityListener implements a {

    @Keep
    private boolean invalidated;

    @Keep
    private long nativePtr;

    static {
        b.a();
    }

    @Keep
    NativeConnectivityListener(long j2) {
        this.nativePtr = j2;
    }

    @Override // com.mapbox.mapboxsdk.net.a
    public void a(boolean z) {
        nativeOnConnectivityStateChanged(z);
    }

    @Keep
    protected native void finalize();

    @Keep
    protected native void initialize();

    @Keep
    protected native void nativeOnConnectivityStateChanged(boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeConnectivityListener() {
        initialize();
    }
}
