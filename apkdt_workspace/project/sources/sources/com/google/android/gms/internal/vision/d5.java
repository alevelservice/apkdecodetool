package com.google.android.gms.internal.vision;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class d5 extends IOException {
    private d6 zzxh;

    public d5(String str) {
        super(str);
        this.zzxh = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 zzgm() {
        return new d5("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 zzgn() {
        return new d5("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static d5 zzgo() {
        return new d5("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 zzgp() {
        return new d5("Protocol message contained an invalid tag (zero).");
    }

    static d5 zzgq() {
        return new d5("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c5 zzgr() {
        return new c5("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 zzgs() {
        return new d5("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 zzgt() {
        return new d5("Protocol message had invalid UTF-8.");
    }

    public final d5 zzg(d6 d6Var) {
        this.zzxh = d6Var;
        return this;
    }
}
