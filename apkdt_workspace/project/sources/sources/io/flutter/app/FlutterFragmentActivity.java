package io.flutter.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import g.a.c.a.m;
import io.flutter.app.a;
import io.flutter.view.FlutterView;
import io.flutter.view.e;

/* loaded from: classes2.dex */
public class FlutterFragmentActivity extends FragmentActivity implements FlutterView.e, m, a.b {

    /* renamed from: e, reason: collision with root package name */
    private final a f18863e = new a(this, this);

    /* renamed from: f, reason: collision with root package name */
    private final b f18864f;

    /* renamed from: g, reason: collision with root package name */
    private final FlutterView.e f18865g;

    /* renamed from: h, reason: collision with root package name */
    private final m f18866h;

    public FlutterFragmentActivity() {
        a aVar = this.f18863e;
        this.f18864f = aVar;
        this.f18865g = aVar;
        this.f18866h = aVar;
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
        return this.f18865g.getFlutterView();
    }

    @Override // g.a.c.a.m
    public final boolean hasPlugin(String str) {
        return this.f18866h.hasPlugin(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (this.f18864f.onActivityResult(i2, i3, intent)) {
            return;
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f18864f.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f18864f.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f18864f.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f18864f.onDestroy();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f18864f.onLowMemory();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f18864f.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f18864f.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f18864f.onPostResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.a.b
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        this.f18864f.onRequestPermissionsResult(i2, strArr, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f18864f.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        this.f18864f.onStop();
        super.onStop();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        this.f18864f.onTrimMemory(i2);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        this.f18864f.onUserLeaveHint();
    }

    @Override // g.a.c.a.m
    public final m.d registrarFor(String str) {
        return this.f18866h.registrarFor(str);
    }

    @Override // io.flutter.app.a.b
    public boolean retainFlutterNativeView() {
        return false;
    }

    @Override // g.a.c.a.m
    public final <T> T valuePublishedByPlugin(String str) {
        return (T) this.f18866h.valuePublishedByPlugin(str);
    }
}
