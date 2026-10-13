package com.mapbox.mapboxsdk.location;

/* compiled from: LocationComponentNotInitializedException.java */
/* loaded from: classes2.dex */
final class m extends RuntimeException {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m() {
        super("The LocationComponent has to be activated with one of the LocationComponent#activateLocationComponent overloads before any other methods are invoked.");
    }
}
