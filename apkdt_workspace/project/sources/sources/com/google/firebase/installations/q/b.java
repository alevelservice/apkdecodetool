package com.google.firebase.installations.q;

import android.content.SharedPreferences;
import android.util.Base64;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.stats.CodePackage;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: IidStore.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f15098c = {"*", "FCM", CodePackage.GCM, ""};

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("iidPrefs")
    private final SharedPreferences f15099a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15100b;

    public b(@NonNull com.google.firebase.c cVar) {
        this.f15099a = cVar.b().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f15100b = a(cVar);
    }

    private static String a(com.google.firebase.c cVar) {
        String e2 = cVar.d().e();
        if (e2 != null) {
            return e2;
        }
        String b2 = cVar.d().b();
        if (!b2.startsWith("1:") && !b2.startsWith("2:")) {
            return b2;
        }
        String[] split = b2.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Nullable
    private String c() {
        String string;
        synchronized (this.f15099a) {
            string = this.f15099a.getString("|S|id", null);
        }
        return string;
    }

    @Nullable
    private String d() {
        synchronized (this.f15099a) {
            String string = this.f15099a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey b2 = b(string);
            if (b2 == null) {
                return null;
            }
            return a(b2);
        }
    }

    @Nullable
    public String b() {
        synchronized (this.f15099a) {
            for (String str : f15098c) {
                String string = this.f15099a.getString(a(this.f15100b, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = a(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }

    private String a(@NonNull String str, @NonNull String str2) {
        return "|T|" + str + "|" + str2;
    }

    private String a(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private PublicKey b(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e2) {
            String str2 = "Invalid key stored " + e2;
            return null;
        }
    }

    @Nullable
    public String a() {
        synchronized (this.f15099a) {
            String c2 = c();
            if (c2 != null) {
                return c2;
            }
            return d();
        }
    }

    @Nullable
    private static String a(@NonNull PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
