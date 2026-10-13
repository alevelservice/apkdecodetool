package io.flutter.embedding.engine.g.c;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;

/* compiled from: ActivityControlSurface.java */
/* loaded from: classes2.dex */
public interface b {
    void a();

    void a(@NonNull Activity activity, @NonNull e eVar);

    void a(@Nullable Bundle bundle);

    void b();

    boolean onActivityResult(int i2, int i3, @Nullable Intent intent);

    void onNewIntent(@NonNull Intent intent);

    boolean onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr);

    void onSaveInstanceState(@NonNull Bundle bundle);

    void onUserLeaveHint();
}
