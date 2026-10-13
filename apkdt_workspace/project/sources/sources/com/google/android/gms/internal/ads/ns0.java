package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ns0 {
    public final JSONObject A;
    public final boolean B;
    public final boolean C;
    public final boolean D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final int H;
    public final int I;
    public final boolean J;
    public final String K;
    public final JSONObject L;
    public final boolean M;
    public final boolean N;
    public final int O;
    public final boolean P;
    public final String Q;
    public final int R;

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f8415a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8416b;

    /* renamed from: c, reason: collision with root package name */
    public final List<String> f8417c;

    /* renamed from: d, reason: collision with root package name */
    public final List<String> f8418d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8419e;

    /* renamed from: f, reason: collision with root package name */
    public final List<String> f8420f;

    /* renamed from: g, reason: collision with root package name */
    public final List<String> f8421g;

    /* renamed from: h, reason: collision with root package name */
    public final List<String> f8422h;

    /* renamed from: i, reason: collision with root package name */
    public final List<String> f8423i;

    /* renamed from: j, reason: collision with root package name */
    public final String f8424j;

    /* renamed from: k, reason: collision with root package name */
    public final String f8425k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final zzaqd f8426l;
    public final List<String> m;
    public final List<String> n;
    public final List<ms0> o;

    @Nullable
    public final rs0 p;
    public final List<String> q;
    public final List<ms0> r;
    public final JSONObject s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;
    public final zzarn x;
    public final String y;
    public final JSONObject z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x038e. Please report as an issue. */
    public ns0(JsonReader jsonReader) {
        List<String> list;
        char c2;
        List<String> emptyList = Collections.emptyList();
        List<String> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        List<String> emptyList4 = Collections.emptyList();
        List<String> emptyList5 = Collections.emptyList();
        Collections.emptyList();
        List<String> emptyList6 = Collections.emptyList();
        List<String> emptyList7 = Collections.emptyList();
        List<String> emptyList8 = Collections.emptyList();
        List<String> emptyList9 = Collections.emptyList();
        List<ms0> emptyList10 = Collections.emptyList();
        List<String> emptyList11 = Collections.emptyList();
        List<ms0> emptyList12 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jsonReader.beginObject();
        List<String> list2 = emptyList11;
        List<ms0> list3 = emptyList12;
        JSONObject jSONObject5 = jSONObject;
        JSONObject jSONObject6 = jSONObject2;
        JSONObject jSONObject7 = jSONObject3;
        JSONObject jSONObject8 = jSONObject4;
        zzaqd zzaqdVar = null;
        rs0 rs0Var = null;
        zzarn zzarnVar = null;
        String str = "";
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int i2 = -1;
        int i3 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        int i4 = 0;
        boolean z10 = false;
        int i5 = -1;
        List<String> list4 = emptyList8;
        List<String> list5 = emptyList9;
        List<ms0> list6 = emptyList10;
        String str9 = str8;
        List<String> list7 = emptyList6;
        List<String> list8 = emptyList7;
        int i6 = 0;
        List<String> list9 = emptyList5;
        List<String> list10 = emptyList4;
        List<String> list11 = emptyList3;
        List<String> list12 = emptyList2;
        int i7 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str10 = nextName == null ? "" : nextName;
            List<ms0> list13 = list6;
            switch (str10.hashCode()) {
                case -1980587809:
                    list = list5;
                    if (str10.equals("debug_signals")) {
                        c2 = 26;
                        break;
                    }
                    break;
                case -1965512151:
                    list = list5;
                    if (str10.equals("omid_settings")) {
                        c2 = '&';
                        break;
                    }
                    break;
                case -1440104884:
                    list = list5;
                    if (str10.equals("is_custom_close_blocked")) {
                        c2 = ' ';
                        break;
                    }
                    break;
                case -1439500848:
                    list = list5;
                    if (str10.equals("orientation")) {
                        c2 = '\"';
                        break;
                    }
                    break;
                case -1428969291:
                    list = list5;
                    if (str10.equals("enable_omid")) {
                        c2 = '$';
                        break;
                    }
                    break;
                case -1403779768:
                    list = list5;
                    if (str10.equals("showable_impression_type")) {
                        c2 = ')';
                        break;
                    }
                    break;
                case -1360811658:
                    list = list5;
                    if (str10.equals("ad_sizes")) {
                        c2 = 17;
                        break;
                    }
                    break;
                case -1306015996:
                    list = list5;
                    if (str10.equals("adapters")) {
                        c2 = 18;
                        break;
                    }
                    break;
                case -1289032093:
                    list = list5;
                    if (str10.equals("extras")) {
                        c2 = 27;
                        break;
                    }
                    break;
                case -1234181075:
                    list = list5;
                    if (str10.equals("allow_pub_rendered_attribution")) {
                        c2 = 28;
                        break;
                    }
                    break;
                case -1181000426:
                    list = list5;
                    if (str10.equals("is_augmented_reality_ad")) {
                        c2 = '*';
                        break;
                    }
                    break;
                case -1152230954:
                    list = list5;
                    if (str10.equals("ad_type")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1146534047:
                    list = list5;
                    if (str10.equals("is_scroll_aware")) {
                        c2 = '(';
                        break;
                    }
                    break;
                case -1115838944:
                    list = list5;
                    if (str10.equals("fill_urls")) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case -1081936678:
                    list = list5;
                    if (str10.equals("allocation_id")) {
                        c2 = 19;
                        break;
                    }
                    break;
                case -1078050970:
                    list = list5;
                    if (str10.equals("video_complete_urls")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case -1051269058:
                    list = list5;
                    if (str10.equals("active_view")) {
                        c2 = 23;
                        break;
                    }
                    break;
                case -982608540:
                    list = list5;
                    if (str10.equals("valid_from_timestamp")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case -776859333:
                    list = list5;
                    if (str10.equals("click_urls")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -544216775:
                    list = list5;
                    if (str10.equals("safe_browsing")) {
                        c2 = 24;
                        break;
                    }
                    break;
                case -437057161:
                    list = list5;
                    if (str10.equals("imp_urls")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -404326515:
                    list = list5;
                    if (str10.equals("render_timeout_ms")) {
                        c2 = '#';
                        break;
                    }
                    break;
                case -397704715:
                    list = list5;
                    if (str10.equals("ad_close_time_ms")) {
                        c2 = '+';
                        break;
                    }
                    break;
                case -213424028:
                    list = list5;
                    if (str10.equals("watermark")) {
                        c2 = ',';
                        break;
                    }
                    break;
                case -29338502:
                    list = list5;
                    if (str10.equals("allow_custom_click_gesture")) {
                        c2 = 30;
                        break;
                    }
                    break;
                case 3107:
                    list = list5;
                    if (str10.equals("ad")) {
                        c2 = 16;
                        break;
                    }
                    break;
                case 3355:
                    list = list5;
                    if (str10.equals("id")) {
                        c2 = 21;
                        break;
                    }
                    break;
                case 3076010:
                    list = list5;
                    if (str10.equals(Constants$ScionAnalytics$MessageType.DATA_MESSAGE)) {
                        c2 = 20;
                        break;
                    }
                    break;
                case 63195984:
                    list = list5;
                    if (str10.equals("render_test_label")) {
                        c2 = 31;
                        break;
                    }
                    break;
                case 107433883:
                    list = list5;
                    if (str10.equals("qdata")) {
                        c2 = 22;
                        break;
                    }
                    break;
                case 230323073:
                    list = list5;
                    if (str10.equals("ad_load_urls")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 418392395:
                    list = list5;
                    if (str10.equals("is_closable_area_disabled")) {
                        c2 = '!';
                        break;
                    }
                    break;
                case 597473788:
                    list = list5;
                    if (str10.equals("debug_dialog_string")) {
                        c2 = 25;
                        break;
                    }
                    break;
                case 673261304:
                    list = list5;
                    if (str10.equals("reward_granted_urls")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 754887508:
                    list = list5;
                    if (str10.equals("container_sizes")) {
                        c2 = 15;
                        break;
                    }
                    break;
                case 791122864:
                    list = list5;
                    if (str10.equals("impression_type")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 1010584092:
                    list = list5;
                    if (str10.equals("transaction_id")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 1100650276:
                    list = list5;
                    if (str10.equals("rewards")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 1321720943:
                    list = list5;
                    if (str10.equals("allow_pub_owned_ad_view")) {
                        c2 = 29;
                        break;
                    }
                    break;
                case 1637553475:
                    list = list5;
                    if (str10.equals("bid_response")) {
                        c2 = '%';
                        break;
                    }
                    break;
                case 1638957285:
                    list = list5;
                    if (str10.equals("video_start_urls")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 1688341040:
                    list = list5;
                    if (str10.equals("video_reward_urls")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 1839650832:
                    list = list5;
                    if (str10.equals("renderers")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1875425491:
                    list = list5;
                    if (str10.equals("is_analytics_logging_enabled")) {
                        c2 = '\'';
                        break;
                    }
                    break;
                case 2072888499:
                    list = list5;
                    if (str10.equals("manual_tracking_urls")) {
                        c2 = 14;
                        break;
                    }
                    break;
                default:
                    list = list5;
                    break;
            }
            c2 = 65535;
            switch (c2) {
                case 0:
                    emptyList = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 1:
                    String nextString = jsonReader.nextString();
                    if ("banner".equals(nextString)) {
                        i7 = 1;
                    } else if ("interstitial".equals(nextString)) {
                        i7 = 2;
                    } else if ("native_express".equals(nextString)) {
                        i7 = 3;
                    } else if ("native".equals(nextString)) {
                        i7 = 4;
                    } else {
                        i7 = "rewarded".equals(nextString) ? 5 : 0;
                    }
                    list6 = list13;
                    list5 = list;
                    break;
                case 2:
                    list12 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 3:
                    list11 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 4:
                    list10 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 5:
                    i6 = jsonReader.nextInt();
                    if (i6 != 0 && i6 != 1) {
                        i6 = 0;
                    }
                    list6 = list13;
                    list5 = list;
                    break;
                case 6:
                    list9 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 7:
                    nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case '\b':
                    list7 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case '\t':
                    list8 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case '\n':
                    str9 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case 11:
                    str = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case '\f':
                    zzaqdVar = zzaqd.a(nc.d(jsonReader));
                    list6 = list13;
                    list5 = list;
                    break;
                case '\r':
                    list4 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 14:
                    list5 = nc.a(jsonReader);
                    list6 = list13;
                    break;
                case 15:
                    list6 = ms0.a(jsonReader);
                    list5 = list;
                    break;
                case 16:
                    rs0Var = new rs0(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 17:
                    list3 = ms0.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 18:
                    list2 = nc.a(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 19:
                    str2 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case 20:
                    jSONObject5 = nc.c(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 21:
                    str3 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case 22:
                    str4 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case 23:
                    str5 = nc.c(jsonReader).toString();
                    list6 = list13;
                    list5 = list;
                    break;
                case 24:
                    zzarnVar = zzarn.a(nc.c(jsonReader));
                    list6 = list13;
                    list5 = list;
                    break;
                case 25:
                    str6 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case 26:
                    jSONObject6 = nc.c(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 27:
                    jSONObject7 = nc.c(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case 28:
                    z = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case 29:
                    z2 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case 30:
                    z3 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case 31:
                    z4 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case ' ':
                    z5 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case '!':
                    z6 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case '\"':
                    String nextString2 = jsonReader.nextString();
                    if ("landscape".equalsIgnoreCase(nextString2)) {
                        com.google.android.gms.ads.internal.n.e();
                        i2 = 6;
                    } else if ("portrait".equalsIgnoreCase(nextString2)) {
                        com.google.android.gms.ads.internal.n.e();
                        i2 = 7;
                    } else {
                        i2 = -1;
                    }
                    list6 = list13;
                    list5 = list;
                    break;
                case '#':
                    i3 = jsonReader.nextInt();
                    list6 = list13;
                    list5 = list;
                    break;
                case '$':
                    z7 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case '%':
                    str7 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                case '&':
                    jSONObject8 = nc.c(jsonReader);
                    list6 = list13;
                    list5 = list;
                    break;
                case '\'':
                    z8 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case '(':
                    z9 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case ')':
                    i4 = jsonReader.nextInt();
                    list6 = list13;
                    list5 = list;
                    break;
                case '*':
                    z10 = jsonReader.nextBoolean();
                    list6 = list13;
                    list5 = list;
                    break;
                case '+':
                    i5 = jsonReader.nextInt();
                    list6 = list13;
                    list5 = list;
                    break;
                case ',':
                    str8 = jsonReader.nextString();
                    list6 = list13;
                    list5 = list;
                    break;
                default:
                    jsonReader.skipValue();
                    list6 = list13;
                    list5 = list;
                    break;
            }
        }
        jsonReader.endObject();
        this.f8415a = emptyList;
        this.f8416b = i7;
        this.f8417c = list12;
        this.f8418d = list11;
        this.f8420f = list10;
        this.f8419e = i6;
        this.f8421g = list9;
        this.f8422h = list7;
        this.f8423i = list8;
        this.f8424j = str9;
        this.f8425k = str;
        this.f8426l = zzaqdVar;
        this.m = list4;
        this.n = list5;
        this.o = list6;
        this.p = rs0Var;
        this.q = list2;
        this.r = list3;
        this.t = str2;
        this.s = jSONObject5;
        this.u = str3;
        this.v = str4;
        this.w = str5;
        this.x = zzarnVar;
        this.y = str6;
        this.z = jSONObject6;
        this.A = jSONObject7;
        this.B = z;
        this.C = z2;
        this.D = z3;
        this.E = z4;
        this.F = z5;
        this.G = z6;
        this.H = i2;
        this.I = i3;
        this.J = z7;
        this.K = str7;
        this.L = jSONObject8;
        this.M = z8;
        this.N = z9;
        this.O = i4;
        this.P = z10;
        this.Q = str8;
        this.R = i5;
    }
}
