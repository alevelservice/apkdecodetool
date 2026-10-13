package com.google.android.gms.auth.api.signin.internal;

import a.m.a.a;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@KeepName
/* loaded from: classes.dex */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: j, reason: collision with root package name */
    private static boolean f4858j = false;

    /* renamed from: e, reason: collision with root package name */
    private boolean f4859e = false;

    /* renamed from: f, reason: collision with root package name */
    private SignInConfiguration f4860f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f4861g;

    /* renamed from: h, reason: collision with root package name */
    private int f4862h;

    /* renamed from: i, reason: collision with root package name */
    private Intent f4863i;

    private final void a() {
        getSupportLoaderManager().a(0, null, new a());
        f4858j = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, @Nullable Intent intent) {
        if (this.f4859e) {
            return;
        }
        setResult(0);
        if (i2 != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.j() != null) {
                GoogleSignInAccount j2 = signInAccount.j();
                l a2 = l.a(this);
                GoogleSignInOptions j3 = this.f4860f.j();
                com.google.android.gms.internal.p000authapi.f.a(j2);
                a2.a(j3, j2);
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", j2);
                this.f4861g = true;
                this.f4862h = i3;
                this.f4863i = intent;
                a();
                return;
            }
            if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                if (intExtra == 13) {
                    intExtra = 12501;
                }
                a(intExtra);
                return;
            }
        }
        a(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        com.google.android.gms.internal.p000authapi.f.a(action);
        String str = action;
        if ("com.google.android.gms.auth.NO_IMPL".equals(str)) {
            a(12500);
            return;
        }
        if (!str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !str.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String valueOf = String.valueOf(intent.getAction());
            if (valueOf.length() != 0) {
                "Unknown action: ".concat(valueOf);
            } else {
                new String("Unknown action: ");
            }
            finish();
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra("config");
        com.google.android.gms.internal.p000authapi.f.a(bundleExtra);
        SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
        if (signInConfiguration == null) {
            setResult(0);
            finish();
            return;
        }
        this.f4860f = signInConfiguration;
        if (bundle == null) {
            if (f4858j) {
                setResult(0);
                a(12502);
                return;
            }
            f4858j = true;
            Intent intent2 = new Intent(str);
            if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                intent2.setPackage("com.google.android.gms");
            } else {
                intent2.setPackage(getPackageName());
            }
            intent2.putExtra("config", this.f4860f);
            try {
                startActivityForResult(intent2, 40962);
                return;
            } catch (ActivityNotFoundException unused) {
                this.f4859e = true;
                a(17);
                return;
            }
        }
        this.f4861g = bundle.getBoolean("signingInGoogleApiClients");
        if (this.f4861g) {
            this.f4862h = bundle.getInt("signInResultCode");
            Intent intent3 = (Intent) bundle.getParcelable("signInResultData");
            com.google.android.gms.internal.p000authapi.f.a(intent3);
            this.f4863i = intent3;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f4861g);
        if (this.f4861g) {
            bundle.putInt("signInResultCode", this.f4862h);
            bundle.putParcelable("signInResultData", this.f4863i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    /* loaded from: classes.dex */
    public class a implements a.InterfaceC0013a<Void> {
        private a() {
        }

        @Override // a.m.a.a.InterfaceC0013a
        public final a.m.b.b<Void> a(int i2, Bundle bundle) {
            return new f(SignInHubActivity.this, com.google.android.gms.common.api.f.c());
        }

        @Override // a.m.a.a.InterfaceC0013a
        public final void a(a.m.b.b<Void> bVar) {
        }

        @Override // a.m.a.a.InterfaceC0013a
        public final /* synthetic */ void a(a.m.b.b<Void> bVar, Void r3) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.f4862h, SignInHubActivity.this.f4863i);
            SignInHubActivity.this.finish();
        }
    }

    private final void a(int i2) {
        Status status = new Status(i2);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f4858j = false;
    }
}
