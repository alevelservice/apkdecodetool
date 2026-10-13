package e.n.a;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: SqlCommand.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final String f18162a;

    /* renamed from: b, reason: collision with root package name */
    private final List<Object> f18163b;

    public d(String str, List<Object> list) {
        this.f18162a = str;
        this.f18163b = list == null ? new ArrayList<>() : list;
    }

    private String[] a(List<Object> list) {
        return (String[]) c(list).toArray(new String[0]);
    }

    private static Object b(Object obj) {
        if (obj == null) {
            return null;
        }
        if (e.n.a.e.a.f18166c) {
            String str = "arg " + obj.getClass().getCanonicalName() + HanziToPinyin.Token.SEPARATOR + a(obj);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            byte[] bArr = new byte[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                bArr[i2] = (byte) ((Integer) list.get(i2)).intValue();
            }
            obj = bArr;
        }
        if (e.n.a.e.a.f18166c) {
            String str2 = "arg " + obj.getClass().getCanonicalName() + HanziToPinyin.Token.SEPARATOR + a(obj);
        }
        return obj;
    }

    public String c() {
        return this.f18162a;
    }

    public Object[] d() {
        return b(this.f18163b);
    }

    public d e() {
        if (this.f18163b.size() == 0) {
            return this;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        int length = this.f18162a.length();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = this.f18162a.charAt(i4);
            if (charAt == '?') {
                int i5 = i4 + 1;
                if (i5 < length && Character.isDigit(this.f18162a.charAt(i5))) {
                    return this;
                }
                i2++;
                if (i3 >= this.f18163b.size()) {
                    return this;
                }
                int i6 = i3 + 1;
                Object obj = this.f18163b.get(i3);
                if (!(obj instanceof Integer) && !(obj instanceof Long)) {
                    arrayList.add(obj);
                    i3 = i6;
                } else {
                    sb.append(obj.toString());
                    i3 = i6;
                }
            }
            sb.append(charAt);
        }
        return i2 != this.f18163b.size() ? this : new d(sb.toString(), arrayList);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f18162a;
        if (str != null) {
            if (!str.equals(dVar.f18162a)) {
                return false;
            }
        } else if (dVar.f18162a != null) {
            return false;
        }
        if (this.f18163b.size() != dVar.f18163b.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.f18163b.size(); i2++) {
            if ((this.f18163b.get(i2) instanceof byte[]) && (dVar.f18163b.get(i2) instanceof byte[])) {
                if (!Arrays.equals((byte[]) this.f18163b.get(i2), (byte[]) dVar.f18163b.get(i2))) {
                    return false;
                }
            } else if (!this.f18163b.get(i2).equals(dVar.f18163b.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        String str = this.f18162a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18162a);
        List<Object> list = this.f18163b;
        if (list == null || list.isEmpty()) {
            str = "";
        } else {
            str = HanziToPinyin.Token.SEPARATOR + c(this.f18163b);
        }
        sb.append(str);
        return sb.toString();
    }

    private static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            ArrayList arrayList = new ArrayList();
            for (byte b2 : (byte[]) obj) {
                arrayList.add(Integer.valueOf(b2));
            }
            return arrayList.toString();
        }
        if (obj instanceof Map) {
            return a((Map<Object, Object>) obj).toString();
        }
        return obj.toString();
    }

    private List<String> c(List<Object> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<Object> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
        }
        return arrayList;
    }

    private Object[] b(List<Object> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<Object> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(b(it.next()));
            }
        }
        return arrayList.toArray(new Object[0]);
    }

    private static Map<String, Object> a(Map<Object, Object> map) {
        Object a2;
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Map) {
                a2 = a((Map<Object, Object>) value);
            } else {
                a2 = a(value);
            }
            hashMap.put(a(entry.getKey()), a2);
        }
        return hashMap;
    }

    public List<Object> b() {
        return this.f18163b;
    }

    public String[] a() {
        return a(this.f18163b);
    }
}
