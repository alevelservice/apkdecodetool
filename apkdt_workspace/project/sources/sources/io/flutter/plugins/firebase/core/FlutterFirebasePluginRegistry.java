package io.flutter.plugins.firebase.core;

import androidx.annotation.Keep;
import e.i.b.b.d.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

@Keep
/* loaded from: classes2.dex */
public class FlutterFirebasePluginRegistry {
    private static final Map<String, FlutterFirebasePlugin> registeredPlugins = new WeakHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Map a(com.google.firebase.c cVar) {
        HashMap hashMap = new HashMap(registeredPlugins.size());
        for (Map.Entry<String, FlutterFirebasePlugin> entry : registeredPlugins.entrySet()) {
            hashMap.put(entry.getKey(), k.a((e.i.b.b.d.h) entry.getValue().getPluginConstantsForFirebaseApp(cVar)));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e.i.b.b.d.h<Void> didReinitializeFirebaseCore() {
        return k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebasePluginRegistry.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e.i.b.b.d.h<Map<String, Object>> getPluginConstantsForFirebaseApp(final com.google.firebase.c cVar) {
        return k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebasePluginRegistry.a(com.google.firebase.c.this);
            }
        });
    }

    public static void registerPlugin(String str, FlutterFirebasePlugin flutterFirebasePlugin) {
        registeredPlugins.put(str, flutterFirebasePlugin);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void a() {
        Iterator<Map.Entry<String, FlutterFirebasePlugin>> it = registeredPlugins.entrySet().iterator();
        while (it.hasNext()) {
            k.a((e.i.b.b.d.h) it.next().getValue().didReinitializeFirebaseCore());
        }
        return null;
    }
}
