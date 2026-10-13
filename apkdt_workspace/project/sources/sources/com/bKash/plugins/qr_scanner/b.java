package com.intercept.plugins.qr_scanner;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Process;
import com.google.gson.Gson;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: QrScannerPlugin.java */
/* loaded from: classes.dex */
public class b implements io.flutter.embedding.engine.g.a, k.c, m.a, m.e, io.flutter.embedding.engine.g.c.a {

    /* renamed from: i, reason: collision with root package name */
    private static k f3406i;

    /* renamed from: e, reason: collision with root package name */
    private Activity f3407e;

    /* renamed from: f, reason: collision with root package name */
    private k.d f3408f;

    /* renamed from: g, reason: collision with root package name */
    private a f3409g;

    /* renamed from: h, reason: collision with root package name */
    private io.flutter.embedding.engine.g.c.c f3410h;

    private void a(Context context, g.a.c.a.c cVar) {
        f3406i = new k(cVar, "com.intercept.plugins/qr_scanner");
        f3406i.a(this);
    }

    @TargetApi(23)
    private void b() {
        this.f3407e.requestPermissions(new String[]{"android.permission.CAMERA"}, 3777);
    }

    private void c() {
        this.f3408f.a("permission", "you don't have the user permission to access the camera", null);
        a();
    }

    private void d() {
        Intent intent = new Intent(this.f3407e, (Class<?>) QrScanActivity.class);
        intent.putExtra(QrScanActivity.EXTRA_FOCUS_INTERVAL, this.f3409g.getAutoFocusIntervalInMs());
        intent.putExtra(QrScanActivity.EXTRA_FORCE_FOCUS, this.f3409g.isForceAutoFocus());
        intent.putExtra(QrScanActivity.EXTRA_TORCH_ENABLED, this.f3409g.isTorchEnabled());
        intent.putExtra(QrScanActivity.EXTRA_THEME_COLOR, this.f3409g.getThemeColor());
        intent.putExtra(QrScanActivity.EXTRA_TITLE, this.f3409g.getTitle());
        intent.putExtra(QrScanActivity.EXTRA_DESCRIPTION, this.f3409g.getDescription());
        intent.putExtra(QrScanActivity.EXTRA_ERROR_TITLE, this.f3409g.getAlertTitle());
        intent.putExtra(QrScanActivity.EXTRA_ERROR_DESCRIPTION, this.f3409g.getAlertDescription());
        intent.putExtra(QrScanActivity.EXTRA_ERROR_ACTION_TEXT, this.f3409g.getAlertActionText());
        intent.putExtra(QrScanActivity.EXTRA_VALID_QR_PATTERN, this.f3409g.getQrValidationRegex());
        intent.putStringArrayListExtra(QrScanActivity.EXTRA_WHITELISTED_URL, (ArrayList) this.f3409g.getWhiteListedUrls());
        this.f3407e.startActivityForResult(intent, 2777);
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        if (i2 != 2777) {
            return false;
        }
        if (i3 == -1) {
            HashMap hashMap = (HashMap) intent.getSerializableExtra(QrScanActivity.EXTRA_RESULT);
            k.d dVar = this.f3408f;
            if (dVar != null) {
                dVar.a(hashMap);
            }
        } else {
            k.d dVar2 = this.f3408f;
            if (dVar2 != null) {
                dVar2.a(null);
            }
        }
        a();
        return true;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f3410h = cVar;
        this.f3407e = cVar.getActivity();
        cVar.a((m.a) this);
        cVar.a((m.e) this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        io.flutter.embedding.engine.g.c.c cVar = this.f3410h;
        if (cVar != null) {
            cVar.b((m.a) this);
            this.f3410h.b((m.e) this);
            this.f3410h = null;
        }
        this.f3407e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = f3406i;
        if (kVar != null) {
            kVar.a((k.c) null);
            f3406i = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        String str = jVar.f18223a;
        if (((str.hashCode() == 3417674 && str.equals("open")) ? (char) 0 : (char) 65535) != 0) {
            dVar.a();
            return;
        }
        this.f3408f = dVar;
        this.f3409g = a(jVar.f18224b);
        if (this.f3409g == null) {
            this.f3408f.a("INVALID_OPTIONS", "Plugin not passing a map as parameter: " + jVar.f18224b.toString(), null);
            a();
            return;
        }
        if (a((Context) this.f3407e, "android.permission.CAMERA") != 0) {
            if (a(this.f3407e, "android.permission.CAMERA")) {
                if (this.f3409g.isHandlePermissions()) {
                    b();
                    return;
                } else {
                    c();
                    return;
                }
            }
            if (this.f3409g.isHandlePermissions()) {
                b();
                return;
            } else {
                c();
                return;
            }
        }
        d();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    @Override // g.a.c.a.m.e
    public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 == 3777) {
            for (int i3 = 0; i3 < strArr.length; i3++) {
                String str = strArr[i3];
                int i4 = iArr[i3];
                if (str.equals("android.permission.CAMERA")) {
                    if (i4 == 0) {
                        if (this.f3409g.isExecuteAfterPermissionGranted()) {
                            d();
                        }
                    } else {
                        c();
                    }
                }
            }
        }
        return false;
    }

    private a a(Object obj) {
        if (obj == null || !(obj instanceof Map)) {
            return null;
        }
        Gson gson = new Gson();
        return (a) gson.a(gson.b(obj), a.class);
    }

    private boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    private int a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    private void a() {
        this.f3408f = null;
        this.f3409g = null;
    }
}
