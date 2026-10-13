package com.jaumard.smsautofill;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: AppSignatureHelper.java */
/* loaded from: classes2.dex */
public class c extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public static final String f15497a = c.class.getSimpleName();

    public c(Context context) {
        super(context);
    }

    public String a() {
        ArrayList<String> b2 = b();
        return !b2.isEmpty() ? b2.get(0) : "NA";
    }

    public ArrayList<String> b() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            String packageName = getPackageName();
            for (Signature signature : getPackageManager().getPackageInfo(packageName, 64).signatures) {
                String a2 = a(packageName, signature.toCharsString());
                if (a2 != null) {
                    arrayList.add(String.format("%s", a2));
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    private static String a(String str, String str2) {
        String str3 = str + HanziToPinyin.Token.SEPARATOR + str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str3.getBytes(Charset.forName("UTF-8")));
            String substring = Base64.encodeToString(Arrays.copyOfRange(messageDigest.digest(), 0, 9), 3).substring(0, 11);
            String.format("pkg: %s -- hash: %s", str, substring);
            return substring;
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
