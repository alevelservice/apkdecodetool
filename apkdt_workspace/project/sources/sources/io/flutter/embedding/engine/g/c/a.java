package io.flutter.embedding.engine.g.c;

import androidx.annotation.NonNull;

/* compiled from: ActivityAware.java */
/* loaded from: classes2.dex */
public interface a {
    void onAttachedToActivity(@NonNull c cVar);

    void onDetachedFromActivity();

    void onDetachedFromActivityForConfigChanges();

    void onReattachedToActivityForConfigChanges(@NonNull c cVar);
}
