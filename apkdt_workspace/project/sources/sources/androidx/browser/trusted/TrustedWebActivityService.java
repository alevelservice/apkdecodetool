package androidx.browser.trusted;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.customtabs.trusted.ITrustedWebActivityService;
import androidx.annotation.BinderThread;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.browser.trusted.e;
import androidx.core.app.j;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class TrustedWebActivityService extends Service {

    @SuppressLint({"ActionValue", "ServiceName"})
    public static final String ACTION_TRUSTED_WEB_ACTIVITY_SERVICE = "android.support.customtabs.trusted.TRUSTED_WEB_ACTIVITY_SERVICE";
    public static final String KEY_SMALL_ICON_BITMAP = "android.support.customtabs.trusted.SMALL_ICON_BITMAP";
    public static final String META_DATA_NAME_SMALL_ICON = "android.support.customtabs.trusted.SMALL_ICON";
    public static final int SMALL_ICON_NOT_SET = -1;

    /* renamed from: e, reason: collision with root package name */
    private NotificationManager f1524e;
    int mVerifiedUid = -1;

    /* renamed from: f, reason: collision with root package name */
    private final ITrustedWebActivityService.Stub f1525f = new ITrustedWebActivityService.Stub() { // from class: androidx.browser.trusted.TrustedWebActivityService.1
        private void a() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            if (trustedWebActivityService.mVerifiedUid == -1) {
                String[] packagesForUid = trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                if (packagesForUid == null) {
                    packagesForUid = new String[0];
                }
                c a2 = TrustedWebActivityService.this.getTokenStore().a();
                PackageManager packageManager = TrustedWebActivityService.this.getPackageManager();
                if (a2 != null && packagesForUid.length > 0) {
                    a2.a(packagesForUid[0], packageManager);
                    throw null;
                }
            }
            if (TrustedWebActivityService.this.mVerifiedUid != Binder.getCallingUid()) {
                throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
            }
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle areNotificationsEnabled(Bundle bundle) {
            a();
            return new e.C0026e(TrustedWebActivityService.this.onAreNotificationsEnabled(e.c.a(bundle).f1529a)).a();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public void cancelNotification(Bundle bundle) {
            a();
            e.b a2 = e.b.a(bundle);
            TrustedWebActivityService.this.onCancelNotification(a2.f1527a, a2.f1528b);
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getActiveNotifications() {
            a();
            return new e.a(TrustedWebActivityService.this.onGetActiveNotifications()).a();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getSmallIconBitmap() {
            a();
            return TrustedWebActivityService.this.onGetSmallIconBitmap();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public int getSmallIconId() {
            a();
            return TrustedWebActivityService.this.onGetSmallIconId();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle notifyNotificationWithChannel(Bundle bundle) {
            a();
            e.d a2 = e.d.a(bundle);
            return new e.C0026e(TrustedWebActivityService.this.onNotifyNotificationWithChannel(a2.f1530a, a2.f1531b, a2.f1532c, a2.f1533d)).a();
        }
    };

    private static String a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    @NonNull
    @BinderThread
    public abstract d getTokenStore();

    @BinderThread
    public boolean onAreNotificationsEnabled(@NonNull String str) {
        a();
        if (!j.a(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        return b.a(this.f1524e, a(str));
    }

    @Override // android.app.Service
    @Nullable
    @MainThread
    public final IBinder onBind(@Nullable Intent intent) {
        return this.f1525f;
    }

    @BinderThread
    public void onCancelNotification(@NonNull String str, int i2) {
        a();
        this.f1524e.cancel(str, i2);
    }

    @Override // android.app.Service
    @CallSuper
    @MainThread
    public void onCreate() {
        super.onCreate();
        this.f1524e = (NotificationManager) getSystemService("notification");
    }

    @NonNull
    @BinderThread
    @RestrictTo({RestrictTo.a.LIBRARY})
    public Parcelable[] onGetActiveNotifications() {
        a();
        if (Build.VERSION.SDK_INT >= 23) {
            return a.a(this.f1524e);
        }
        throw new IllegalStateException("onGetActiveNotifications cannot be called pre-M.");
    }

    @NonNull
    @BinderThread
    public Bundle onGetSmallIconBitmap() {
        int onGetSmallIconId = onGetSmallIconId();
        Bundle bundle = new Bundle();
        if (onGetSmallIconId == -1) {
            return bundle;
        }
        bundle.putParcelable(KEY_SMALL_ICON_BITMAP, BitmapFactory.decodeResource(getResources(), onGetSmallIconId));
        return bundle;
    }

    @BinderThread
    public int onGetSmallIconId() {
        try {
            ServiceInfo serviceInfo = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128);
            if (serviceInfo.metaData == null) {
                return -1;
            }
            return serviceInfo.metaData.getInt(META_DATA_NAME_SMALL_ICON, -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    @BinderThread
    public boolean onNotifyNotificationWithChannel(@NonNull String str, int i2, @NonNull Notification notification, @NonNull String str2) {
        a();
        if (!j.a(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            String a2 = a(str2);
            notification = b.a(this, this.f1524e, notification, a2, str2);
            if (!b.a(this.f1524e, a2)) {
                return false;
            }
        }
        this.f1524e.notify(str, i2, notification);
        return true;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@Nullable Intent intent) {
        this.mVerifiedUid = -1;
        return super.onUnbind(intent);
    }

    private void a() {
        if (this.f1524e == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }
}
