package k.b.a.v;

import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleDateTimeTextProvider.java */
/* loaded from: classes2.dex */
public final class k extends g {

    /* renamed from: c, reason: collision with root package name */
    private static final Comparator<Map.Entry<String, Long>> f19866c = new a();

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Map.Entry<k.b.a.x.i, Locale>, Object> f19867b = new ConcurrentHashMap(16, 0.75f, 2);

    /* compiled from: SimpleDateTimeTextProvider.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<Map.Entry<String, Long>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return entry2.getKey().length() - entry.getKey().length();
        }
    }

    private Object b(k.b.a.x.i iVar, Locale locale) {
        Map.Entry<k.b.a.x.i, Locale> b2 = b(iVar, locale);
        Object obj = this.f19867b.get(b2);
        if (obj != null) {
            return obj;
        }
        this.f19867b.putIfAbsent(b2, a(iVar, locale));
        return this.f19867b.get(b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleDateTimeTextProvider.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final Map<l, Map<Long, String>> f19868a;

        /* renamed from: b, reason: collision with root package name */
        private final Map<l, List<Map.Entry<String, Long>>> f19869b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Map<l, Map<Long, String>> map) {
            this.f19868a = map;
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (l lVar : map.keySet()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<Long, String> entry : map.get(lVar).entrySet()) {
                    hashMap2.put(entry.getValue(), k.b(entry.getValue(), entry.getKey()));
                }
                ArrayList arrayList2 = new ArrayList(hashMap2.values());
                Collections.sort(arrayList2, k.f19866c);
                hashMap.put(lVar, arrayList2);
                arrayList.addAll(arrayList2);
                hashMap.put(null, arrayList);
            }
            Collections.sort(arrayList, k.f19866c);
            this.f19869b = hashMap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String a(long j2, l lVar) {
            Map<Long, String> map = this.f19868a.get(lVar);
            if (map != null) {
                return map.get(Long.valueOf(j2));
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Iterator<Map.Entry<String, Long>> a(l lVar) {
            List<Map.Entry<String, Long>> list = this.f19869b.get(lVar);
            if (list != null) {
                return list.iterator();
            }
            return null;
        }
    }

    @Override // k.b.a.v.g
    public String a(k.b.a.x.i iVar, long j2, l lVar, Locale locale) {
        Object b2 = b(iVar, locale);
        if (b2 instanceof b) {
            return ((b) b2).a(j2, lVar);
        }
        return null;
    }

    @Override // k.b.a.v.g
    public Iterator<Map.Entry<String, Long>> a(k.b.a.x.i iVar, l lVar, Locale locale) {
        Object b2 = b(iVar, locale);
        if (b2 instanceof b) {
            return ((b) b2).a(lVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <A, B> Map.Entry<A, B> b(A a2, B b2) {
        return new AbstractMap.SimpleImmutableEntry(a2, b2);
    }

    private Object a(k.b.a.x.i iVar, Locale locale) {
        if (iVar == k.b.a.x.a.MONTH_OF_YEAR) {
            DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
            HashMap hashMap = new HashMap();
            String[] months = dateFormatSymbols.getMonths();
            HashMap hashMap2 = new HashMap();
            hashMap2.put(1L, months[0]);
            hashMap2.put(2L, months[1]);
            hashMap2.put(3L, months[2]);
            hashMap2.put(4L, months[3]);
            hashMap2.put(5L, months[4]);
            hashMap2.put(6L, months[5]);
            hashMap2.put(7L, months[6]);
            hashMap2.put(8L, months[7]);
            hashMap2.put(9L, months[8]);
            hashMap2.put(10L, months[9]);
            hashMap2.put(11L, months[10]);
            hashMap2.put(12L, months[11]);
            hashMap.put(l.FULL, hashMap2);
            HashMap hashMap3 = new HashMap();
            hashMap3.put(1L, months[0].substring(0, 1));
            hashMap3.put(2L, months[1].substring(0, 1));
            hashMap3.put(3L, months[2].substring(0, 1));
            hashMap3.put(4L, months[3].substring(0, 1));
            hashMap3.put(5L, months[4].substring(0, 1));
            hashMap3.put(6L, months[5].substring(0, 1));
            hashMap3.put(7L, months[6].substring(0, 1));
            hashMap3.put(8L, months[7].substring(0, 1));
            hashMap3.put(9L, months[8].substring(0, 1));
            hashMap3.put(10L, months[9].substring(0, 1));
            hashMap3.put(11L, months[10].substring(0, 1));
            hashMap3.put(12L, months[11].substring(0, 1));
            hashMap.put(l.NARROW, hashMap3);
            String[] shortMonths = dateFormatSymbols.getShortMonths();
            HashMap hashMap4 = new HashMap();
            hashMap4.put(1L, shortMonths[0]);
            hashMap4.put(2L, shortMonths[1]);
            hashMap4.put(3L, shortMonths[2]);
            hashMap4.put(4L, shortMonths[3]);
            hashMap4.put(5L, shortMonths[4]);
            hashMap4.put(6L, shortMonths[5]);
            hashMap4.put(7L, shortMonths[6]);
            hashMap4.put(8L, shortMonths[7]);
            hashMap4.put(9L, shortMonths[8]);
            hashMap4.put(10L, shortMonths[9]);
            hashMap4.put(11L, shortMonths[10]);
            hashMap4.put(12L, shortMonths[11]);
            hashMap.put(l.SHORT, hashMap4);
            return a(hashMap);
        }
        if (iVar == k.b.a.x.a.DAY_OF_WEEK) {
            DateFormatSymbols dateFormatSymbols2 = DateFormatSymbols.getInstance(locale);
            HashMap hashMap5 = new HashMap();
            String[] weekdays = dateFormatSymbols2.getWeekdays();
            HashMap hashMap6 = new HashMap();
            hashMap6.put(1L, weekdays[2]);
            hashMap6.put(2L, weekdays[3]);
            hashMap6.put(3L, weekdays[4]);
            hashMap6.put(4L, weekdays[5]);
            hashMap6.put(5L, weekdays[6]);
            hashMap6.put(6L, weekdays[7]);
            hashMap6.put(7L, weekdays[1]);
            hashMap5.put(l.FULL, hashMap6);
            HashMap hashMap7 = new HashMap();
            hashMap7.put(1L, weekdays[2].substring(0, 1));
            hashMap7.put(2L, weekdays[3].substring(0, 1));
            hashMap7.put(3L, weekdays[4].substring(0, 1));
            hashMap7.put(4L, weekdays[5].substring(0, 1));
            hashMap7.put(5L, weekdays[6].substring(0, 1));
            hashMap7.put(6L, weekdays[7].substring(0, 1));
            hashMap7.put(7L, weekdays[1].substring(0, 1));
            hashMap5.put(l.NARROW, hashMap7);
            String[] shortWeekdays = dateFormatSymbols2.getShortWeekdays();
            HashMap hashMap8 = new HashMap();
            hashMap8.put(1L, shortWeekdays[2]);
            hashMap8.put(2L, shortWeekdays[3]);
            hashMap8.put(3L, shortWeekdays[4]);
            hashMap8.put(4L, shortWeekdays[5]);
            hashMap8.put(5L, shortWeekdays[6]);
            hashMap8.put(6L, shortWeekdays[7]);
            hashMap8.put(7L, shortWeekdays[1]);
            hashMap5.put(l.SHORT, hashMap8);
            return a(hashMap5);
        }
        if (iVar == k.b.a.x.a.AMPM_OF_DAY) {
            DateFormatSymbols dateFormatSymbols3 = DateFormatSymbols.getInstance(locale);
            HashMap hashMap9 = new HashMap();
            String[] amPmStrings = dateFormatSymbols3.getAmPmStrings();
            HashMap hashMap10 = new HashMap();
            hashMap10.put(0L, amPmStrings[0]);
            hashMap10.put(1L, amPmStrings[1]);
            hashMap9.put(l.FULL, hashMap10);
            hashMap9.put(l.SHORT, hashMap10);
            return a(hashMap9);
        }
        if (iVar == k.b.a.x.a.ERA) {
            DateFormatSymbols dateFormatSymbols4 = DateFormatSymbols.getInstance(locale);
            HashMap hashMap11 = new HashMap();
            String[] eras = dateFormatSymbols4.getEras();
            HashMap hashMap12 = new HashMap();
            hashMap12.put(0L, eras[0]);
            hashMap12.put(1L, eras[1]);
            hashMap11.put(l.SHORT, hashMap12);
            if (locale.getLanguage().equals(Locale.ENGLISH.getLanguage())) {
                HashMap hashMap13 = new HashMap();
                hashMap13.put(0L, "Before Christ");
                hashMap13.put(1L, "Anno Domini");
                hashMap11.put(l.FULL, hashMap13);
            } else {
                hashMap11.put(l.FULL, hashMap12);
            }
            HashMap hashMap14 = new HashMap();
            hashMap14.put(0L, eras[0].substring(0, 1));
            hashMap14.put(1L, eras[1].substring(0, 1));
            hashMap11.put(l.NARROW, hashMap14);
            return a(hashMap11);
        }
        if (iVar != k.b.a.x.c.f19873a) {
            return "";
        }
        HashMap hashMap15 = new HashMap();
        HashMap hashMap16 = new HashMap();
        hashMap16.put(1L, "Q1");
        hashMap16.put(2L, "Q2");
        hashMap16.put(3L, "Q3");
        hashMap16.put(4L, "Q4");
        hashMap15.put(l.SHORT, hashMap16);
        HashMap hashMap17 = new HashMap();
        hashMap17.put(1L, "1st quarter");
        hashMap17.put(2L, "2nd quarter");
        hashMap17.put(3L, "3rd quarter");
        hashMap17.put(4L, "4th quarter");
        hashMap15.put(l.FULL, hashMap17);
        return a(hashMap15);
    }

    private static b a(Map<l, Map<Long, String>> map) {
        map.put(l.FULL_STANDALONE, map.get(l.FULL));
        map.put(l.SHORT_STANDALONE, map.get(l.SHORT));
        if (map.containsKey(l.NARROW) && !map.containsKey(l.NARROW_STANDALONE)) {
            map.put(l.NARROW_STANDALONE, map.get(l.NARROW));
        }
        return new b(map);
    }
}
