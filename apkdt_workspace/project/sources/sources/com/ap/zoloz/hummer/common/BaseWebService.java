package com.ap.zoloz.hummer.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class BaseWebService {
    public abstract void exitPage(String str);

    public abstract void exitSession();

    public abstract boolean isPageAlreadyExit(String str);

    public abstract void openPage(HashMap<String, Object> hashMap);
}
