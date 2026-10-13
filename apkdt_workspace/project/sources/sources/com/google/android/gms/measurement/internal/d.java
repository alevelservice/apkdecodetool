package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class d extends e5 {

    /* renamed from: c, reason: collision with root package name */
    private long f12814c;

    /* renamed from: d, reason: collision with root package name */
    private String f12815d;

    /* renamed from: e, reason: collision with root package name */
    private Boolean f12816e;

    /* renamed from: f, reason: collision with root package name */
    private AccountManager f12817f;

    /* renamed from: g, reason: collision with root package name */
    private Boolean f12818g;

    /* renamed from: h, reason: collision with root package name */
    private long f12819h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(j4 j4Var) {
        super(j4Var);
    }

    public final boolean a(Context context) {
        if (this.f12816e == null) {
            zzae();
            this.f12816e = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f12816e = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return this.f12816e.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean o() {
        Calendar calendar = Calendar.getInstance();
        this.f12814c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f12815d = sb.toString();
        return false;
    }

    public final long q() {
        m();
        return this.f12814c;
    }

    public final String r() {
        m();
        return this.f12815d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long s() {
        g();
        return this.f12819h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void t() {
        g();
        this.f12818g = null;
        this.f12819h = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean u() {
        Account[] result;
        g();
        long a2 = a().a();
        if (a2 - this.f12819h > 86400000) {
            this.f12818g = null;
        }
        Boolean bool = this.f12818g;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (androidx.core.content.a.a(getContext(), "android.permission.GET_ACCOUNTS") != 0) {
            zzab().u().a("Permission error checking for dasher/unicorn accounts");
            this.f12819h = a2;
            this.f12818g = false;
            return false;
        }
        if (this.f12817f == null) {
            this.f12817f = AccountManager.get(getContext());
        }
        try {
            result = this.f12817f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e2) {
            zzab().r().a("Exception checking account types", e2);
        }
        if (result != null && result.length > 0) {
            this.f12818g = true;
            this.f12819h = a2;
            return true;
        }
        Account[] result2 = this.f12817f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
        if (result2 != null && result2.length > 0) {
            this.f12818g = true;
            this.f12819h = a2;
            return true;
        }
        this.f12819h = a2;
        this.f12818g = false;
        return false;
    }
}
