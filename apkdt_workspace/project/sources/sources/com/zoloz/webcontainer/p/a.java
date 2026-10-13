package com.zoloz.webcontainer.p;

import android.text.TextUtils;
import java.io.File;

/* compiled from: FileUtil.java */
/* loaded from: classes2.dex */
public class a {
    public static boolean a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (b(str)) {
            return true;
        }
        b(c(str), z);
        try {
            return new File(str).createNewFile();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean b(String str, boolean z) {
        File file = new File(str);
        if (b(str) && !e(str)) {
            if (!z) {
                return false;
            }
            a(file);
        }
        try {
            file.mkdirs();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return b(file);
    }

    public static final String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return c(new File(d(str)));
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return new File(str).getCanonicalPath();
        } catch (Exception unused) {
            return str;
        }
    }

    public static final boolean e(String str) {
        if (b(str)) {
            return new File(str).isDirectory();
        }
        return false;
    }

    public static final String c(File file) {
        if (file == null) {
            return null;
        }
        return file.getParent();
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return b(new File(str));
    }

    public static boolean a(String str) {
        return b(str, false);
    }

    public static boolean a(File file) {
        boolean z = true;
        if (!b(file)) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        for (File file2 : file.listFiles()) {
            z |= a(file2);
        }
        return file.delete() | z;
    }

    public static boolean b(File file) {
        if (file == null) {
            return false;
        }
        return file.exists();
    }

    public static boolean a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (d(str).startsWith(d(str2) + File.separator)) {
                return true;
            }
        }
        return false;
    }
}
