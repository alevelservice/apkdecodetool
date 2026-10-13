package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "WebImageCreator")
/* loaded from: classes.dex */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5210e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getUrl", id = 2)
    private final Uri f5211f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getWidth", id = 3)
    private final int f5212g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getHeight", id = 4)
    private final int f5213h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public WebImage(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) Uri uri, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4) {
        this.f5210e = i2;
        this.f5211f = uri;
        this.f5212g = i3;
        this.f5213h = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (k.a(this.f5211f, webImage.f5211f) && this.f5212g == webImage.f5212g && this.f5213h == webImage.f5213h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return k.a(this.f5211f, Integer.valueOf(this.f5212g), Integer.valueOf(this.f5213h));
    }

    public final int j() {
        return this.f5213h;
    }

    public final Uri k() {
        return this.f5211f;
    }

    public final int l() {
        return this.f5212g;
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f5212g), Integer.valueOf(this.f5213h), this.f5211f.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5210e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) k(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, l());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
