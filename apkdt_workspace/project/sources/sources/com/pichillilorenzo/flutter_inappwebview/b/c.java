package com.pichillilorenzo.flutter_inappwebview.b;

/* compiled from: ContentBlockerActionType.java */
/* loaded from: classes2.dex */
public enum c {
    BLOCK("block"),
    CSS_DISPLAY_NONE("css-display-none"),
    MAKE_HTTPS("make-https");

    private final String value;

    c(String str) {
        this.value = str;
    }

    public static c fromValue(String str) {
        for (c cVar : values()) {
            if (str.equals(cVar.value)) {
                return cVar;
            }
        }
        throw new IllegalArgumentException("No enum constant: " + str);
    }

    public boolean equalsValue(String str) {
        return this.value.equals(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
