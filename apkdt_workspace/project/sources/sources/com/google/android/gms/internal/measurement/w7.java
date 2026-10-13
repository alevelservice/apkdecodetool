package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes.dex */
public final class w7 extends IOException {
    public w7(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w7 zzxd() {
        return new w7("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w7 zzxe() {
        return new w7("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w7 zzxf() {
        return new w7("CodedInputStream encountered a malformed varint.");
    }

    public w7(String str, Exception exc) {
        super(str, exc);
    }
}
