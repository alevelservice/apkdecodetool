package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class RequestConfiguration {

    /* renamed from: d, reason: collision with root package name */
    public static final List<String> f4458d = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: a, reason: collision with root package name */
    private final int f4459a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4460b;

    /* renamed from: c, reason: collision with root package name */
    private final String f4461c;

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MaxAdContentRating {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TagForChildDirectedTreatment {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TagForUnderAgeOfConsent {
    }

    /* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f4462a = -1;

        /* renamed from: b, reason: collision with root package name */
        private int f4463b = -1;

        /* renamed from: c, reason: collision with root package name */
        private String f4464c = null;

        public RequestConfiguration a() {
            return new RequestConfiguration(this.f4462a, this.f4463b, this.f4464c);
        }
    }

    private RequestConfiguration(int i2, int i3, String str) {
        this.f4459a = i2;
        this.f4460b = i3;
        this.f4461c = str;
    }

    public String a() {
        String str = this.f4461c;
        return str == null ? "" : str;
    }

    public int b() {
        return this.f4459a;
    }

    public int c() {
        return this.f4460b;
    }
}
