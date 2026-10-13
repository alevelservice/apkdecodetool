package e.b.b.a.a.c;

import java.io.Serializable;
import java.util.ArrayList;

/* compiled from: APLogConfigData.java */
/* loaded from: classes.dex */
public class a implements Serializable {
    public long configRefreshInterval;
    public ArrayList<String> keywords;
    public boolean logEnable;
    public ArrayList<String> logTypes;
    public long reportActiveInterval;
    public String uploadURL;

    public String toString() {
        return "logConfig{logEnable=" + this.logEnable + "', uploadURL=" + this.uploadURL + "', configRefreshInterval=" + this.configRefreshInterval + "', reportActiveInterval=" + this.reportActiveInterval + "', autotrackKeywords=" + this.keywords + "', logTypes=" + this.logTypes + "'}";
    }
}
