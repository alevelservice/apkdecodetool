package com.google.android.gms.ads.mediation;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface e extends i {

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f4638a;

        public final a a(int i2) {
            this.f4638a = 1;
            return this;
        }

        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.f4638a);
            return bundle;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
