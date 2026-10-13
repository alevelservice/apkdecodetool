package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.finsky.externalreferrer.IGetInstallReferrerService;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class InstallReferrerClientImpl extends InstallReferrerClient {

    /* renamed from: a, reason: collision with root package name */
    private int f3358a = 0;

    /* renamed from: b, reason: collision with root package name */
    private final Context f3359b;

    /* renamed from: c, reason: collision with root package name */
    private IGetInstallReferrerService f3360c;

    /* renamed from: d, reason: collision with root package name */
    private ServiceConnection f3361d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* loaded from: classes.dex */
    private final class b implements ServiceConnection {

        /* renamed from: e, reason: collision with root package name */
        private final com.android.installreferrer.api.a f3362e;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e.c.a.a.a.a("InstallReferrerClient", "Install Referrer service connected.");
            InstallReferrerClientImpl.this.f3360c = IGetInstallReferrerService.Stub.asInterface(iBinder);
            InstallReferrerClientImpl.this.f3358a = 2;
            this.f3362e.a(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            e.c.a.a.a.b("InstallReferrerClient", "Install Referrer service disconnected.");
            InstallReferrerClientImpl.this.f3360c = null;
            InstallReferrerClientImpl.this.f3358a = 0;
            this.f3362e.a();
        }

        private b(@NonNull com.android.installreferrer.api.a aVar) {
            if (aVar != null) {
                this.f3362e = aVar;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }
    }

    public InstallReferrerClientImpl(@NonNull Context context) {
        this.f3359b = context.getApplicationContext();
    }

    private boolean d() {
        try {
            return this.f3359b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public com.android.installreferrer.api.b b() {
        if (c()) {
            Bundle bundle = new Bundle();
            bundle.putString("package_name", this.f3359b.getPackageName());
            try {
                return new com.android.installreferrer.api.b(this.f3360c.getInstallReferrer(bundle));
            } catch (RemoteException e2) {
                e.c.a.a.a.b("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f3358a = 0;
                throw e2;
            }
        }
        throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
    }

    public boolean c() {
        return (this.f3358a != 2 || this.f3360c == null || this.f3361d == null) ? false : true;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void a(@NonNull com.android.installreferrer.api.a aVar) {
        ResolveInfo resolveInfo;
        ServiceInfo serviceInfo;
        if (c()) {
            e.c.a.a.a.a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            aVar.a(0);
            return;
        }
        int i2 = this.f3358a;
        if (i2 == 1) {
            e.c.a.a.a.b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            aVar.a(3);
            return;
        }
        if (i2 == 3) {
            e.c.a.a.a.b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            aVar.a(3);
            return;
        }
        e.c.a.a.a.a("InstallReferrerClient", "Starting install referrer service setup.");
        this.f3361d = new b(aVar);
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        List<ResolveInfo> queryIntentServices = this.f3359b.getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = (resolveInfo = queryIntentServices.get(0)).serviceInfo) != null) {
            String str = serviceInfo.packageName;
            String str2 = resolveInfo.serviceInfo.name;
            if ("com.android.vending".equals(str) && str2 != null && d()) {
                if (this.f3359b.bindService(new Intent(intent), this.f3361d, 1)) {
                    e.c.a.a.a.a("InstallReferrerClient", "Service was bonded successfully.");
                    return;
                }
                e.c.a.a.a.b("InstallReferrerClient", "Connection to service is blocked.");
                this.f3358a = 0;
                aVar.a(1);
                return;
            }
            e.c.a.a.a.b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
            this.f3358a = 0;
            aVar.a(2);
            return;
        }
        this.f3358a = 0;
        e.c.a.a.a.a("InstallReferrerClient", "Install Referrer service unavailable on device.");
        aVar.a(2);
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void a() {
        this.f3358a = 3;
        if (this.f3361d != null) {
            e.c.a.a.a.a("InstallReferrerClient", "Unbinding from service.");
            this.f3359b.unbindService(this.f3361d);
            this.f3361d = null;
        }
        this.f3360c = null;
    }
}
