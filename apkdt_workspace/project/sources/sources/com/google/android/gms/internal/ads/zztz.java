package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zztz {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.d[] f11256a;

    /* renamed from: b, reason: collision with root package name */
    private final String f11257b;

    public zztz(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, com.google.android.gms.ads.i.AdsAttrs);
        String string = obtainAttributes.getString(com.google.android.gms.ads.i.AdsAttrs_adSize);
        String string2 = obtainAttributes.getString(com.google.android.gms.ads.i.AdsAttrs_adSizes);
        boolean z = !TextUtils.isEmpty(string);
        boolean z2 = !TextUtils.isEmpty(string2);
        if (z && !z2) {
            this.f11256a = a(string);
        } else {
            if (z || !z2) {
                if (z) {
                    throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
                }
                throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
            }
            this.f11256a = a(string2);
        }
        this.f11257b = obtainAttributes.getString(com.google.android.gms.ads.i.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty(this.f11257b)) {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        }
    }

    private static com.google.android.gms.ads.d[] a(String str) {
        String[] split = str.split("\\s*,\\s*");
        com.google.android.gms.ads.d[] dVarArr = new com.google.android.gms.ads.d[split.length];
        for (int i2 = 0; i2 < split.length; i2++) {
            String trim = split[i2].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    dVarArr[i2] = new com.google.android.gms.ads.d("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException unused) {
                    String valueOf = String.valueOf(trim);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4470e;
            } else if ("LARGE_BANNER".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4472g;
            } else if ("FULL_BANNER".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4471f;
            } else if ("LEADERBOARD".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4473h;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4474i;
            } else if ("SMART_BANNER".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4476k;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4475j;
            } else if ("FLUID".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.f4477l;
            } else if ("ICON".equals(trim)) {
                dVarArr[i2] = com.google.android.gms.ads.d.n;
            } else {
                String valueOf2 = String.valueOf(trim);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf2) : new String("Could not parse XML attribute \"adSize\": "));
            }
        }
        if (dVarArr.length != 0) {
            return dVarArr;
        }
        String valueOf3 = String.valueOf(str);
        throw new IllegalArgumentException(valueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf3) : new String("Could not parse XML attribute \"adSize\": "));
    }

    public final com.google.android.gms.ads.d[] a(boolean z) {
        if (!z && this.f11256a.length != 1) {
            throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
        }
        return this.f11256a;
    }

    public final String a() {
        return this.f11257b;
    }
}
