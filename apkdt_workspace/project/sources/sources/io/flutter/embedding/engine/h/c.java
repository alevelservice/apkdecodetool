package io.flutter.embedding.engine.h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: RenderSurface.java */
/* loaded from: classes2.dex */
public interface c {
    void attachToRenderer(@NonNull a aVar);

    void detachFromRenderer();

    @Nullable
    a getAttachedRenderer();

    void pause();
}
