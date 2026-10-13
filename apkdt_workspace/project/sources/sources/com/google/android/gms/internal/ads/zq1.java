package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zq1 {

    /* renamed from: a, reason: collision with root package name */
    private final float f10832a;

    /* renamed from: b, reason: collision with root package name */
    private final float f10833b;

    /* renamed from: c, reason: collision with root package name */
    private final float f10834c;

    /* renamed from: d, reason: collision with root package name */
    private final float f10835d;

    /* renamed from: e, reason: collision with root package name */
    private final int f10836e;

    @VisibleForTesting
    public zq1(float f2, float f3, float f4, float f5, int i2) {
        this.f10832a = f2;
        this.f10833b = f3;
        this.f10834c = f2 + f4;
        this.f10835d = f3 + f5;
        this.f10836e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float a() {
        return this.f10832a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float b() {
        return this.f10833b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float c() {
        return this.f10834c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float d() {
        return this.f10835d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e() {
        return this.f10836e;
    }
}
