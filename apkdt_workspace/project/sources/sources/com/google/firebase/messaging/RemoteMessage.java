package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.messaging.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
@SafeParcelable.Class(creator = "RemoteMessageCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new w();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    Bundle f15188e;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, String> f15189f;

    /* renamed from: g, reason: collision with root package name */
    private c f15190g;

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MessagePriority {
    }

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final String f15193a;

        /* renamed from: b, reason: collision with root package name */
        private final String f15194b;

        /* renamed from: c, reason: collision with root package name */
        private final String[] f15195c;

        /* renamed from: d, reason: collision with root package name */
        private final String f15196d;

        /* renamed from: e, reason: collision with root package name */
        private final String f15197e;

        /* renamed from: f, reason: collision with root package name */
        private final String[] f15198f;

        /* renamed from: g, reason: collision with root package name */
        private final String f15199g;

        /* renamed from: h, reason: collision with root package name */
        private final String f15200h;

        /* renamed from: i, reason: collision with root package name */
        private final String f15201i;

        /* renamed from: j, reason: collision with root package name */
        private final String f15202j;

        /* renamed from: k, reason: collision with root package name */
        private final String f15203k;

        /* renamed from: l, reason: collision with root package name */
        private final String f15204l;
        private final Uri m;
        private final String n;
        private final Integer o;
        private final Integer p;
        private final Integer q;

        private c(v vVar) {
            this.f15193a = vVar.g("gcm.n.title");
            this.f15194b = vVar.e("gcm.n.title");
            this.f15195c = a(vVar, "gcm.n.title");
            this.f15196d = vVar.g("gcm.n.body");
            this.f15197e = vVar.e("gcm.n.body");
            this.f15198f = a(vVar, "gcm.n.body");
            this.f15199g = vVar.g("gcm.n.icon");
            this.f15201i = vVar.f();
            vVar.g("gcm.n.tag");
            this.f15202j = vVar.g("gcm.n.color");
            this.f15203k = vVar.g("gcm.n.click_action");
            this.f15204l = vVar.g("gcm.n.android_channel_id");
            this.m = vVar.b();
            this.f15200h = vVar.g("gcm.n.image");
            this.n = vVar.g("gcm.n.ticker");
            this.o = vVar.b("gcm.n.notification_priority");
            this.p = vVar.b("gcm.n.visibility");
            this.q = vVar.b("gcm.n.notification_count");
            vVar.a("gcm.n.sticky");
            vVar.a("gcm.n.local_only");
            vVar.a("gcm.n.default_sound");
            vVar.a("gcm.n.default_vibrate_timings");
            vVar.a("gcm.n.default_light_settings");
            vVar.f("gcm.n.event_time");
            vVar.a();
            vVar.g();
        }

        private static String[] a(v vVar, String str) {
            Object[] d2 = vVar.d(str);
            if (d2 == null) {
                return null;
            }
            String[] strArr = new String[d2.length];
            for (int i2 = 0; i2 < d2.length; i2++) {
                strArr[i2] = String.valueOf(d2[i2]);
            }
            return strArr;
        }

        @Nullable
        public String a() {
            return this.f15196d;
        }

        @Nullable
        public String[] b() {
            return this.f15198f;
        }

        @Nullable
        public String c() {
            return this.f15197e;
        }

        @Nullable
        public String d() {
            return this.f15204l;
        }

        @Nullable
        public String e() {
            return this.f15203k;
        }

        @Nullable
        public String f() {
            return this.f15202j;
        }

        @Nullable
        public String g() {
            return this.f15199g;
        }

        @Nullable
        public Uri h() {
            String str = this.f15200h;
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        @Nullable
        public Uri i() {
            return this.m;
        }

        @Nullable
        public Integer j() {
            return this.q;
        }

        @Nullable
        public Integer k() {
            return this.o;
        }

        @Nullable
        public String l() {
            return this.f15201i;
        }

        @Nullable
        public String m() {
            return this.n;
        }

        @Nullable
        public String n() {
            return this.f15193a;
        }

        @Nullable
        public String[] o() {
            return this.f15195c;
        }

        @Nullable
        public String p() {
            return this.f15194b;
        }

        @Nullable
        public Integer q() {
            return this.p;
        }
    }

    @SafeParcelable.Constructor
    public RemoteMessage(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f15188e = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Intent intent) {
        intent.putExtras(this.f15188e);
    }

    @Nullable
    public String j() {
        return this.f15188e.getString("collapse_key");
    }

    @NonNull
    public Map<String, String> k() {
        if (this.f15189f == null) {
            this.f15189f = b.a.a(this.f15188e);
        }
        return this.f15189f;
    }

    @Nullable
    public String l() {
        return this.f15188e.getString("from");
    }

    @Nullable
    public String m() {
        String string = this.f15188e.getString("google.message_id");
        return string == null ? this.f15188e.getString("message_id") : string;
    }

    @Nullable
    public String o() {
        return this.f15188e.getString("message_type");
    }

    @Nullable
    public c p() {
        if (this.f15190g == null && v.a(this.f15188e)) {
            this.f15190g = new c(new v(this.f15188e));
        }
        return this.f15190g;
    }

    public long q() {
        Object obj = this.f15188e.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
            sb.append("Invalid sent time: ");
            sb.append(valueOf);
            sb.toString();
            return 0L;
        }
    }

    @Nullable
    public String r() {
        return this.f15188e.getString("google.to");
    }

    public int s() {
        Object obj = this.f15188e.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            sb.toString();
            return 0;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        w.a(this, parcel, i2);
    }

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Bundle f15191a = new Bundle();

        /* renamed from: b, reason: collision with root package name */
        private final Map<String, String> f15192b = new a.e.a();

        public b(@NonNull String str) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid to: ".concat(valueOf) : new String("Invalid to: "));
            }
            this.f15191a.putString("google.to", str);
        }

        @NonNull
        public RemoteMessage a() {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, String> entry : this.f15192b.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            bundle.putAll(this.f15191a);
            this.f15191a.remove("from");
            return new RemoteMessage(bundle);
        }

        @NonNull
        public b b(@NonNull String str) {
            this.f15191a.putString("google.message_id", str);
            return this;
        }

        @NonNull
        public b c(@Nullable String str) {
            this.f15191a.putString("message_type", str);
            return this;
        }

        @NonNull
        public b a(@Nullable String str) {
            this.f15191a.putString("collapse_key", str);
            return this;
        }

        @NonNull
        public b a(@NonNull Map<String, String> map) {
            this.f15192b.clear();
            this.f15192b.putAll(map);
            return this;
        }

        @NonNull
        public b a(@IntRange(from = 0, to = 86400) int i2) {
            this.f15191a.putString("google.ttl", String.valueOf(i2));
            return this;
        }
    }
}
