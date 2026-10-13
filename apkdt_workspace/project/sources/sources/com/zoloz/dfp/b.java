package com.zoloz.dfp;

import android.os.Environment;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

/* compiled from: StorageUtils.java */
/* loaded from: classes2.dex */
public class b {
    public static void a(String str, String str2) {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM + str2);
        if (!externalStoragePublicDirectory.exists()) {
            externalStoragePublicDirectory.mkdirs();
        }
        File file = new File(externalStoragePublicDirectory, "config.txt");
        try {
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
            outputStreamWriter.append((CharSequence) str);
            outputStreamWriter.close();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            String str3 = "File write failed: " + e2.toString();
        }
    }

    public static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
                sb.append("\n");
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }

    public static String a(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        String a2 = a(fileInputStream);
        fileInputStream.close();
        return a2;
    }
}
