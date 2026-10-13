package io.flutter.embedding.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: SplashScreen.java */
/* loaded from: classes2.dex */
public interface i {
    @Nullable
    View a(@NonNull Context context, @Nullable Bundle bundle);

    void a(@NonNull Runnable runnable);

    @SuppressLint({"NewApi"})
    boolean a();

    @Nullable
    @SuppressLint({"NewApi"})
    Bundle b();
}
