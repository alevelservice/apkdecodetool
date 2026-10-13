package io.flutter.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import g.a.c.a.m;
import io.flutter.app.a;
import io.flutter.view.FlutterView;
import io.flutter.view.e;

/* loaded from: classes2.dex */
public class FlutterActivity extends Activity implements FlutterView.e, m, a.b {

    /* renamed from: e, reason: collision with root package name */
    private final a f18858e = new a(this, this);

    /* renamed from: f, reason: collision with root package name */
    private final b f18859f;

    /* renamed from: g, reason: collision with root package name */
    private final FlutterView.e f18860g;

    /* renamed from: h, reason: collision with root package name */
    private final m f18861h;

    public FlutterActivity() {
        a aVar = this.f18858e;
        this.f18859f = aVar;
        this.f18860g = aVar;
        this.f18861h = aVar;
    }

    @Override // io.flutter.app.a.b
    public e createFlutterNativeView() {
        return null;
    }

    @Override // io.flutter.app.a.b
    public FlutterView createFlutterView(Context context) {
        return null;
    }

    @Override // io.flutter.view.FlutterView.e
    public FlutterView getFlutterView() {
        return this.f18860g.getFlutterView();
    }

    @Override // g.a.c.a.m
    public final boolean hasPlugin(String str) {
        return this.f18861h.hasPlugin(str);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        if (this.f18859f.onActivityResult(i2, i3, intent)) {
            return;
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f18859f.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f18859f.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f18859f.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.f18859f.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f18859f.onLowMemory();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        this.f18859f.onNewIntent(intent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f18859f.onPause();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f18859f.onPostResume();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.f18859f.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f18859f.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f18859f.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.f18859f.onStop();
        super.onStop();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        this.f18859f.onTrimMemory(i2);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        this.f18859f.onUserLeaveHint();
    }

    @Override // g.a.c.a.m
    public final m.d registrarFor(String str) {
        return this.f18861h.registrarFor(str);
    }

    @Override // io.flutter.app.a.b
    public boolean retainFlutterNativeView() {
        return false;
    }

    @Override // g.a.c.a.m
    public final <T> T valuePublishedByPlugin(String str) {
        return (T) this.f18861h.valuePublishedByPlugin(str);
    }
}
