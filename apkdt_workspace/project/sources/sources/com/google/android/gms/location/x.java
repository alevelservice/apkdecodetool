package com.google.android.gms.location;

import java.util.Comparator;

/* loaded from: classes.dex */
final class x implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        int j2 = activityTransition3.j();
        int j3 = activityTransition4.j();
        if (j2 != j3) {
            return j2 < j3 ? -1 : 1;
        }
        int k2 = activityTransition3.k();
        int k3 = activityTransition4.k();
        if (k2 == k3) {
            return 0;
        }
        return k2 < k3 ? -1 : 1;
    }
}
