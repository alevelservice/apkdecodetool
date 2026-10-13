package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class CustomTabsSessionToken {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    final ICustomTabsCallback f1511a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final PendingIntent f1512b;

    /* loaded from: classes.dex */
    static class MockCallback extends ICustomTabsCallback.Stub {
        MockCallback() {
        }

        @Override // android.support.customtabs.ICustomTabsCallback.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void extraCallback(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public Bundle extraCallbackWithResult(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onNavigationEvent(int i2, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onRelationshipValidationResult(int i2, Uri uri, boolean z, Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    class a extends c {
        a() {
        }

        @Override // androidx.browser.customtabs.c
        public void a(int i2, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f1511a.onNavigationEvent(i2, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // androidx.browser.customtabs.c
        public Bundle b(@NonNull String str, @Nullable Bundle bundle) {
            try {
                return CustomTabsSessionToken.this.f1511a.extraCallbackWithResult(str, bundle);
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // androidx.browser.customtabs.c
        public void c(@NonNull String str, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f1511a.onPostMessage(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // androidx.browser.customtabs.c
        public void a(@NonNull String str, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f1511a.extraCallback(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // androidx.browser.customtabs.c
        public void a(@Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f1511a.onMessageChannelReady(bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // androidx.browser.customtabs.c
        public void a(int i2, @NonNull Uri uri, boolean z, @Nullable Bundle bundle) {
            try {
                CustomTabsSessionToken.this.f1511a.onRelationshipValidationResult(i2, uri, z, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomTabsSessionToken(@Nullable ICustomTabsCallback iCustomTabsCallback, @Nullable PendingIntent pendingIntent) {
        if (iCustomTabsCallback == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f1511a = iCustomTabsCallback;
        this.f1512b = pendingIntent;
        if (this.f1511a == null) {
            return;
        }
        new a();
    }

    private IBinder c() {
        ICustomTabsCallback iCustomTabsCallback = this.f1511a;
        if (iCustomTabsCallback != null) {
            return iCustomTabsCallback.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public IBinder a() {
        ICustomTabsCallback iCustomTabsCallback = this.f1511a;
        if (iCustomTabsCallback == null) {
            return null;
        }
        return iCustomTabsCallback.asBinder();
    }

    @Nullable
    PendingIntent b() {
        return this.f1512b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CustomTabsSessionToken)) {
            return false;
        }
        CustomTabsSessionToken customTabsSessionToken = (CustomTabsSessionToken) obj;
        PendingIntent b2 = customTabsSessionToken.b();
        if ((this.f1512b == null) != (b2 == null)) {
            return false;
        }
        PendingIntent pendingIntent = this.f1512b;
        return pendingIntent != null ? pendingIntent.equals(b2) : c().equals(customTabsSessionToken.c());
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.f1512b;
        return pendingIntent != null ? pendingIntent.hashCode() : c().hashCode();
    }
}
