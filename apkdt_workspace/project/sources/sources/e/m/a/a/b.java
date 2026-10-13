package e.m.a.a;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Locale;

/* compiled from: MapboxSdkInfoForUserAgentGenerator.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static b f18015b;

    /* renamed from: c, reason: collision with root package name */
    private static final Object f18016c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private static final Locale f18017d = Locale.US;

    /* renamed from: a, reason: collision with root package name */
    private String f18018a;

    private b(AssetManager assetManager) {
        this.f18018a = a(assetManager);
    }

    public static b b(@NonNull AssetManager assetManager) {
        if (f18015b == null) {
            synchronized (f18016c) {
                f18015b = new b(assetManager);
            }
        }
        return f18015b;
    }

    @RestrictTo({RestrictTo.a.LIBRARY})
    @VisibleForTesting
    String a(@NonNull AssetManager assetManager) {
        StringBuilder sb = new StringBuilder("");
        try {
            String[] list = assetManager.list("sdk_versions");
            if (list != null) {
                for (String str : list) {
                    if (str.contains("mapbox")) {
                        InputStream inputStream = null;
                        try {
                            try {
                                inputStream = assetManager.open("sdk_versions" + File.separator + str);
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    readLine = "";
                                }
                                StringBuilder sb2 = new StringBuilder("");
                                while (true) {
                                    String readLine2 = bufferedReader.readLine();
                                    if (readLine2 == null) {
                                        break;
                                    }
                                    sb2.append("; ");
                                    sb2.append(readLine2);
                                }
                                bufferedReader.close();
                                sb.append(String.format(f18017d, " %s (%s%s)", readLine, str, sb2.toString()));
                            } catch (IOException e2) {
                                e2.toString();
                            }
                            a.a(inputStream);
                        } finally {
                        }
                    }
                }
            }
        } catch (IOException e3) {
            e3.toString();
        }
        return sb.toString().trim();
    }

    public String a() {
        return this.f18018a;
    }
}
