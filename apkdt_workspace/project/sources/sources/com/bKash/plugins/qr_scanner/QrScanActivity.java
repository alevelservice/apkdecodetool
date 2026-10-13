package com.intercept.plugins.qr_scanner;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.vision.a;
import com.google.android.gms.vision.b;
import com.google.android.gms.vision.barcode.Barcode;
import com.google.android.gms.vision.barcode.a;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class QrScanActivity extends AppCompatActivity {
    public static String EXTRA_DESCRIPTION = "extra_description";
    public static String EXTRA_ERROR_ACTION_TEXT = "extra_error_action_text";
    public static String EXTRA_ERROR_DESCRIPTION = "extra_error_description";
    public static String EXTRA_ERROR_TITLE = "extra_error_title";
    public static String EXTRA_FOCUS_INTERVAL = "extra_focus_interval";
    public static String EXTRA_FORCE_FOCUS = "extra_force_focus";
    public static String EXTRA_RESULT = "extra_result";
    public static String EXTRA_THEME_COLOR = "extra_theme_color";
    public static String EXTRA_TITLE = "extra_title";
    public static String EXTRA_TORCH_ENABLED = "extra_torch_enabled";
    public static String EXTRA_VALID_QR_PATTERN = "extra_valid_qr_pattern";
    public static String EXTRA_WHITELISTED_URL = "extra_whitelisted_url";

    /* renamed from: g, reason: collision with root package name */
    private boolean f3396g = false;

    /* renamed from: h, reason: collision with root package name */
    private SurfaceView f3397h;

    /* renamed from: i, reason: collision with root package name */
    private String f3398i;

    /* renamed from: j, reason: collision with root package name */
    private String f3399j;

    /* renamed from: k, reason: collision with root package name */
    private String f3400k;

    /* renamed from: l, reason: collision with root package name */
    private String f3401l;
    private List<String> m;
    private com.google.android.gms.vision.barcode.a n;
    private com.google.android.gms.vision.a o;
    private Context p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements SurfaceHolder.Callback {
        a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            QrScanActivity.this.c();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            QrScanActivity.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements b.InterfaceC0097b<Barcode> {
        b() {
        }

        @Override // com.google.android.gms.vision.b.InterfaceC0097b
        public void a() {
        }

        @Override // com.google.android.gms.vision.b.InterfaceC0097b
        public void a(b.a<Barcode> aVar) {
            SparseArray<Barcode> a2 = aVar.a();
            if (a2.size() != 0) {
                String str = a2.valueAt(0).f13481g;
                boolean contains = QrScanActivity.this.m.contains(str);
                if (contains || str.matches(QrScanActivity.this.f3401l) || QrScanActivity.this.f3396g) {
                    if (contains || str.matches(QrScanActivity.this.f3401l)) {
                        String str2 = "VALID QR CODE" + str;
                        Intent intent = new Intent();
                        HashMap hashMap = new HashMap();
                        hashMap.put(HummerConstants.URL, str);
                        hashMap.put("shouldOpenInBrowser", Boolean.valueOf(contains));
                        intent.putExtra(QrScanActivity.EXTRA_RESULT, hashMap);
                        QrScanActivity.this.setResult(-1, intent);
                        QrScanActivity.this.finish();
                        return;
                    }
                    return;
                }
                QrScanActivity.this.f3396g = true;
                QrScanActivity.this.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* loaded from: classes.dex */
        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                QrScanActivity.this.f3396g = false;
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(QrScanActivity.this.p);
            builder.setTitle(QrScanActivity.this.f3398i);
            builder.setMessage(QrScanActivity.this.f3399j);
            builder.setPositiveButton(QrScanActivity.this.f3400k, new a());
            AlertDialog create = builder.create();
            create.setCancelable(false);
            create.show();
        }
    }

    private void a() {
        this.f3397h.getHolder().addCallback(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        new Handler(Looper.getMainLooper()).post(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            if (androidx.core.content.a.a(getBaseContext(), "android.permission.CAMERA") == 0) {
                this.o.a(this.f3397h.getHolder());
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void d() {
        this.n.a(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.o.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(d.activity_qr_read);
        Intent intent = getIntent();
        Toolbar toolbar = (Toolbar) findViewById(com.intercept.plugins.qr_scanner.c.center_title_toolbar);
        ((TextView) findViewById(com.intercept.plugins.qr_scanner.c.toolbar_title)).setText(intent.getStringExtra(EXTRA_TITLE));
        ((TextView) findViewById(com.intercept.plugins.qr_scanner.c.label_footer)).setText(intent.getStringExtra(EXTRA_DESCRIPTION));
        this.f3398i = intent.getStringExtra(EXTRA_ERROR_TITLE);
        this.f3399j = intent.getStringExtra(EXTRA_ERROR_DESCRIPTION);
        this.f3400k = intent.getStringExtra(EXTRA_ERROR_ACTION_TEXT);
        this.f3401l = intent.getStringExtra(EXTRA_VALID_QR_PATTERN);
        this.m = intent.getStringArrayListExtra(EXTRA_WHITELISTED_URL);
        this.p = this;
        if (toolbar != null) {
            setSupportActionBar(toolbar);
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.f(false);
            supportActionBar.d(true);
            supportActionBar.e(true);
        }
        this.f3397h = (SurfaceView) findViewById(com.intercept.plugins.qr_scanner.c.qr_reader);
        this.f3397h.setZOrderMediaOverlay(true);
        a.C0098a c0098a = new a.C0098a(this.p);
        c0098a.a(256);
        this.n = c0098a.a();
        a.C0096a c0096a = new a.C0096a(getBaseContext(), this.n);
        c0096a.a(0);
        c0096a.a(24.0f);
        c0096a.a(true);
        c0096a.a(1024, 768);
        this.o = c0096a.a();
        a();
        d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        e();
        setResult(0);
        finish();
        return true;
    }
}
