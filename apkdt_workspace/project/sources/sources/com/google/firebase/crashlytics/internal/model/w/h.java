package com.google.firebase.crashlytics.internal.model.w;

import android.util.Base64;
import android.util.JsonReader;
import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.v;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import com.zoloz.builder.plugin.HummerFoundationLite;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;

/* compiled from: CrashlyticsReportJsonTransform.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final com.google.firebase.m.a f14950a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CrashlyticsReportJsonTransform.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        T a(@NonNull JsonReader jsonReader);
    }

    static {
        com.google.firebase.m.j.d dVar = new com.google.firebase.m.j.d();
        dVar.a(com.google.firebase.crashlytics.internal.model.a.f14748a);
        dVar.a(true);
        f14950a = dVar.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001b. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.a h(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.a.AbstractC0120a h2 = CrashlyticsReport.d.a.h();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                h2.d(jsonReader.nextString());
            } else if (c2 == 1) {
                h2.f(jsonReader.nextString());
            } else if (c2 == 2) {
                h2.c(jsonReader.nextString());
            } else if (c2 == 3) {
                h2.e(jsonReader.nextString());
            } else if (c2 == 4) {
                h2.a(jsonReader.nextString());
            } else if (c2 != 5) {
                jsonReader.skipValue();
            } else {
                h2.b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return h2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static CrashlyticsReport.b i(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.b.a c2 = CrashlyticsReport.b.c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c3 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 106079) {
                if (hashCode == 111972721 && nextName.equals(HummerConstants.VALUE)) {
                    c3 = 1;
                }
            } else if (nextName.equals("key")) {
                c3 = 0;
            }
            if (c3 == 0) {
                c2.a(jsonReader.nextString());
            } else if (c3 != 1) {
                jsonReader.skipValue();
            } else {
                c2.b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return c2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.c j(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.c.a j2 = CrashlyticsReport.d.c.j();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals("manufacturer")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals("model")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals("state")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        c2 = '\b';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    j2.a(jsonReader.nextInt());
                    break;
                case 1:
                    j2.b(jsonReader.nextString());
                    break;
                case 2:
                    j2.b(jsonReader.nextInt());
                    break;
                case 3:
                    j2.b(jsonReader.nextLong());
                    break;
                case 4:
                    j2.a(jsonReader.nextLong());
                    break;
                case 5:
                    j2.a(jsonReader.nextBoolean());
                    break;
                case 6:
                    j2.c(jsonReader.nextInt());
                    break;
                case 7:
                    j2.a(jsonReader.nextString());
                    break;
                case '\b':
                    j2.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return j2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    @NonNull
    public static CrashlyticsReport.d.AbstractC0121d k(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.b g2 = CrashlyticsReport.d.AbstractC0121d.g();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals(HummerFoundationLite.HUMMER_FOUNDATION_LOG)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals("timestamp")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                g2.a(jsonReader.nextLong());
            } else if (c2 == 1) {
                g2.a(jsonReader.nextString());
            } else if (c2 == 2) {
                g2.a(l(jsonReader));
            } else if (c2 == 3) {
                g2.a(n(jsonReader));
            } else if (c2 != 4) {
                jsonReader.skipValue();
            } else {
                g2.a(r(jsonReader));
            }
        }
        jsonReader.endObject();
        return g2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.AbstractC0121d.a l(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a f2 = CrashlyticsReport.d.AbstractC0121d.a.f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals("background")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        c2 = 1;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                f2.a(Boolean.valueOf(jsonReader.nextBoolean()));
            } else if (c2 == 1) {
                f2.a(jsonReader.nextInt());
            } else if (c2 == 2) {
                f2.a(o(jsonReader));
            } else if (c2 != 3) {
                jsonReader.skipValue();
            } else {
                f2.a(a(jsonReader, c.a()));
            }
        }
        jsonReader.endObject();
        return f2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    @NonNull
    public static CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a m(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a f2 = CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals("name")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        c2 = 1;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                f2.a(jsonReader.nextString());
            } else if (c2 == 1) {
                f2.a(jsonReader.nextLong());
            } else if (c2 == 2) {
                f2.b(jsonReader.nextLong());
            } else if (c2 != 3) {
                jsonReader.skipValue();
            } else {
                f2.a(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return f2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001b. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.AbstractC0121d.c n(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.c.a g2 = CrashlyticsReport.d.AbstractC0121d.c.g();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                g2.a(Double.valueOf(jsonReader.nextDouble()));
            } else if (c2 == 1) {
                g2.a(jsonReader.nextInt());
            } else if (c2 == 2) {
                g2.a(jsonReader.nextLong());
            } else if (c2 == 3) {
                g2.a(jsonReader.nextBoolean());
            } else if (c2 == 4) {
                g2.b(jsonReader.nextInt());
            } else if (c2 != 5) {
                jsonReader.skipValue();
            } else {
                g2.b(jsonReader.nextLong());
            }
        }
        jsonReader.endObject();
        return g2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.AbstractC0121d.a.b o(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b e2 = CrashlyticsReport.d.AbstractC0121d.a.b.e();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1337936983:
                    if (nextName.equals("threads")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals(HummerConstants.NORMAL_EXCEPTION)) {
                        c2 = 1;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                e2.b(a(jsonReader, d.a()));
            } else if (c2 == 1) {
                e2.a(p(jsonReader));
            } else if (c2 == 2) {
                e2.a(s(jsonReader));
            } else if (c2 != 3) {
                jsonReader.skipValue();
            } else {
                e2.a(a(jsonReader, e.a()));
            }
        }
        jsonReader.endObject();
        return e2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.AbstractC0121d.a.b.c p(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a f2 = CrashlyticsReport.d.AbstractC0121d.a.b.c.f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals(ZdocRecordService.REASON)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                f2.a(p(jsonReader));
            } else if (c2 == 1) {
                f2.a(a(jsonReader, f.a()));
            } else if (c2 == 2) {
                f2.a(jsonReader.nextInt());
            } else if (c2 == 3) {
                f2.b(jsonReader.nextString());
            } else if (c2 != 4) {
                jsonReader.skipValue();
            } else {
                f2.a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return f2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    @NonNull
    public static CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b q(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a f2 = CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals("offset")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals("file")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                f2.a(jsonReader.nextInt());
            } else if (c2 == 1) {
                f2.a(jsonReader.nextString());
            } else if (c2 == 2) {
                f2.a(jsonReader.nextLong());
            } else if (c2 == 3) {
                f2.b(jsonReader.nextLong());
            } else if (c2 != 4) {
                jsonReader.skipValue();
            } else {
                f2.b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return f2.a();
    }

    @NonNull
    private static CrashlyticsReport.d.AbstractC0121d.AbstractC0132d r(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.a b2 = CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            if (nextName.hashCode() == 951530617 && nextName.equals("content")) {
                c2 = 0;
            }
            if (c2 != 0) {
                jsonReader.skipValue();
            } else {
                b2.a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return b2.a();
    }

    @NonNull
    private static CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d s(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a d2 = CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -1147692044) {
                if (hashCode != 3059181) {
                    if (hashCode == 3373707 && nextName.equals("name")) {
                        c2 = 0;
                    }
                } else if (nextName.equals(HummerConstants.CODE)) {
                    c2 = 1;
                }
            } else if (nextName.equals("address")) {
                c2 = 2;
            }
            if (c2 == 0) {
                d2.b(jsonReader.nextString());
            } else if (c2 == 1) {
                d2.a(jsonReader.nextString());
            } else if (c2 != 2) {
                jsonReader.skipValue();
            } else {
                d2.a(jsonReader.nextLong());
            }
        }
        jsonReader.endObject();
        return d2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static CrashlyticsReport.d.AbstractC0121d.a.b.e t(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a d2 = CrashlyticsReport.d.AbstractC0121d.a.b.e.d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -1266514778) {
                if (hashCode != 3373707) {
                    if (hashCode == 2125650548 && nextName.equals("importance")) {
                        c2 = 0;
                    }
                } else if (nextName.equals("name")) {
                    c2 = 1;
                }
            } else if (nextName.equals("frames")) {
                c2 = 2;
            }
            if (c2 == 0) {
                d2.a(jsonReader.nextInt());
            } else if (c2 == 1) {
                d2.a(jsonReader.nextString());
            } else if (c2 != 2) {
                jsonReader.skipValue();
            } else {
                d2.a(a(jsonReader, g.a()));
            }
        }
        jsonReader.endObject();
        return d2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static CrashlyticsReport.c.b u(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.c.b.a c2 = CrashlyticsReport.c.b.c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c3 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -734768633) {
                if (hashCode == -567321830 && nextName.equals("contents")) {
                    c3 = 1;
                }
            } else if (nextName.equals("filename")) {
                c3 = 0;
            }
            if (c3 == 0) {
                c2.a(jsonReader.nextString());
            } else if (c3 != 1) {
                jsonReader.skipValue();
            } else {
                c2.a(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return c2.a();
    }

    @NonNull
    private static CrashlyticsReport.c v(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.c.a c2 = CrashlyticsReport.c.c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c3 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 97434231) {
                if (hashCode == 106008351 && nextName.equals("orgId")) {
                    c3 = 1;
                }
            } else if (nextName.equals("files")) {
                c3 = 0;
            }
            if (c3 == 0) {
                c2.a(a(jsonReader, b.a()));
            } else if (c3 != 1) {
                jsonReader.skipValue();
            } else {
                c2.a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return c2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d.e w(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.e.a e2 = CrashlyticsReport.d.e.e();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                e2.a(jsonReader.nextInt());
            } else if (c2 == 1) {
                e2.b(jsonReader.nextString());
            } else if (c2 == 2) {
                e2.a(jsonReader.nextString());
            } else if (c2 != 3) {
                jsonReader.skipValue();
            } else {
                e2.a(jsonReader.nextBoolean());
            }
        }
        jsonReader.endObject();
        return e2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport x(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.a l2 = CrashlyticsReport.l();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        c2 = 6;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    l2.e(jsonReader.nextString());
                    break;
                case 1:
                    l2.c(jsonReader.nextString());
                    break;
                case 2:
                    l2.a(jsonReader.nextInt());
                    break;
                case 3:
                    l2.d(jsonReader.nextString());
                    break;
                case 4:
                    l2.a(jsonReader.nextString());
                    break;
                case 5:
                    l2.b(jsonReader.nextString());
                    break;
                case 6:
                    l2.a(y(jsonReader));
                    break;
                case 7:
                    l2.a(v(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return l2.a();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0017. Please report as an issue. */
    @NonNull
    private static CrashlyticsReport.d y(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.b n = CrashlyticsReport.d.n();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals("events")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        c2 = '\n';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    n.a(jsonReader.nextString());
                    break;
                case 1:
                    n.a(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 2:
                    n.a(jsonReader.nextLong());
                    break;
                case 3:
                    n.a(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 4:
                    n.a(jsonReader.nextBoolean());
                    break;
                case 5:
                    n.a(z(jsonReader));
                    break;
                case 6:
                    n.a(h(jsonReader));
                    break;
                case 7:
                    n.a(w(jsonReader));
                    break;
                case '\b':
                    n.a(j(jsonReader));
                    break;
                case '\t':
                    n.a(a(jsonReader, com.google.firebase.crashlytics.internal.model.w.a.a()));
                    break;
                case '\n':
                    n.a(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return n.a();
    }

    @NonNull
    private static CrashlyticsReport.d.f z(@NonNull JsonReader jsonReader) {
        CrashlyticsReport.d.f.a b2 = CrashlyticsReport.d.f.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            if (nextName.hashCode() == -1618432855 && nextName.equals("identifier")) {
                c2 = 0;
            }
            if (c2 != 0) {
                jsonReader.skipValue();
            } else {
                b2.a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return b2.a();
    }

    @NonNull
    public String a(@NonNull CrashlyticsReport crashlyticsReport) {
        return f14950a.a(crashlyticsReport);
    }

    @NonNull
    public CrashlyticsReport b(@NonNull String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                CrashlyticsReport x = x(jsonReader);
                jsonReader.close();
                return x;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IllegalStateException e2) {
            throw new IOException(e2);
        }
    }

    @NonNull
    public String a(@NonNull CrashlyticsReport.d.AbstractC0121d abstractC0121d) {
        return f14950a.a(abstractC0121d);
    }

    @NonNull
    public CrashlyticsReport.d.AbstractC0121d a(@NonNull String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                CrashlyticsReport.d.AbstractC0121d k2 = k(jsonReader);
                jsonReader.close();
                return k2;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IllegalStateException e2) {
            throw new IOException(e2);
        }
    }

    @NonNull
    private static <T> v<T> a(@NonNull JsonReader jsonReader, @NonNull a<T> aVar) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return v.a(arrayList);
    }
}
