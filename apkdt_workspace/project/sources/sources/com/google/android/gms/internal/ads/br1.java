package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class br1 {

    /* renamed from: b, reason: collision with root package name */
    private final int f5853b;

    /* renamed from: c, reason: collision with root package name */
    private final cr1 f5854c = new fr1();

    /* renamed from: a, reason: collision with root package name */
    private final int f5852a = 6;

    public br1(int i2) {
        this.f5853b = i2;
    }

    public final String a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList.get(i2);
            i2++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return a(sb.toString());
    }

    @VisibleForTesting
    private final String a(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        dr1 dr1Var = new dr1();
        PriorityQueue priorityQueue = new PriorityQueue(this.f5853b, new er1(this));
        for (String str2 : split) {
            String[] a2 = gr1.a(str2, false);
            if (a2.length != 0) {
                hr1.a(a2, this.f5853b, this.f5852a, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                dr1Var.a(this.f5854c.a(((kr1) it.next()).f7738b));
            } catch (IOException e2) {
                qd.b("Error while writing hash to byteStream", e2);
            }
        }
        return dr1Var.toString();
    }
}
