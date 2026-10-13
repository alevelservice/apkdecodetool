package e.m.a.a.c;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CrashReport.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final JSONObject f18019a = new JSONObject();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Calendar calendar) {
        a("event", "mobile.crash");
        a("created", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US).format(Long.valueOf(calendar.getTimeInMillis())));
    }

    public synchronized void a(@NonNull String str, @Nullable String str2) {
        if (str2 == null) {
            b(str);
            return;
        }
        try {
            this.f18019a.put(str, str2);
        } catch (JSONException unused) {
            String str3 = "Failed json encode value: " + String.valueOf(str2);
        }
    }

    @NonNull
    public String b() {
        return this.f18019a.toString();
    }

    private void b(@NonNull String str) {
        try {
            this.f18019a.put(str, "null");
        } catch (JSONException unused) {
        }
    }

    @NonNull
    public String a() {
        return a("created");
    }

    @NonNull
    @VisibleForTesting
    String a(@NonNull String str) {
        return this.f18019a.optString(str);
    }
}
