package io.flutter.app;

import android.content.ComponentCallbacks2;
import android.content.Intent;
import android.os.Bundle;
import g.a.c.a.m;

/* compiled from: FlutterActivityEvents.java */
/* loaded from: classes2.dex */
public interface b extends ComponentCallbacks2, m.a, m.e {
    boolean onBackPressed();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onNewIntent(Intent intent);

    void onPause();

    void onPostResume();

    void onResume();

    void onStart();

    void onStop();

    void onUserLeaveHint();
}
