package io.flutter.embedding.engine.f;

import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ResourceExtractor.java */
/* loaded from: classes2.dex */
public class d {
    static {
        b();
    }

    private static String[] b() {
        if (Build.VERSION.SDK_INT >= 21) {
            return Build.SUPPORTED_ABIS;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(Build.CPU_ABI, Build.CPU_ABI2));
        arrayList.removeAll(Arrays.asList(null, ""));
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        throw null;
    }
}
