package com.alipay.mobile.security.bio.exception;

/* loaded from: classes.dex */
public class BioObjectNotInitialException extends RuntimeException {
    public BioObjectNotInitialException(String str) {
        super("BIO:" + str);
    }
}
