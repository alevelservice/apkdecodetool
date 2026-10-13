package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class CustomTabsClient {

    /* renamed from: a, reason: collision with root package name */
    private final ICustomTabsService f1479a;

    /* renamed from: b, reason: collision with root package name */
    private final ComponentName f1480b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomTabsClient(ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
        this.f1479a = iCustomTabsService;
        this.f1480b = componentName;
    }

    public static boolean a(@NonNull Context context, @Nullable String str, @NonNull d dVar) {
        dVar.a(context.getApplicationContext());
        Intent intent = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, dVar, 33);
    }

    private ICustomTabsCallback.Stub b(@Nullable final c cVar) {
        return new ICustomTabsCallback.Stub() { // from class: androidx.browser.customtabs.CustomTabsClient.2

            /* renamed from: e, reason: collision with root package name */
            private Handler f1481e = new Handler(Looper.getMainLooper());

            /* renamed from: androidx.browser.customtabs.CustomTabsClient$2$a */
            /* loaded from: classes.dex */
            class a implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ int f1482e;

                /* renamed from: f, reason: collision with root package name */
                final /* synthetic */ Bundle f1483f;

                a(int i2, Bundle bundle) {
                    this.f1482e = i2;
                    this.f1483f = bundle;
                }

                @Override // java.lang.Runnable
                public void run() {
                    cVar.a(this.f1482e, this.f1483f);
                }
            }

            /* renamed from: androidx.browser.customtabs.CustomTabsClient$2$b */
            /* loaded from: classes.dex */
            class b implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ String f1485e;

                /* renamed from: f, reason: collision with root package name */
                final /* synthetic */ Bundle f1486f;

                b(String str, Bundle bundle) {
                    this.f1485e = str;
                    this.f1486f = bundle;
                }

                @Override // java.lang.Runnable
                public void run() {
                    cVar.a(this.f1485e, this.f1486f);
                }
            }

            /* renamed from: androidx.browser.customtabs.CustomTabsClient$2$c */
            /* loaded from: classes.dex */
            class c implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ Bundle f1488e;

                c(Bundle bundle) {
                    this.f1488e = bundle;
                }

                @Override // java.lang.Runnable
                public void run() {
                    cVar.a(this.f1488e);
                }
            }

            /* renamed from: androidx.browser.customtabs.CustomTabsClient$2$d */
            /* loaded from: classes.dex */
            class d implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ String f1490e;

                /* renamed from: f, reason: collision with root package name */
                final /* synthetic */ Bundle f1491f;

                d(String str, Bundle bundle) {
                    this.f1490e = str;
                    this.f1491f = bundle;
                }

                @Override // java.lang.Runnable
                public void run() {
                    cVar.c(this.f1490e, this.f1491f);
                }
            }

            /* renamed from: androidx.browser.customtabs.CustomTabsClient$2$e */
            /* loaded from: classes.dex */
            class e implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ int f1493e;

                /* renamed from: f, reason: collision with root package name */
                final /* synthetic */ Uri f1494f;

                /* renamed from: g, reason: collision with root package name */
                final /* synthetic */ boolean f1495g;

                /* renamed from: h, reason: collision with root package name */
                final /* synthetic */ Bundle f1496h;

                e(int i2, Uri uri, boolean z, Bundle bundle) {
                    this.f1493e = i2;
                    this.f1494f = uri;
                    this.f1495g = z;
                    this.f1496h = bundle;
                }

                @Override // java.lang.Runnable
                public void run() {
                    cVar.a(this.f1493e, this.f1494f, this.f1495g, this.f1496h);
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void extraCallback(String str, Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1481e.post(new b(str, bundle));
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) {
                androidx.browser.customtabs.c cVar2 = cVar;
                if (cVar2 == null) {
                    return null;
                }
                return cVar2.b(str, bundle);
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onMessageChannelReady(Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1481e.post(new c(bundle));
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onNavigationEvent(int i2, Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1481e.post(new a(i2, bundle));
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onPostMessage(String str, Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1481e.post(new d(str, bundle));
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onRelationshipValidationResult(int i2, Uri uri, boolean z, @Nullable Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1481e.post(new e(i2, uri, z, bundle));
            }
        };
    }

    public boolean a(long j2) {
        try {
            return this.f1479a.warmup(j2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Nullable
    public CustomTabsSession a(@Nullable c cVar) {
        return a(cVar, null);
    }

    @Nullable
    private CustomTabsSession a(@Nullable c cVar, @Nullable PendingIntent pendingIntent) {
        boolean newSession;
        ICustomTabsCallback.Stub b2 = b(cVar);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                newSession = this.f1479a.newSessionWithExtras(b2, bundle);
            } else {
                newSession = this.f1479a.newSession(b2);
            }
            if (newSession) {
                return new CustomTabsSession(this.f1479a, b2, this.f1480b, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }
}
