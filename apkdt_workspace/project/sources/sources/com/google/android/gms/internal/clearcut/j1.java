package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* loaded from: classes.dex */
public class j1 extends IOException {
    private i2 zzkw;

    public j1(String str) {
        super(str);
        this.zzkw = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 zzbl() {
        return new j1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 zzbm() {
        return new j1("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k1 zzbn() {
        return new k1("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 zzbo() {
        return new j1("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 zzbp() {
        return new j1("Protocol message had invalid UTF-8.");
    }

    public final j1 zzg(i2 i2Var) {
        this.zzkw = i2Var;
        return this;
    }
}
