package com.mapbox.mapboxsdk;

/* compiled from: MapStrictModeException.java */
/* loaded from: classes2.dex */
class e extends RuntimeException {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str) {
        super(String.format("Map detected an error that would fail silently otherwise: %s", str));
    }
}
