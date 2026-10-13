package io.flutter.plugins.firebase.crashlytics;

import androidx.annotation.Keep;
import java.util.Collections;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public class FlutterFirebaseAppRegistrar implements com.google.firebase.components.i {
    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.d<?>> getComponents() {
        return Collections.singletonList(com.google.firebase.r.h.a("flutter-fire-cls", "0.4.0-1"));
    }
}
