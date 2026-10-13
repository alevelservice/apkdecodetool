package com.google.firebase.installations.q;

import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.installations.q.d;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PersistedInstallation.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private final File f15101a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final com.google.firebase.c f15102b;

    /* compiled from: PersistedInstallation.java */
    /* loaded from: classes.dex */
    public enum a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public c(@NonNull com.google.firebase.c cVar) {
        this.f15101a = new File(cVar.b().getFilesDir(), "PersistedInstallation." + cVar.e() + HummerConstants.JSON);
        this.f15102b = cVar;
    }

    private JSONObject b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f15101a);
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, bArr.length);
                    if (read < 0) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        fileInputStream.close();
                        return jSONObject;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
        } catch (IOException | JSONException unused2) {
            return new JSONObject();
        }
    }

    @NonNull
    public d a() {
        JSONObject b2 = b();
        String optString = b2.optString("Fid", null);
        int optInt = b2.optInt("Status", a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = b2.optString("AuthToken", null);
        String optString3 = b2.optString("RefreshToken", null);
        long optLong = b2.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = b2.optLong("ExpiresInSecs", 0L);
        String optString4 = b2.optString("FisError", null);
        d.a p = d.p();
        p.b(optString);
        p.a(a.values()[optInt]);
        p.a(optString2);
        p.d(optString3);
        p.b(optLong);
        p.a(optLong2);
        p.c(optString4);
        return p.a();
    }

    @NonNull
    public d a(@NonNull d dVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", dVar.c());
            jSONObject.put("Status", dVar.f().ordinal());
            jSONObject.put("AuthToken", dVar.a());
            jSONObject.put("RefreshToken", dVar.e());
            jSONObject.put("TokenCreationEpochInSecs", dVar.g());
            jSONObject.put("ExpiresInSecs", dVar.b());
            jSONObject.put("FisError", dVar.d());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f15102b.b().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (createTempFile.renameTo(this.f15101a)) {
            return dVar;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }
}
