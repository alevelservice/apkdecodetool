package io.flutter.embedding.engine.g.c;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import g.a.c.a.m;

/* compiled from: ActivityPluginBinding.java */
/* loaded from: classes2.dex */
public interface c {

    /* compiled from: ActivityPluginBinding.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(@Nullable Bundle bundle);

        void onSaveInstanceState(@NonNull Bundle bundle);
    }

    void a(@NonNull m.a aVar);

    void a(@NonNull m.b bVar);

    void a(@NonNull m.e eVar);

    void a(@NonNull m.f fVar);

    void b(@NonNull m.a aVar);

    void b(@NonNull m.e eVar);

    @NonNull
    Activity getActivity();
}
