package com.jaumard.smsautofill;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.HintRequest;
import e.i.b.b.d.h;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: SmsAutoFillPlugin.java */
/* loaded from: classes2.dex */
public class d implements k.c, e, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a, m.a {

    /* renamed from: e, reason: collision with root package name */
    private Activity f15498e;

    /* renamed from: f, reason: collision with root package name */
    private k.d f15499f;

    /* renamed from: g, reason: collision with root package name */
    private k f15500g;

    /* renamed from: h, reason: collision with root package name */
    private SmsConsentBroadcastReceiver f15501h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f15502i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f15503j = false;

    private void a(Context context, g.a.c.a.c cVar) {
        this.f15500g = new k(cVar, "sms_autofill");
        this.f15500g.a(this);
    }

    private void b(String str) {
        this.f15500g.a("smscode", str);
    }

    private void c() {
        HintRequest.a aVar = new HintRequest.a();
        aVar.a(true);
        try {
            this.f15498e.startIntentSenderForResult(com.google.android.gms.auth.api.credentials.b.a(this.f15498e).a(aVar.a()).getIntentSender(), 11012, null, 0, 0, 0);
        } catch (IntentSender.SendIntentException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.jaumard.smsautofill.e
    public void a() {
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 11012) {
            if (i3 == -1) {
                this.f15499f.a(((Credential) intent.getParcelableExtra("com.google.android.gms.credentials.Credential")).m());
            } else {
                this.f15499f.a(null);
            }
            return true;
        }
        if (i2 != 244 || !this.f15503j) {
            return false;
        }
        if (i3 == -1 && intent != null) {
            String a2 = a(intent.getStringExtra("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"));
            b(a2);
            this.f15499f.a(a2);
        } else {
            this.f15500g.a("autoFillDenied", true);
            this.f15499f.a(null);
        }
        this.f15503j = false;
        return true;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f15498e = cVar.getActivity();
        cVar.a(this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.f15498e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = this.f15500g;
        if (kVar != null) {
            kVar.a((k.c) null);
            this.f15500g = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, @NonNull k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1213403505:
                if (str.equals("listenForCode")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1037975280:
                if (str.equals("unregisterListener")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 115451405:
                if (str.equals("getAppSignature")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1385449135:
                if (str.equals("getPlatformVersion")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1920911174:
                if (str.equals("requestPhoneHint")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0 || c2 == 1) {
            this.f15499f = dVar;
            c();
            return;
        }
        if (c2 == 2) {
            this.f15503j = true;
            this.f15499f = dVar;
            c((String) jVar.a("serviceNumber"));
        } else {
            if (c2 != 3) {
                if (c2 != 4) {
                    dVar.a();
                    return;
                } else {
                    dVar.a(new c(this.f15498e).a());
                    return;
                }
            }
            if (this.f15502i) {
                this.f15498e.unregisterReceiver(this.f15501h);
                this.f15502i = false;
                dVar.a("successfully unregister receiver");
            }
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    private void b() {
        this.f15501h = new SmsConsentBroadcastReceiver(this);
        this.f15498e.registerReceiver(this.f15501h, new IntentFilter("com.google.android.gms.auth.api.phone.SMS_RETRIEVED"));
        this.f15502i = true;
    }

    private String a(String str) {
        Matcher matcher = Pattern.compile("\\d{6}").matcher(str);
        return matcher.find() ? matcher.group(0) : "";
    }

    private void c(String str) {
        h<Void> a2 = com.google.android.gms.auth.api.phone.a.a(this.f15498e).a(str);
        a2.a(new e.i.b.b.d.e() { // from class: com.jaumard.smsautofill.b
            @Override // e.i.b.b.d.e
            public final void a(Object obj) {
                d.this.a((Void) obj);
            }
        });
        a2.a(new e.i.b.b.d.d() { // from class: com.jaumard.smsautofill.a
            @Override // e.i.b.b.d.d
            public final void a(Exception exc) {
                d.this.a(exc);
            }
        });
    }

    public /* synthetic */ void a(Void r1) {
        b();
    }

    public /* synthetic */ void a(Exception exc) {
        this.f15499f.a("ERROR_START_SMS_RETRIEVER", "Can't start sms retriever", null);
    }

    @Override // com.jaumard.smsautofill.e
    public void a(@Nullable Intent intent) {
        if (intent != null) {
            this.f15498e.startActivityForResult(intent, 244);
        }
    }
}
