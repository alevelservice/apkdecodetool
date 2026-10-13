package io.flutter.plugins.firebase.messaging;

/* compiled from: PluginRegistrantException.java */
/* loaded from: classes2.dex */
class t extends RuntimeException {
    public t() {
        super("PluginRegistrantCallback is not set. Did you forget to call FlutterFirebaseMessagingBackgroundService.setPluginRegistrant? See the documentation for instructions.");
    }
}
