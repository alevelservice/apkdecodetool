package io.flutter.plugin.platform;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;

/* compiled from: PlatformView.java */
/* loaded from: classes2.dex */
public interface f {
    @SuppressLint({"NewApi"})
    void a(@NonNull View view);

    @SuppressLint({"NewApi"})
    void b();

    @SuppressLint({"NewApi"})
    void c();

    @SuppressLint({"NewApi"})
    void d();

    void dispose();

    View getView();
}
