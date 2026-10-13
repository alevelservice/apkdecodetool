package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "GoogleSignInAccountCreator")
/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new f();

    @VisibleForTesting
    private static com.google.android.gms.common.util.e r = com.google.android.gms.common.util.h.d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4815e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getId", id = 2)
    private String f4816f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getIdToken", id = 3)
    private String f4817g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getEmail", id = 4)
    private String f4818h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getDisplayName", id = 5)
    private String f4819i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPhotoUrl", id = 6)
    private Uri f4820j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getServerAuthCode", id = 7)
    private String f4821k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getExpirationTimeSecs", id = 8)
    private long f4822l;

    @SafeParcelable.Field(getter = "getObfuscatedIdentifier", id = 9)
    private String m;

    @SafeParcelable.Field(id = 10)
    private List<Scope> n;

    @SafeParcelable.Field(getter = "getGivenName", id = 11)
    private String o;

    @SafeParcelable.Field(getter = "getFamilyName", id = 12)
    private String p;
    private Set<Scope> q = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Uri uri, @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) long j2, @SafeParcelable.Param(id = 9) String str6, @SafeParcelable.Param(id = 10) List<Scope> list, @SafeParcelable.Param(id = 11) String str7, @SafeParcelable.Param(id = 12) String str8) {
        this.f4815e = i2;
        this.f4816f = str;
        this.f4817g = str2;
        this.f4818h = str3;
        this.f4819i = str4;
        this.f4820j = uri;
        this.f4821k = str5;
        this.f4822l = j2;
        this.m = str6;
        this.n = list;
        this.o = str7;
        this.p = str8;
    }

    private static GoogleSignInAccount a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l2, @NonNull String str7, @NonNull Set<Scope> set) {
        long longValue = (l2 == null ? Long.valueOf(r.a() / 1000) : l2).longValue();
        m.b(str7);
        m.a(set);
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, longValue, str7, new ArrayList(set), str5, str6);
    }

    @Nullable
    public static GoogleSignInAccount b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        GoogleSignInAccount a2 = a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        a2.f4821k = jSONObject.optString("serverAuthCode", null);
        return a2;
    }

    private final JSONObject f0() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (p() != null) {
                jSONObject.put("id", p());
            }
            if (q() != null) {
                jSONObject.put("tokenId", q());
            }
            if (l() != null) {
                jSONObject.put("email", l());
            }
            if (k() != null) {
                jSONObject.put("displayName", k());
            }
            if (o() != null) {
                jSONObject.put("givenName", o());
            }
            if (m() != null) {
                jSONObject.put("familyName", m());
            }
            if (r() != null) {
                jSONObject.put("photoUrl", r().toString());
            }
            if (t() != null) {
                jSONObject.put("serverAuthCode", t());
            }
            jSONObject.put("expirationTime", this.f4822l);
            jSONObject.put("obfuscatedIdentifier", this.m);
            JSONArray jSONArray = new JSONArray();
            Scope[] scopeArr = (Scope[]) this.n.toArray(new Scope[this.n.size()]);
            Arrays.sort(scopeArr, e.f4851e);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.j());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.m.equals(this.m) && googleSignInAccount.s().equals(s());
    }

    public int hashCode() {
        return ((this.m.hashCode() + 527) * 31) + s().hashCode();
    }

    @Nullable
    public Account j() {
        String str = this.f4818h;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    @Nullable
    public String k() {
        return this.f4819i;
    }

    @Nullable
    public String l() {
        return this.f4818h;
    }

    @Nullable
    public String m() {
        return this.p;
    }

    @Nullable
    public String o() {
        return this.o;
    }

    @Nullable
    public String p() {
        return this.f4816f;
    }

    @Nullable
    public String q() {
        return this.f4817g;
    }

    @Nullable
    public Uri r() {
        return this.f4820j;
    }

    @NonNull
    @KeepForSdk
    public Set<Scope> s() {
        HashSet hashSet = new HashSet(this.n);
        hashSet.addAll(this.q);
        return hashSet;
    }

    @Nullable
    public String t() {
        return this.f4821k;
    }

    @NonNull
    public final String u() {
        return this.m;
    }

    public final String v() {
        JSONObject f0 = f0();
        f0.remove("serverAuthCode");
        return f0.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4815e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, p(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, q(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) r(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, t(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4822l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.m, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 10, this.n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, o(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, m(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
