package io.flutter.embedding.engine.f;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import androidx.annotation.NonNull;
import java.io.IOException;
import org.json.JSONArray;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ApplicationInfoLoader.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    static final String f19047a = c.class.getName() + ".aot-shared-library-name";

    /* renamed from: b, reason: collision with root package name */
    static final String f19048b = c.class.getName() + ".vm-snapshot-data";

    /* renamed from: c, reason: collision with root package name */
    static final String f19049c = c.class.getName() + ".isolate-snapshot-data";

    /* renamed from: d, reason: collision with root package name */
    static final String f19050d = c.class.getName() + ".flutter-assets-dir";

    @NonNull
    private static ApplicationInfo a(@NonNull Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void b(XmlResourceParser xmlResourceParser, JSONArray jSONArray, boolean z) {
        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "cleartextTrafficPermitted", z);
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                if (xmlResourceParser.getName().equals("domain")) {
                    a(xmlResourceParser, jSONArray, attributeBooleanValue);
                } else if (xmlResourceParser.getName().equals("domain-config")) {
                    b(xmlResourceParser, jSONArray, attributeBooleanValue);
                } else {
                    a(xmlResourceParser);
                }
            } else if (next == 3) {
                return;
            }
        }
    }

    private static String a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        return bundle.getString(str, null);
    }

    private static String a(ApplicationInfo applicationInfo, Context context) {
        int i2;
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i2 = bundle.getInt("io.flutter.network-policy", 0)) <= 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            XmlResourceParser xml = context.getResources().getXml(i2);
            xml.next();
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    if (xml.getName().equals("domain-config")) {
                        b(xml, jSONArray, false);
                    }
                }
            }
            return jSONArray.toString();
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    @NonNull
    public static b b(@NonNull Context context) {
        ApplicationInfo a2 = a(context);
        return new b(a(a2.metaData, f19047a), a(a2.metaData, f19048b), a(a2.metaData, f19049c), a(a2.metaData, f19050d), a(a2, context), a2.nativeLibraryDir, Build.VERSION.SDK_INT >= 23 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : true);
    }

    private static void a(XmlResourceParser xmlResourceParser) {
        String name = xmlResourceParser.getName();
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            if (eventType == 3 && xmlResourceParser.getName() == name) {
                return;
            } else {
                eventType = xmlResourceParser.next();
            }
        }
    }

    private static void a(XmlResourceParser xmlResourceParser, JSONArray jSONArray, boolean z) {
        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "includeSubdomains", false);
        xmlResourceParser.next();
        if (xmlResourceParser.getEventType() == 4) {
            String trim = xmlResourceParser.getText().trim();
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(trim);
            jSONArray2.put(attributeBooleanValue);
            jSONArray2.put(z);
            jSONArray.put(jSONArray2);
            xmlResourceParser.next();
            if (xmlResourceParser.getEventType() != 3) {
                throw new IllegalStateException("Expected end of domain tag");
            }
            return;
        }
        throw new IllegalStateException("Expected text");
    }
}
