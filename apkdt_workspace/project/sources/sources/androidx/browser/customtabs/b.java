package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: CustomTabColorSchemeParams.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @ColorInt
    public final Integer f1517a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    @ColorInt
    public final Integer f1518b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    @ColorInt
    public final Integer f1519c;

    /* compiled from: CustomTabColorSchemeParams.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        @ColorInt
        private Integer f1520a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        @ColorInt
        private Integer f1521b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        @ColorInt
        private Integer f1522c;

        @NonNull
        public a a(@ColorInt int i2) {
            this.f1520a = Integer.valueOf(i2 | (-16777216));
            return this;
        }

        @NonNull
        public b a() {
            return new b(this.f1520a, this.f1521b, this.f1522c);
        }
    }

    b(@Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, @Nullable @ColorInt Integer num3) {
        this.f1517a = num;
        this.f1518b = num2;
        this.f1519c = num3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Bundle a() {
        Bundle bundle = new Bundle();
        Integer num = this.f1517a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f1518b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f1519c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        return bundle;
    }
}
