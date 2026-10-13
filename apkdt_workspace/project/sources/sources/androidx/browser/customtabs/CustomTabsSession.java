package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes.dex */
public final class CustomTabsSession {

    /* renamed from: a, reason: collision with root package name */
    private final ICustomTabsService f1507a;

    /* renamed from: b, reason: collision with root package name */
    private final ICustomTabsCallback f1508b;

    /* renamed from: c, reason: collision with root package name */
    private final ComponentName f1509c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private final PendingIntent f1510d;

    /* loaded from: classes.dex */
    static class MockSession extends ICustomTabsService.Stub {
        MockSession() {
        }

        @Override // android.support.customtabs.ICustomTabsService
        public Bundle extraCommand(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
            return 0;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i2, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i2, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean warmup(long j2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomTabsSession(ICustomTabsService iCustomTabsService, ICustomTabsCallback iCustomTabsCallback, ComponentName componentName, @Nullable PendingIntent pendingIntent) {
        this.f1507a = iCustomTabsService;
        this.f1508b = iCustomTabsCallback;
        this.f1509c = componentName;
        this.f1510d = pendingIntent;
    }

    private Bundle b(@Nullable Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        a(bundle2);
        return bundle2;
    }

    public boolean a(@NonNull Uri uri, @Nullable Bundle bundle, @Nullable List<Bundle> list) {
        try {
            return this.f1507a.mayLaunchUrl(this.f1508b, uri, b(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public PendingIntent c() {
        return this.f1510d;
    }

    private void a(Bundle bundle) {
        PendingIntent pendingIntent = this.f1510d;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder a() {
        return this.f1508b.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentName b() {
        return this.f1509c;
    }
}
