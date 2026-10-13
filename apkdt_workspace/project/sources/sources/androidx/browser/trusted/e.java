package androidx.browser.trusted;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;

/* compiled from: TrustedWebActivityServiceConnection.java */
/* loaded from: classes.dex */
public final class e {

    /* compiled from: TrustedWebActivityServiceConnection.java */
    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Parcelable[] f1526a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Parcelable[] parcelableArr) {
            this.f1526a = parcelableArr;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS", this.f1526a);
            return bundle;
        }
    }

    /* compiled from: TrustedWebActivityServiceConnection.java */
    /* loaded from: classes.dex */
    static class b {

        /* renamed from: a, reason: collision with root package name */
        public final String f1527a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1528b;

        b(String str, int i2) {
            this.f1527a = str;
            this.f1528b = i2;
        }

        public static b a(Bundle bundle) {
            e.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            e.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            return new b(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"));
        }
    }

    /* compiled from: TrustedWebActivityServiceConnection.java */
    /* loaded from: classes.dex */
    static class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f1529a;

        c(String str) {
            this.f1529a = str;
        }

        public static c a(Bundle bundle) {
            e.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            return new c(bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
        }
    }

    /* compiled from: TrustedWebActivityServiceConnection.java */
    /* loaded from: classes.dex */
    static class d {

        /* renamed from: a, reason: collision with root package name */
        public final String f1530a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1531b;

        /* renamed from: c, reason: collision with root package name */
        public final Notification f1532c;

        /* renamed from: d, reason: collision with root package name */
        public final String f1533d;

        d(String str, int i2, Notification notification, String str2) {
            this.f1530a = str;
            this.f1531b = i2;
            this.f1532c = notification;
            this.f1533d = str2;
        }

        public static d a(Bundle bundle) {
            e.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            e.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            e.a(bundle, "android.support.customtabs.trusted.NOTIFICATION");
            e.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            return new d(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"), (Notification) bundle.getParcelable("android.support.customtabs.trusted.NOTIFICATION"), bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
        }
    }

    /* compiled from: TrustedWebActivityServiceConnection.java */
    /* renamed from: androidx.browser.trusted.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0026e {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f1534a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0026e(boolean z) {
            this.f1534a = z;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", this.f1534a);
            return bundle;
        }
    }

    static void a(Bundle bundle, String str) {
        if (bundle.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Bundle must contain " + str);
    }
}
