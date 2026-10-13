package com.mapbox.android.gestures;

import android.util.Pair;

/* compiled from: PointerDistancePair.java */
/* loaded from: classes2.dex */
public class h extends Pair<Integer, Integer> {
    public h(Integer num, Integer num2) {
        super(num, num2);
    }

    @Override // android.util.Pair
    public boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (((Integer) ((Pair) this).first).equals(((Pair) hVar).first) && ((Integer) ((Pair) this).second).equals(((Pair) hVar).second)) {
            return true;
        }
        return ((Integer) ((Pair) this).first).equals(((Pair) hVar).second) && ((Integer) ((Pair) this).second).equals(((Pair) hVar).first);
    }
}
