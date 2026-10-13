package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e.i.b.a.i.f;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: CCTDestination.java */
/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: c, reason: collision with root package name */
    static final String f4234c = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: d, reason: collision with root package name */
    static final String f4235d = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");

    /* renamed from: e, reason: collision with root package name */
    private static final String f4236e = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");

    /* renamed from: f, reason: collision with root package name */
    private static final Set<e.i.b.a.b> f4237f = Collections.unmodifiableSet(new HashSet(Arrays.asList(e.i.b.a.b.a("proto"), e.i.b.a.b.a("json"))));

    /* renamed from: g, reason: collision with root package name */
    public static final a f4238g;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f4239a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f4240b;

    static {
        new a(f4234c, null);
        f4238g = new a(f4235d, f4236e);
    }

    public a(@NonNull String str, @Nullable String str2) {
        this.f4239a = str;
        this.f4240b = str2;
    }

    @Override // e.i.b.a.i.f
    public Set<e.i.b.a.b> a() {
        return f4237f;
    }

    @Nullable
    public byte[] b() {
        if (this.f4240b == null && this.f4239a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f4239a;
        objArr[2] = "\\";
        String str = this.f4240b;
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    @Nullable
    public String c() {
        return this.f4240b;
    }

    @NonNull
    public String d() {
        return this.f4239a;
    }

    @Override // e.i.b.a.i.e
    @Nullable
    public byte[] getExtras() {
        return b();
    }

    @Override // e.i.b.a.i.e
    @NonNull
    public String getName() {
        return "cct";
    }

    @NonNull
    public static a a(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }
}
