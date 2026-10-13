package io.flutter.plugins.firebase.messaging;

import androidx.annotation.Keep;
import java.util.Collections;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public class FlutterFirebaseAppRegistrar implements com.google.firebase.components.i {
    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.d<?>> getComponents() {
        return Collections.singletonList(com.google.firebase.r.h.a("flutter-fire-fcm", "8.0.0-dev.14"));
    }
}
