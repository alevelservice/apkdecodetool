package com.mapbox.android.telemetry;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CertificateBlacklist.java */
/* loaded from: classes2.dex */
public class e implements m {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15561a;

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f15562b = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CertificateBlacklist.java */
    /* loaded from: classes2.dex */
    public class a extends com.google.gson.q.a<List<String>> {
        a(e eVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, n nVar) {
        this.f15561a = context;
        nVar.a(this);
        if (nVar.a()) {
            nVar.b();
        } else {
            a(context.getFilesDir(), false);
        }
    }

    private void a(File file, boolean z) {
        if (file.isDirectory()) {
            File file2 = new File(file, "MapboxBlacklist");
            if (file2.exists()) {
                try {
                    List<String> a2 = a(file2);
                    if (a2.isEmpty()) {
                        return;
                    }
                    if (z) {
                        this.f15562b.clear();
                    }
                    this.f15562b.addAll(a2);
                } catch (IOException e2) {
                    e2.getMessage();
                }
            }
        }
    }

    private static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Gson a2 = new com.google.gson.e().a();
        try {
            JsonElement jsonElement = ((JsonObject) a2.a(str, JsonObject.class)).get("RevokedCertKeys");
            JsonArray jsonArray = jsonElement.isJsonArray() ? (JsonArray) a2.a(jsonElement, JsonArray.class) : null;
            return jsonArray != null && jsonArray.size() > 0;
        } catch (com.google.gson.n e2) {
            e2.getMessage();
            return false;
        }
    }

    private boolean d(String str) {
        if (!c(str)) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    fileOutputStream = this.f15561a.openFileOutput("MapboxBlacklist", 0);
                    fileOutputStream.write(str.getBytes());
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    return true;
                } catch (IOException e2) {
                    e2.getMessage();
                    if (fileOutputStream == null) {
                        return false;
                    }
                    fileOutputStream.close();
                    return false;
                }
            } catch (Throwable th) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        e3.getMessage();
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e4.getMessage();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str) {
        return this.f15562b.contains(str);
    }

    private List<String> a(File file) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        Gson gson = new Gson();
        List<String> list = null;
        try {
            JsonObject jsonObject = (JsonObject) gson.a((Reader) bufferedReader, JsonObject.class);
            if (jsonObject != null) {
                list = (List) gson.a(jsonObject.getAsJsonArray("RevokedCertKeys").toString(), new a(this).getType());
            }
        } catch (com.google.gson.i | com.google.gson.n e2) {
            e2.getMessage();
        }
        bufferedReader.close();
        return list != null ? list : Collections.emptyList();
    }

    @Override // com.mapbox.android.telemetry.m
    public void a(String str) {
        if (d(str)) {
            a(this.f15561a.getFilesDir(), true);
        }
    }
}
