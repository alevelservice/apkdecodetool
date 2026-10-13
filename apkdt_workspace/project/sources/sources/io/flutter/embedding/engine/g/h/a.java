package io.flutter.embedding.engine.g.h;

import androidx.annotation.NonNull;
import g.a.b;

/* compiled from: GeneratedPluginRegister.java */
/* loaded from: classes2.dex */
public class a {
    public static void a(@NonNull io.flutter.embedding.engine.a aVar) {
        try {
            Class.forName("io.flutter.plugins.GeneratedPluginRegistrant").getDeclaredMethod("registerWith", io.flutter.embedding.engine.a.class).invoke(null, aVar);
        } catch (Exception unused) {
            b.d("GeneratedPluginsRegister", "Tried to automatically register plugins with FlutterEngine (" + aVar + ") but could not find and invoke the GeneratedPluginRegistrant.");
        }
    }
}
