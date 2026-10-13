package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "CredentialCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new f();

    /* renamed from: e, reason: collision with root package name */
    @Nonnull
    @SafeParcelable.Field(getter = "getId", id = 1)
    private final String f4742e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getName", id = 2)
    private final String f4743f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getProfilePictureUri", id = 3)
    private final Uri f4744g;

    /* renamed from: h, reason: collision with root package name */
    @Nonnull
    @SafeParcelable.Field(getter = "getIdTokens", id = 4)
    private final List<IdToken> f4745h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getPassword", id = 5)
    private final String f4746i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getAccountType", id = 6)
    private final String f4747j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getGivenName", id = 9)
    private final String f4748k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getFamilyName", id = 10)
    private final String f4749l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public Credential(@SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 3) Uri uri, @SafeParcelable.Param(id = 4) List<IdToken> list, @Nullable @SafeParcelable.Param(id = 5) String str3, @Nullable @SafeParcelable.Param(id = 6) String str4, @Nullable @SafeParcelable.Param(id = 9) String str5, @Nullable @SafeParcelable.Param(id = 10) String str6) {
        List<IdToken> unmodifiableList;
        com.google.android.gms.common.internal.m.a(str, (Object) "credential identifier cannot be null");
        String trim = str.trim();
        com.google.android.gms.common.internal.m.a(trim, (Object) "credential identifier cannot be empty");
        if (str3 != null && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password must not be empty if set");
        }
        if (str4 != null) {
            boolean z = false;
            if (!TextUtils.isEmpty(str4)) {
                Uri parse = Uri.parse(str4);
                if (parse.isAbsolute() && parse.isHierarchical() && !TextUtils.isEmpty(parse.getScheme()) && !TextUtils.isEmpty(parse.getAuthority()) && ("http".equalsIgnoreCase(parse.getScheme()) || "https".equalsIgnoreCase(parse.getScheme()))) {
                    z = true;
                }
            }
            if (!Boolean.valueOf(z).booleanValue()) {
                throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
            }
        }
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.f4743f = str2;
        this.f4744g = uri;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.f4745h = unmodifiableList;
        this.f4742e = trim;
        this.f4746i = str3;
        this.f4747j = str4;
        this.f4748k = str5;
        this.f4749l = str6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f4742e, credential.f4742e) && TextUtils.equals(this.f4743f, credential.f4743f) && com.google.android.gms.common.internal.k.a(this.f4744g, credential.f4744g) && TextUtils.equals(this.f4746i, credential.f4746i) && TextUtils.equals(this.f4747j, credential.f4747j);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(this.f4742e, this.f4743f, this.f4744g, this.f4746i, this.f4747j);
    }

    @Nullable
    public String j() {
        return this.f4747j;
    }

    @Nullable
    public String k() {
        return this.f4749l;
    }

    @Nullable
    public String l() {
        return this.f4748k;
    }

    @Nonnull
    public String m() {
        return this.f4742e;
    }

    @Nonnull
    public List<IdToken> o() {
        return this.f4745h;
    }

    @Nullable
    public String p() {
        return this.f4743f;
    }

    @Nullable
    public String q() {
        return this.f4746i;
    }

    @Nullable
    public Uri r() {
        return this.f4744g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, m(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, p(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) r(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, o(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, q(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
