package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gn0 implements ko0<lo0<Bundle>>, lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final ApplicationInfo f6944a;

    /* renamed from: b, reason: collision with root package name */
    private final PackageInfo f6945b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gn0(ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo) {
        this.f6944a = applicationInfo;
        this.f6945b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<lo0<Bundle>> a() {
        return gz0.a(this);
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f6944a.packageName;
        PackageInfo packageInfo = this.f6945b;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
    }
}
