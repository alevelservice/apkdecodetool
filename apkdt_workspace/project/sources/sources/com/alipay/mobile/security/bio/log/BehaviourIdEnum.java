package com.alipay.mobile.security.bio.log;

import com.ap.zoloz.hummer.biz.HummerConstants;
import io.reactivex.rxjava3.annotations.SchedulerSupport;

/* loaded from: classes.dex */
public enum BehaviourIdEnum {
    NONE(SchedulerSupport.NONE),
    EVENT("event"),
    CLICKED("clicked"),
    OPENPAGE("openPage"),
    LONGCLICKED("longClicked"),
    DYNAMICLOADTOCHECK("dynamicLoadToCheck"),
    AUTO_CLICKED("auto_clicked"),
    AUTO_OPENPAGE("auto_openPage"),
    SUBMITED("submited"),
    BIZLAUNCHED("bizLaunched"),
    ERROR(HummerConstants.HUMMER_ERROR),
    EXCEPTION(HummerConstants.NORMAL_EXCEPTION),
    SETGESTURE("setGesture"),
    CHECKGESTURE("checkGesture"),
    SLIDED("slided"),
    MONITOR("monitor"),
    EXECCOMMAND("execCommand"),
    MONITORPERF("monitorPerf");

    private String desc;

    BehaviourIdEnum(String str) {
        this.desc = str;
    }

    public static BehaviourIdEnum convert(String str) {
        for (BehaviourIdEnum behaviourIdEnum : values()) {
            if (behaviourIdEnum.desc.equals(str)) {
                return behaviourIdEnum;
            }
        }
        return NONE;
    }

    public String getDes() {
        return this.desc;
    }
}
