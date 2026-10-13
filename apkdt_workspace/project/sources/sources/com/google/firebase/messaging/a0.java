package com.google.firebase.messaging;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.regex.Pattern;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class a0 {

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f15209d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a, reason: collision with root package name */
    private final String f15210a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15211b;

    /* renamed from: c, reason: collision with root package name */
    private final String f15212c;

    private a0(String str, String str2) {
        this.f15210a = a(str2, str);
        this.f15211b = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f15212c = sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static a0 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length != 2) {
            return null;
        }
        return new a0(split[0], split[1]);
    }

    public static a0 b(@NonNull String str) {
        return new a0("S", str);
    }

    public static a0 c(@NonNull String str) {
        return new a0("U", str);
    }

    public String a() {
        return this.f15211b;
    }

    public String b() {
        return this.f15210a;
    }

    public String c() {
        return this.f15212c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f15210a.equals(a0Var.f15210a) && this.f15211b.equals(a0Var.f15211b);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(this.f15211b, this.f15210a);
    }

    @NonNull
    private static String a(String str, String str2) {
        if (str != null && str.startsWith("/topics/")) {
            String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2);
            str = str.substring(8);
        }
        if (str == null || !f15209d.matcher(str).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        return str;
    }
}
