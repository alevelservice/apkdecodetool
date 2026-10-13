package io.flutter.plugins.firebase.core;

import androidx.annotation.Keep;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Keep
/* loaded from: classes2.dex */
public interface FlutterFirebasePlugin {
    public static final ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    e.i.b.b.d.h<Void> didReinitializeFirebaseCore();

    e.i.b.b.d.h<Map<String, Object>> getPluginConstantsForFirebaseApp(com.google.firebase.c cVar);
}
