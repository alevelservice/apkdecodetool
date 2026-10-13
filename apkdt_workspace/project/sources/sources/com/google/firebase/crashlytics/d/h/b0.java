package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: MetaDataStore.java */
/* loaded from: classes.dex */
class b0 {

    /* renamed from: b, reason: collision with root package name */
    private static final Charset f14408b = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    private final File f14409a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MetaDataStore.java */
    /* loaded from: classes.dex */
    public class a extends JSONObject {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ j0 f14410a;

        a(j0 j0Var) {
            this.f14410a = j0Var;
            put(HummerConstants.UID, this.f14410a.b());
        }
    }

    public b0(File file) {
        this.f14409a = file;
    }

    private static j0 d(String str) {
        JSONObject jSONObject = new JSONObject(str);
        j0 j0Var = new j0();
        j0Var.a(a(jSONObject, HummerConstants.UID));
        return j0Var;
    }

    public void a(String str, j0 j0Var) {
        String a2;
        BufferedWriter bufferedWriter;
        File b2 = b(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                a2 = a(j0Var);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(b2), f14408b));
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(a2);
            bufferedWriter.flush();
            h.a((Closeable) bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            com.google.firebase.crashlytics.d.b.a().b("Error serializing user metadata.", e);
            h.a((Closeable) bufferedWriter2, "Failed to close user metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            h.a((Closeable) bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }

    @NonNull
    public File b(String str) {
        return new File(this.f14409a, str + "user.meta");
    }

    public j0 c(String str) {
        FileInputStream fileInputStream;
        File b2 = b(str);
        if (!b2.exists()) {
            return new j0();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(b2);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            j0 d2 = d(h.a((InputStream) fileInputStream));
            h.a(fileInputStream, "Failed to close user metadata file.");
            return d2;
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            com.google.firebase.crashlytics.d.b.a().b("Error deserializing user metadata.", e);
            h.a(fileInputStream2, "Failed to close user metadata file.");
            return new j0();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            h.a(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void a(String str, Map<String, String> map) {
        String a2;
        BufferedWriter bufferedWriter;
        File a3 = a(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                a2 = a(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(a3), f14408b));
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(a2);
            bufferedWriter.flush();
            h.a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            com.google.firebase.crashlytics.d.b.a().b("Error serializing key/value metadata.", e);
            h.a((Closeable) bufferedWriter2, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            h.a((Closeable) bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    @NonNull
    public File a(String str) {
        return new File(this.f14409a, str + "keys.meta");
    }

    private static String a(j0 j0Var) {
        return new a(j0Var).toString();
    }

    private static String a(Map<String, String> map) {
        return new JSONObject(map).toString();
    }

    private static String a(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }
}
