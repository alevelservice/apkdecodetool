package com.zoloz.webcontainer;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* compiled from: ResourceUtil.java */
/* loaded from: classes2.dex */
public class k {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.io.InputStream] */
    public static String a(Context context, int i2) {
        if (context == null) {
            return "";
        }
        ?? resources = context.getResources();
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                resources = resources.openRawResource(i2);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader((InputStream) resources, "UTF-8"));
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                        } catch (IOException e2) {
                            e = e2;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                    return "";
                                }
                            }
                            if (resources != 0) {
                                bufferedReader.close();
                            }
                            return "";
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                    throw th;
                                }
                            }
                            if (resources != 0) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    String sb2 = sb.toString();
                    try {
                        bufferedReader2.close();
                        if (resources != 0) {
                            bufferedReader2.close();
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    return sb2;
                } catch (IOException e6) {
                    e = e6;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e7) {
            e = e7;
            resources = 0;
        } catch (Throwable th3) {
            th = th3;
            resources = 0;
        }
    }
}
