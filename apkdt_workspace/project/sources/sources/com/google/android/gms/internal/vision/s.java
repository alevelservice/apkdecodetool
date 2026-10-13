package com.google.android.gms.internal.vision;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class s {
    public static g0<t> a(Context context) {
        String str = Build.TYPE;
        String str2 = Build.TAGS;
        String str3 = Build.HARDWARE;
        boolean z = false;
        if ((str.equals("eng") || str.equals("userdebug")) && ((str3.equals("goldfish") || str3.equals("ranchu") || str3.equals("robolectric")) && (str2.contains("dev-keys") || str2.contains("test-keys")))) {
            z = true;
        }
        if (!z) {
            return g0.zzbx();
        }
        if (g.a() && !context.isDeviceProtectedStorage()) {
            context = context.createDeviceProtectedStorageContext();
        }
        g0<File> b2 = b(context);
        if (b2.isPresent()) {
            return g0.zzb(a(b2.get()));
        }
        return g0.zzbx();
    }

    private static g0<File> b(Context context) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? g0.zzb(file) : g0.zzbx();
        } catch (RuntimeException unused) {
            return g0.zzbx();
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static t a(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                HashMap hashMap = new HashMap();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        String[] split = readLine.split(HanziToPinyin.Token.SEPARATOR, 3);
                        if (split.length != 3) {
                            String valueOf = String.valueOf(readLine);
                            if (valueOf.length() != 0) {
                                "Invalid: ".concat(valueOf);
                            } else {
                                new String("Invalid: ");
                            }
                        } else {
                            String str = split[0];
                            String decode = Uri.decode(split[1]);
                            String decode2 = Uri.decode(split[2]);
                            if (!hashMap.containsKey(str)) {
                                hashMap.put(str, new HashMap());
                            }
                            ((Map) hashMap.get(str)).put(decode, decode2);
                        }
                    } else {
                        String valueOf2 = String.valueOf(file);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 7);
                        sb.append("Parsed ");
                        sb.append(valueOf2);
                        sb.toString();
                        t tVar = new t(hashMap);
                        bufferedReader.close();
                        return tVar;
                    }
                }
            } finally {
            }
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
