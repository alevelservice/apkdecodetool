package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.ru1;
import com.google.android.gms.internal.ads.su1;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
public final class AdRequest {

    /* renamed from: a, reason: collision with root package name */
    private final su1 f4455a;

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface MaxAdContentRating {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface TagForUnderAgeOfConsent {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final ru1 f4456a = new ru1();

        public a() {
            this.f4456a.b("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public final a a(String str) {
            this.f4456a.a(str);
            return this;
        }

        public final a b(String str) {
            this.f4456a.b(str);
            return this;
        }

        public final a a(Class<? extends com.google.android.gms.ads.mediation.i> cls, Bundle bundle) {
            this.f4456a.a(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f4456a.c("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @Deprecated
        public final a b(boolean z) {
            this.f4456a.a(z);
            return this;
        }

        public final AdRequest a() {
            return new AdRequest(this);
        }

        @Deprecated
        public final a a(Date date) {
            this.f4456a.a(date);
            return this;
        }

        @Deprecated
        public final a a(int i2) {
            this.f4456a.a(i2);
            return this;
        }

        public final a a(Location location) {
            this.f4456a.a(location);
            return this;
        }

        @Deprecated
        public final a a(boolean z) {
            this.f4456a.b(z);
            return this;
        }
    }

    private AdRequest(a aVar) {
        this.f4455a = new su1(aVar.f4456a);
    }

    public final su1 a() {
        return this.f4455a;
    }
}
