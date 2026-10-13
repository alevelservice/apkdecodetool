package e.i.b.a.i.y;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import e.i.b.a.d;
import java.util.EnumMap;

/* compiled from: PriorityMapping.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static SparseArray<d> f17810a = new SparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    private static EnumMap<d, Integer> f17811b = new EnumMap<>(d.class);

    static {
        f17811b.put((EnumMap<d, Integer>) d.DEFAULT, (d) 0);
        f17811b.put((EnumMap<d, Integer>) d.VERY_LOW, (d) 1);
        f17811b.put((EnumMap<d, Integer>) d.HIGHEST, (d) 2);
        for (d dVar : f17811b.keySet()) {
            f17810a.append(f17811b.get(dVar).intValue(), dVar);
        }
    }

    @NonNull
    public static d a(int i2) {
        d dVar = f17810a.get(i2);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i2);
    }

    public static int a(@NonNull d dVar) {
        Integer num = f17811b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }
}
