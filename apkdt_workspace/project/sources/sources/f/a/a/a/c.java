package f.a.a.a;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.HashMap;

/* compiled from: Item.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public String f18197a;

    /* renamed from: b, reason: collision with root package name */
    public String f18198b;

    public c(String str, String str2) {
        this.f18197a = str;
        this.f18198b = str2;
    }

    public static String a(int i2) {
        if (i2 == 10) {
            return "company";
        }
        if (i2 == 12) {
            return "main";
        }
        switch (i2) {
            case 1:
                return "home";
            case 2:
                return "mobile";
            case 3:
                return "work";
            case 4:
                return "fax work";
            case 5:
                return "fax home";
            case 6:
                return "pager";
            default:
                return "other";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, String> a() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("label", this.f18197a);
        hashMap.put(HummerConstants.VALUE, this.f18198b);
        return hashMap;
    }
}
