package io.flutter.embedding.engine.plugins.lifecycle;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.lifecycle.e;

@Keep
/* loaded from: classes2.dex */
public class HiddenLifecycleReference {

    @NonNull
    private final e lifecycle;

    public HiddenLifecycleReference(@NonNull e eVar) {
        this.lifecycle = eVar;
    }

    @NonNull
    public e getLifecycle() {
        return this.lifecycle;
    }
}
