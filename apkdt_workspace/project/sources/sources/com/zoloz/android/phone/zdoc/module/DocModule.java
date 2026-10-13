package com.zoloz.android.phone.zdoc.module;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class DocModule implements Serializable {
    private AlgorithmModule algorithm;
    private CollModule coll = new CollModule();

    public AlgorithmModule getAlgorithm() {
        return this.algorithm;
    }

    public CollModule getColl() {
        return this.coll;
    }

    public void setAlgorithm(AlgorithmModule algorithmModule) {
        this.algorithm = algorithmModule;
    }

    public void setColl(CollModule collModule) {
        this.coll = collModule;
    }
}
