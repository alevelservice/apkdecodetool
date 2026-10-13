package androidx.browser.customtabs;

import a.e.g;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.browser.customtabs.CustomTabsService;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class CustomTabsService extends Service {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String CATEGORY_COLOR_SCHEME_CUSTOMIZATION = "androidx.browser.customtabs.category.ColorSchemeCustomization";
    public static final String CATEGORY_NAVBAR_COLOR_CUSTOMIZATION = "androidx.browser.customtabs.category.NavBarColorCustomization";
    public static final String CATEGORY_TRUSTED_WEB_ACTIVITY_IMMERSIVE_MODE = "androidx.browser.trusted.category.ImmersiveMode";
    public static final String CATEGORY_WEB_SHARE_TARGET_V2 = "androidx.browser.trusted.category.WebShareTargetV2";
    public static final int FILE_PURPOSE_TRUSTED_WEB_ACTIVITY_SPLASH_IMAGE = 1;
    public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
    public static final int RELATION_HANDLE_ALL_URLS = 2;
    public static final int RELATION_USE_AS_ORIGIN = 1;
    public static final int RESULT_FAILURE_DISALLOWED = -1;
    public static final int RESULT_FAILURE_MESSAGING_ERROR = -3;
    public static final int RESULT_FAILURE_REMOTE_ERROR = -2;
    public static final int RESULT_SUCCESS = 0;
    public static final String TRUSTED_WEB_ACTIVITY_CATEGORY = "androidx.browser.trusted.category.TrustedWebActivities";
    final g<IBinder, IBinder.DeathRecipient> mDeathRecipientMap = new g<>();

    /* renamed from: e, reason: collision with root package name */
    private ICustomTabsService.Stub f1506e = new AnonymousClass1();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface FilePurpose {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Relation {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Result {
    }

    protected boolean cleanUpSession(@NonNull CustomTabsSessionToken customTabsSessionToken) {
        try {
            synchronized (this.mDeathRecipientMap) {
                IBinder a2 = customTabsSessionToken.a();
                if (a2 == null) {
                    return false;
                }
                a2.unlinkToDeath(this.mDeathRecipientMap.get(a2), 0);
                this.mDeathRecipientMap.remove(a2);
                return true;
            }
        } catch (NoSuchElementException unused) {
            return false;
        }
    }

    @Nullable
    protected abstract Bundle extraCommand(@NonNull String str, @Nullable Bundle bundle);

    protected abstract boolean mayLaunchUrl(@NonNull CustomTabsSessionToken customTabsSessionToken, @NonNull Uri uri, @Nullable Bundle bundle, @Nullable List<Bundle> list);

    protected abstract boolean newSession(@NonNull CustomTabsSessionToken customTabsSessionToken);

    @Override // android.app.Service
    @NonNull
    public IBinder onBind(@Nullable Intent intent) {
        return this.f1506e;
    }

    protected abstract int postMessage(@NonNull CustomTabsSessionToken customTabsSessionToken, @NonNull String str, @Nullable Bundle bundle);

    protected abstract boolean receiveFile(@NonNull CustomTabsSessionToken customTabsSessionToken, @NonNull Uri uri, int i2, @Nullable Bundle bundle);

    protected abstract boolean requestPostMessageChannel(@NonNull CustomTabsSessionToken customTabsSessionToken, @NonNull Uri uri);

    protected abstract boolean updateVisuals(@NonNull CustomTabsSessionToken customTabsSessionToken, @Nullable Bundle bundle);

    protected abstract boolean validateRelationship(@NonNull CustomTabsSessionToken customTabsSessionToken, int i2, @NonNull Uri uri, @Nullable Bundle bundle);

    protected abstract boolean warmup(long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.customtabs.CustomTabsService$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ICustomTabsService.Stub {
        AnonymousClass1() {
        }

        private boolean a(@NonNull ICustomTabsCallback iCustomTabsCallback, @Nullable PendingIntent pendingIntent) {
            final CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(iCustomTabsCallback, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs.a
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        CustomTabsService.AnonymousClass1.this.a(customTabsSessionToken);
                    }
                };
                synchronized (CustomTabsService.this.mDeathRecipientMap) {
                    iCustomTabsCallback.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.mDeathRecipientMap.put(iCustomTabsCallback.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.newSession(customTabsSessionToken);
            } catch (RemoteException unused) {
                return false;
            }
        }

        @Override // android.support.customtabs.ICustomTabsService
        public Bundle extraCommand(@NonNull String str, @Nullable Bundle bundle) {
            return CustomTabsService.this.extraCommand(str, bundle);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean mayLaunchUrl(@Nullable ICustomTabsCallback iCustomTabsCallback, @NonNull Uri uri, @Nullable Bundle bundle, @Nullable List<Bundle> list) {
            return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(iCustomTabsCallback, a(bundle)), uri, bundle, list);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSession(@NonNull ICustomTabsCallback iCustomTabsCallback) {
            return a(iCustomTabsCallback, null);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSessionWithExtras(@NonNull ICustomTabsCallback iCustomTabsCallback, @Nullable Bundle bundle) {
            return a(iCustomTabsCallback, a(bundle));
        }

        @Override // android.support.customtabs.ICustomTabsService
        public int postMessage(@NonNull ICustomTabsCallback iCustomTabsCallback, @NonNull String str, @Nullable Bundle bundle) {
            return CustomTabsService.this.postMessage(new CustomTabsSessionToken(iCustomTabsCallback, a(bundle)), str, bundle);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean receiveFile(@NonNull ICustomTabsCallback iCustomTabsCallback, @NonNull Uri uri, int i2, @Nullable Bundle bundle) {
            return CustomTabsService.this.receiveFile(new CustomTabsSessionToken(iCustomTabsCallback, a(bundle)), uri, i2, bundle);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannel(@NonNull ICustomTabsCallback iCustomTabsCallback, @NonNull Uri uri) {
            return CustomTabsService.this.requestPostMessageChannel(new CustomTabsSessionToken(iCustomTabsCallback, null), uri);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannelWithExtras(@NonNull ICustomTabsCallback iCustomTabsCallback, @NonNull Uri uri, @NonNull Bundle bundle) {
            return CustomTabsService.this.requestPostMessageChannel(new CustomTabsSessionToken(iCustomTabsCallback, a(bundle)), uri);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean updateVisuals(@NonNull ICustomTabsCallback iCustomTabsCallback, @Nullable Bundle bundle) {
            return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(iCustomTabsCallback, a(bundle)), bundle);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean validateRelationship(@NonNull ICustomTabsCallback iCustomTabsCallback, int i2, @NonNull Uri uri, @Nullable Bundle bundle) {
            return CustomTabsService.this.validateRelationship(new CustomTabsSessionToken(iCustomTabsCallback, a(bundle)), i2, uri, bundle);
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean warmup(long j2) {
            return CustomTabsService.this.warmup(j2);
        }

        public /* synthetic */ void a(CustomTabsSessionToken customTabsSessionToken) {
            CustomTabsService.this.cleanUpSession(customTabsSessionToken);
        }

        @Nullable
        private PendingIntent a(@Nullable Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }
    }
}
