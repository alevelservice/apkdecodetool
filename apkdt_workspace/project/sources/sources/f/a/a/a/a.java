package f.a.a.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: Contact.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    String f18190a;

    /* renamed from: b, reason: collision with root package name */
    String f18191b;

    /* renamed from: c, reason: collision with root package name */
    ArrayList<c> f18192c = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str) {
        this.f18190a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, Object> a() {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("identifier", this.f18190a);
        hashMap.put("displayName", this.f18191b);
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = this.f18192c.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        hashMap.put("phones", arrayList);
        return hashMap;
    }

    private a() {
    }
}
