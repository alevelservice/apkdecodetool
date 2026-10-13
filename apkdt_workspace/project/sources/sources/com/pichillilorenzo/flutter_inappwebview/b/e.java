package com.pichillilorenzo.flutter_inappwebview.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: ContentBlockerTrigger.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public String f16576a;

    /* renamed from: b, reason: collision with root package name */
    public Pattern f16577b;

    /* renamed from: c, reason: collision with root package name */
    public List<f> f16578c;

    /* renamed from: d, reason: collision with root package name */
    public List<String> f16579d;

    /* renamed from: e, reason: collision with root package name */
    public List<String> f16580e;

    /* renamed from: f, reason: collision with root package name */
    public List<String> f16581f;

    /* renamed from: g, reason: collision with root package name */
    public List<String> f16582g;

    /* renamed from: h, reason: collision with root package name */
    public List<String> f16583h;

    public e(String str, Boolean bool, List<f> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6) {
        this.f16578c = new ArrayList();
        this.f16579d = new ArrayList();
        this.f16580e = new ArrayList();
        this.f16581f = new ArrayList();
        this.f16582g = new ArrayList();
        this.f16583h = new ArrayList();
        this.f16576a = str;
        this.f16577b = Pattern.compile(this.f16576a);
        this.f16578c = list == null ? this.f16578c : list;
        boolean z = false;
        Boolean.valueOf(bool != null ? bool.booleanValue() : false);
        this.f16579d = list2 == null ? this.f16579d : list2;
        this.f16580e = list3 == null ? this.f16580e : list3;
        if (!((this.f16579d.isEmpty() || this.f16580e.isEmpty()) ? false : true)) {
            this.f16581f = list4 == null ? this.f16581f : list4;
            if (this.f16581f.size() <= 2) {
                this.f16582g = list5 == null ? this.f16582g : list5;
                this.f16583h = list6 == null ? this.f16583h : list6;
                if (!this.f16582g.isEmpty() && !this.f16583h.isEmpty()) {
                    z = true;
                }
                if (z) {
                    throw new AssertionError();
                }
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static e a(Map<String, Object> map) {
        String str = (String) map.get("url-filter");
        Boolean bool = (Boolean) map.get("url-filter-is-case-sensitive");
        List list = (List) map.get("resource-type");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(f.fromValue((String) it.next()));
        }
        return new e(str, bool, arrayList, (List) map.get("if-domain"), (List) map.get("unless-domain"), (List) map.get("load-type"), (List) map.get("if-top-url"), (List) map.get("unless-top-url"));
    }
}
