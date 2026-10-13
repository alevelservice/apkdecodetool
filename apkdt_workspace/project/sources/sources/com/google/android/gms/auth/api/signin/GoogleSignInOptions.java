package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "GoogleSignInOptionsCreator")
/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements a.d.f, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    @VisibleForTesting
    public static final Scope o = new Scope("profile");

    @VisibleForTesting
    public static final Scope p;

    @VisibleForTesting
    public static final Scope q;

    @VisibleForTesting
    public static final Scope r;
    public static final GoogleSignInOptions s;
    private static Comparator<Scope> t;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4823e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getScopes", id = 2)
    private final ArrayList<Scope> f4824f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAccount", id = 3)
    private Account f4825g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isIdTokenRequested", id = 4)
    private boolean f4826h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isServerAuthCodeRequested", id = 5)
    private final boolean f4827i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isForceCodeForRefreshToken", id = 6)
    private final boolean f4828j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getServerClientId", id = 7)
    private String f4829k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getHostedDomain", id = 8)
    private String f4830l;

    @SafeParcelable.Field(getter = "getExtensions", id = 9)
    private ArrayList<GoogleSignInOptionsExtensionParcelable> m;

    @SafeParcelable.Field(getter = "getLogSessionId", id = 10)
    private String n;

    static {
        new Scope("email");
        p = new Scope("openid");
        q = new Scope("https://www.googleapis.com/auth/games_lite");
        r = new Scope("https://www.googleapis.com/auth/games");
        a aVar = new a();
        aVar.b();
        aVar.c();
        s = aVar.a();
        a aVar2 = new a();
        aVar2.a(q, new Scope[0]);
        aVar2.a();
        CREATOR = new h();
        t = new g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleSignInOptions(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ArrayList<Scope> arrayList, @SafeParcelable.Param(id = 3) Account account, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) boolean z3, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @SafeParcelable.Param(id = 10) String str3) {
        this(i2, arrayList, account, z, z2, z3, str, str2, a(arrayList2), str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> a(@Nullable List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.j()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    @Nullable
    public static GoogleSignInOptions b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        String optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(3, (ArrayList<Scope>) new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap(), (String) null);
    }

    private final JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f4824f, t);
            ArrayList<Scope> arrayList = this.f4824f;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Scope scope = arrayList.get(i2);
                i2++;
                jSONArray.put(scope.j());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.f4825g != null) {
                jSONObject.put("accountName", this.f4825g.name);
            }
            jSONObject.put("idTokenRequested", this.f4826h);
            jSONObject.put("forceCodeForRefreshToken", this.f4828j);
            jSONObject.put("serverAuthRequested", this.f4827i);
            if (!TextUtils.isEmpty(this.f4829k)) {
                jSONObject.put("serverClientId", this.f4829k);
            }
            if (!TextUtils.isEmpty(this.f4830l)) {
                jSONObject.put("hostedDomain", this.f4830l);
            }
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0069, code lost:
    
        if (r3.f4829k.equals(r4.o()) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004a, code lost:
    
        if (r3.f4825g.equals(r4.j()) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L91
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r3.m     // Catch: java.lang.ClassCastException -> L91
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L91
            if (r1 > 0) goto L91
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r4.m     // Catch: java.lang.ClassCastException -> L91
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L91
            if (r1 <= 0) goto L18
            goto L91
        L18:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f4824f     // Catch: java.lang.ClassCastException -> L91
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L91
            java.util.ArrayList r2 = r4.m()     // Catch: java.lang.ClassCastException -> L91
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L91
            if (r1 != r2) goto L91
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f4824f     // Catch: java.lang.ClassCastException -> L91
            java.util.ArrayList r2 = r4.m()     // Catch: java.lang.ClassCastException -> L91
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L91
            if (r1 != 0) goto L35
            goto L91
        L35:
            android.accounts.Account r1 = r3.f4825g     // Catch: java.lang.ClassCastException -> L91
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.j()     // Catch: java.lang.ClassCastException -> L91
            if (r1 != 0) goto L91
            goto L4c
        L40:
            android.accounts.Account r1 = r3.f4825g     // Catch: java.lang.ClassCastException -> L91
            android.accounts.Account r2 = r4.j()     // Catch: java.lang.ClassCastException -> L91
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L91
            if (r1 == 0) goto L91
        L4c:
            java.lang.String r1 = r3.f4829k     // Catch: java.lang.ClassCastException -> L91
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L91
            if (r1 == 0) goto L5f
            java.lang.String r1 = r4.o()     // Catch: java.lang.ClassCastException -> L91
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L91
            if (r1 == 0) goto L91
            goto L6b
        L5f:
            java.lang.String r1 = r3.f4829k     // Catch: java.lang.ClassCastException -> L91
            java.lang.String r2 = r4.o()     // Catch: java.lang.ClassCastException -> L91
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L91
            if (r1 == 0) goto L91
        L6b:
            boolean r1 = r3.f4828j     // Catch: java.lang.ClassCastException -> L91
            boolean r2 = r4.p()     // Catch: java.lang.ClassCastException -> L91
            if (r1 != r2) goto L91
            boolean r1 = r3.f4826h     // Catch: java.lang.ClassCastException -> L91
            boolean r2 = r4.q()     // Catch: java.lang.ClassCastException -> L91
            if (r1 != r2) goto L91
            boolean r1 = r3.f4827i     // Catch: java.lang.ClassCastException -> L91
            boolean r2 = r4.r()     // Catch: java.lang.ClassCastException -> L91
            if (r1 != r2) goto L91
            java.lang.String r1 = r3.n     // Catch: java.lang.ClassCastException -> L91
            java.lang.String r4 = r4.l()     // Catch: java.lang.ClassCastException -> L91
            boolean r4 = android.text.TextUtils.equals(r1, r4)     // Catch: java.lang.ClassCastException -> L91
            if (r4 == 0) goto L91
            r4 = 1
            return r4
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f4824f;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Scope scope = arrayList2.get(i2);
            i2++;
            arrayList.add(scope.j());
        }
        Collections.sort(arrayList);
        com.google.android.gms.auth.api.signin.internal.a aVar = new com.google.android.gms.auth.api.signin.internal.a();
        aVar.a(arrayList);
        aVar.a(this.f4825g);
        aVar.a(this.f4829k);
        aVar.a(this.f4828j);
        aVar.a(this.f4826h);
        aVar.a(this.f4827i);
        aVar.a(this.n);
        return aVar.a();
    }

    @KeepForSdk
    public Account j() {
        return this.f4825g;
    }

    @KeepForSdk
    public ArrayList<GoogleSignInOptionsExtensionParcelable> k() {
        return this.m;
    }

    @Nullable
    @KeepForSdk
    public String l() {
        return this.n;
    }

    @KeepForSdk
    public ArrayList<Scope> m() {
        return new ArrayList<>(this.f4824f);
    }

    @KeepForSdk
    public String o() {
        return this.f4829k;
    }

    @KeepForSdk
    public boolean p() {
        return this.f4828j;
    }

    @KeepForSdk
    public boolean q() {
        return this.f4826h;
    }

    @KeepForSdk
    public boolean r() {
        return this.f4827i;
    }

    public final String s() {
        return t().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4823e);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, m(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) j(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, q());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, r());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, p());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, o(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4830l, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 9, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private Set<Scope> f4831a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f4832b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f4833c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f4834d;

        /* renamed from: e, reason: collision with root package name */
        private String f4835e;

        /* renamed from: f, reason: collision with root package name */
        private Account f4836f;

        /* renamed from: g, reason: collision with root package name */
        private String f4837g;

        /* renamed from: h, reason: collision with root package name */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f4838h;

        /* renamed from: i, reason: collision with root package name */
        private String f4839i;

        public a() {
            this.f4831a = new HashSet();
            this.f4838h = new HashMap();
        }

        public final a a(Scope scope, Scope... scopeArr) {
            this.f4831a.add(scope);
            this.f4831a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final a b() {
            this.f4831a.add(GoogleSignInOptions.p);
            return this;
        }

        public final a c() {
            this.f4831a.add(GoogleSignInOptions.o);
            return this;
        }

        @KeepForSdk
        public final a a(String str) {
            this.f4839i = str;
            return this;
        }

        public a(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.f4831a = new HashSet();
            this.f4838h = new HashMap();
            m.a(googleSignInOptions);
            this.f4831a = new HashSet(googleSignInOptions.f4824f);
            this.f4832b = googleSignInOptions.f4827i;
            this.f4833c = googleSignInOptions.f4828j;
            this.f4834d = googleSignInOptions.f4826h;
            this.f4835e = googleSignInOptions.f4829k;
            this.f4836f = googleSignInOptions.f4825g;
            this.f4837g = googleSignInOptions.f4830l;
            this.f4838h = GoogleSignInOptions.a(googleSignInOptions.m);
            this.f4839i = googleSignInOptions.n;
        }

        public final GoogleSignInOptions a() {
            if (this.f4831a.contains(GoogleSignInOptions.r) && this.f4831a.contains(GoogleSignInOptions.q)) {
                this.f4831a.remove(GoogleSignInOptions.q);
            }
            if (this.f4834d && (this.f4836f == null || !this.f4831a.isEmpty())) {
                b();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f4831a), this.f4836f, this.f4834d, this.f4832b, this.f4833c, this.f4835e, this.f4837g, this.f4838h, this.f4839i, null);
        }
    }

    private GoogleSignInOptions(int i2, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f4823e = i2;
        this.f4824f = arrayList;
        this.f4825g = account;
        this.f4826h = z;
        this.f4827i = z2;
        this.f4828j = z3;
        this.f4829k = str;
        this.f4830l = str2;
        this.m = new ArrayList<>(map.values());
        this.n = str3;
    }

    /* synthetic */ GoogleSignInOptions(int i2, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, g gVar) {
        this(3, (ArrayList<Scope>) arrayList, account, z, z2, z3, str, str2, (Map<Integer, GoogleSignInOptionsExtensionParcelable>) map, str3);
    }
}
