package com.zoloz.webcontainer.p;

import android.content.Context;
import com.alipay.mobile.security.bio.utils.FileUtil;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* compiled from: ZipUtil.java */
/* loaded from: classes2.dex */
public class c {
    public static boolean a(Context context, int i2, String str) {
        InputStream openRawResource = context.getResources().openRawResource(i2);
        if (!a.b(str, true)) {
            com.zoloz.webcontainer.b.c("ZipUtil", "failed to create unzip folder.");
            return false;
        }
        try {
            ZipInputStream zipInputStream = new ZipInputStream(openRawResource);
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    String name = nextEntry.getName();
                    com.zoloz.webcontainer.b.a("ZipUtil", "unzip entry " + name);
                    String str2 = str + "/" + name;
                    if (name.startsWith("../")) {
                        return false;
                    }
                    if (a.a(str2, str)) {
                        if (nextEntry.isDirectory()) {
                            a.a(str2);
                        } else if (!a.a(str2, true)) {
                            com.zoloz.webcontainer.b.c("ZipUtil", "failed to create file " + str2);
                        } else {
                            FileOutputStream fileOutputStream = new FileOutputStream(str2);
                            byte[] bArr = new byte[FileUtil.STREAM_BUFFER_SIZE];
                            while (true) {
                                int read = zipInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileOutputStream.close();
                            zipInputStream.closeEntry();
                        }
                    }
                } else {
                    zipInputStream.close();
                    return true;
                }
            }
        } catch (Exception e2) {
            com.zoloz.webcontainer.b.a("unzip exception", e2);
            return false;
        }
    }

    public static boolean a(Context context, String str, String str2) {
        try {
            InputStream open = context.getResources().getAssets().open(str);
            if (!a.b(str2, true)) {
                com.zoloz.webcontainer.b.c("ZipUtil", "failed to create unzip folder.");
                return false;
            }
            try {
                ZipInputStream zipInputStream = new ZipInputStream(open);
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        String name = nextEntry.getName();
                        com.zoloz.webcontainer.b.a("ZipUtil", "unzip entry " + name);
                        String str3 = str2 + "/" + name;
                        if (name.startsWith("../")) {
                            return false;
                        }
                        if (a.a(str3, str2)) {
                            if (nextEntry.isDirectory()) {
                                a.a(str3);
                            } else if (!a.a(str3, true)) {
                                com.zoloz.webcontainer.b.c("ZipUtil", "failed to create file " + str3);
                            } else {
                                FileOutputStream fileOutputStream = new FileOutputStream(str3);
                                byte[] bArr = new byte[FileUtil.STREAM_BUFFER_SIZE];
                                while (true) {
                                    int read = zipInputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                }
                                fileOutputStream.close();
                                zipInputStream.closeEntry();
                            }
                        }
                    } else {
                        zipInputStream.close();
                        return true;
                    }
                }
            } catch (Exception e2) {
                com.zoloz.webcontainer.b.a("unzip exception", e2);
                return false;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return false;
        }
    }
}
