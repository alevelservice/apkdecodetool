package e.a.a.a;

import java.util.Comparator;

/* compiled from: SubscriberComparator.java */
/* loaded from: classes.dex */
public class j implements Comparator<h> {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(h hVar, h hVar2) {
        if (hVar == hVar2) {
            return 0;
        }
        if (hVar == null) {
            return -1;
        }
        if (hVar2 == null) {
            return 1;
        }
        int b2 = hVar.b();
        if (b2 < 0) {
            b2 = 0;
        }
        int b3 = hVar2.b();
        if (b3 < 0) {
            b3 = 0;
        }
        if (b2 != b3) {
            return b2 - b3;
        }
        if (hVar.e() > hVar2.e()) {
            return 1;
        }
        return hVar.e() < hVar2.e() ? -1 : 0;
    }
}
