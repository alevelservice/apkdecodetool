package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.browser.customtabs.b;
import androidx.core.app.e;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class CustomTabsIntent {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Intent f1498a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface ColorScheme {
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        private ArrayList<Bundle> f1501c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        private Bundle f1502d;

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        private ArrayList<Bundle> f1503e;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        private SparseArray<Bundle> f1505g;

        /* renamed from: a, reason: collision with root package name */
        private final Intent f1499a = new Intent("android.intent.action.VIEW");

        /* renamed from: b, reason: collision with root package name */
        private final b.a f1500b = new b.a();

        /* renamed from: f, reason: collision with root package name */
        private boolean f1504f = true;

        public a() {
        }

        @NonNull
        public a a(@NonNull CustomTabsSession customTabsSession) {
            this.f1499a.setPackage(customTabsSession.b().getPackageName());
            a(customTabsSession.a(), customTabsSession.c());
            return this;
        }

        @NonNull
        public a b(boolean z) {
            this.f1499a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", z ? 1 : 0);
            return this;
        }

        @NonNull
        public a c() {
            this.f1499a.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
            return this;
        }

        @NonNull
        public CustomTabsIntent b() {
            if (!this.f1499a.hasExtra("android.support.customtabs.extra.SESSION")) {
                a((IBinder) null, (PendingIntent) null);
            }
            ArrayList<Bundle> arrayList = this.f1501c;
            if (arrayList != null) {
                this.f1499a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f1503e;
            if (arrayList2 != null) {
                this.f1499a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1499a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1504f);
            this.f1499a.putExtras(this.f1500b.a().a());
            if (this.f1505g != null) {
                Bundle bundle = new Bundle();
                bundle.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f1505g);
                this.f1499a.putExtras(bundle);
            }
            return new CustomTabsIntent(this.f1499a, this.f1502d);
        }

        private void a(@Nullable IBinder iBinder, @Nullable PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            e.a(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1499a.putExtras(bundle);
        }

        public a(@Nullable CustomTabsSession customTabsSession) {
            if (customTabsSession != null) {
                a(customTabsSession);
            }
        }

        @NonNull
        public a a(@ColorInt int i2) {
            this.f1500b.a(i2);
            return this;
        }

        @NonNull
        public a a(@NonNull String str, @NonNull PendingIntent pendingIntent) {
            if (this.f1501c == null) {
                this.f1501c = new ArrayList<>();
            }
            Bundle bundle = new Bundle();
            bundle.putString("android.support.customtabs.customaction.MENU_ITEM_TITLE", str);
            bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", pendingIntent);
            this.f1501c.add(bundle);
            return this;
        }

        @NonNull
        public a a() {
            this.f1499a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
            return this;
        }

        @NonNull
        public a a(boolean z) {
            this.f1504f = z;
            return this;
        }
    }

    CustomTabsIntent(@NonNull Intent intent, @Nullable Bundle bundle) {
        this.f1498a = intent;
    }
}
