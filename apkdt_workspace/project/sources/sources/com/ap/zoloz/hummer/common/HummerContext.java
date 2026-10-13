package com.ap.zoloz.hummer.common;

import android.content.Context;
import com.alibaba.fastjson.JSONObject;
import com.ap.zoloz.hummer.api.TaskUIConfig;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.biz.HummerLogger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HummerContext {
    ClientConfig mClientConfig;
    public Context mContext;
    private TaskConfig mCurrentTaskConfig;
    public String mHummerId;
    TaskUIConfig mTaskUIConfig;
    private Map<String, Object> mBizConfig = new HashMap();
    private Map<String, Object> serverConfig = new HashMap();
    private Map<String, Object> serverResponse = new HashMap();
    private Map<String, Object> runtimeContext = new HashMap();
    private Map<Integer, Object> argumentContext = new HashMap();
    public ArrayList<Integer> rpcTaskIndexs = new ArrayList<>();
    private List<Map<String, String>> mZStack = new ArrayList();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void add(String str, String str2, Object obj) {
        char c2;
        HashMap hashMap = new HashMap();
        switch (str2.hashCode()) {
            case -1589682499:
                if (str2.equals(HummerConstants.ARGUMENT)) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -722006482:
                if (str2.equals(HummerConstants.ZSTACK)) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -170019676:
                if (str2.equals(HummerConstants.SERVER_RESPONSE)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3029889:
                if (str2.equals(HummerConstants.BOTH)) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 951530927:
                if (str2.equals("context")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1447616613:
                if (str2.equals(HummerConstants.SERVER_CONFIG)) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            this.runtimeContext.put(str, obj);
            return;
        }
        if (c2 == 1) {
            if (this.mCurrentTaskConfig == null) {
                return;
            }
            hashMap.clear();
            if (this.argumentContext.containsKey(Integer.valueOf(this.mCurrentTaskConfig.index))) {
                hashMap.putAll((Map) this.argumentContext.get(Integer.valueOf(this.mCurrentTaskConfig.index)));
            }
            hashMap.put(str, obj);
            this.argumentContext.put(Integer.valueOf(this.mCurrentTaskConfig.index), hashMap);
            return;
        }
        if (c2 == 2) {
            this.serverResponse.put(str, obj);
            return;
        }
        if (c2 != 3) {
            if (c2 == 4) {
                this.serverConfig.put(str, obj);
                return;
            } else {
                if (c2 != 5) {
                    return;
                }
                updateZStack(this.mCurrentTaskConfig.name, String.valueOf(obj));
                return;
            }
        }
        this.runtimeContext.put(str, obj);
        if (this.mCurrentTaskConfig == null) {
            return;
        }
        hashMap.clear();
        if (this.argumentContext.containsKey(Integer.valueOf(this.mCurrentTaskConfig.index))) {
            hashMap.putAll((Map) this.argumentContext.get(Integer.valueOf(this.mCurrentTaskConfig.index)));
        }
        hashMap.put(str, obj);
        this.argumentContext.put(Integer.valueOf(this.mCurrentTaskConfig.index), hashMap);
    }

    public void delete(String str) {
        this.argumentContext.remove(str);
        this.runtimeContext.remove(str);
        this.serverResponse.remove(str);
        this.argumentContext.remove(str);
    }

    public void forceQuit() {
        HummerLogger.i("HummerContext forceQuit");
        this.mZStack.clear();
        this.mBizConfig.clear();
        this.serverConfig.clear();
        this.serverResponse.clear();
        this.runtimeContext.clear();
        this.argumentContext.clear();
        this.mCurrentTaskConfig = null;
    }

    public Map<String, Object> getBizConfig() {
        return this.mBizConfig;
    }

    public int getCancelIndex() {
        ArrayList<TaskConfig> arrayList;
        ClientConfig clientConfig = this.mClientConfig;
        if (clientConfig != null && (arrayList = clientConfig.tasks) != null && arrayList.size() != 0) {
            for (int i2 = 0; i2 < this.mClientConfig.tasks.size(); i2++) {
                if (HummerConstants.TASK_CANCEL.equals(this.mClientConfig.tasks.get(i2).name)) {
                    return this.mClientConfig.tasks.get(i2).index;
                }
            }
        }
        return 0;
    }

    public TaskConfig getCurrentTaskConfig() {
        return this.mCurrentTaskConfig;
    }

    public UIConfig getCurrentUIConfig(String str) {
        TaskUIConfig taskUIConfig = this.mTaskUIConfig;
        if (taskUIConfig != null && taskUIConfig.tasks.size() != 0) {
            for (int i2 = 0; i2 < this.mTaskUIConfig.tasks.size(); i2++) {
                if (str.equals(this.mTaskUIConfig.tasks.get(i2).name)) {
                    return this.mTaskUIConfig.tasks.get(i2);
                }
            }
        }
        return null;
    }

    public Map<String, Object> getInputParam() {
        TaskConfig taskConfig = this.mCurrentTaskConfig;
        if (taskConfig != null) {
            return taskConfig.inputParams;
        }
        return null;
    }

    public String getLastZStackCode() {
        List<Map<String, String>> list = this.mZStack;
        String str = "";
        if (list != null && list.size() > 0) {
            Map<String, String> map = this.mZStack.get(r0.size() - 1);
            Iterator<String> it = map.keySet().iterator();
            while (it.hasNext()) {
                str = map.get(it.next());
            }
        }
        return str;
    }

    public int getNextIndex(String str) {
        TaskConfig taskConfig = this.mCurrentTaskConfig;
        if (taskConfig == null || taskConfig.navigateConfig == null) {
            return 0;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1421272810:
                if (str.equals(HummerConstants.HUMMER_VALIDATE)) {
                    c2 = 5;
                    break;
                }
                break;
            case 3015911:
                if (str.equals(HummerConstants.HUMMER_BACK)) {
                    c2 = 3;
                    break;
                }
                break;
            case 3135262:
                if (str.equals(HummerConstants.HUMMER_FAIL)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3377907:
                if (str.equals(HummerConstants.HUMMER_NEXT)) {
                    c2 = 0;
                    break;
                }
                break;
            case 3532159:
                if (str.equals(HummerConstants.HUMMER_SKIP)) {
                    c2 = 2;
                    break;
                }
                break;
            case 96784904:
                if (str.equals(HummerConstants.HUMMER_ERROR)) {
                    c2 = 4;
                    break;
                }
                break;
        }
        if (c2 == 0) {
            return ((Integer) this.mCurrentTaskConfig.navigateConfig.next.get(HummerConstants.INDEX)).intValue();
        }
        if (c2 == 1) {
            return ((Integer) this.mCurrentTaskConfig.navigateConfig.fail.get(HummerConstants.INDEX)).intValue();
        }
        if (c2 == 2) {
            return ((Integer) this.mCurrentTaskConfig.navigateConfig.skip.get(HummerConstants.INDEX)).intValue();
        }
        if (c2 == 3) {
            return ((Integer) this.mCurrentTaskConfig.navigateConfig.back.get(HummerConstants.INDEX)).intValue();
        }
        if (c2 == 4) {
            return ((Integer) this.mCurrentTaskConfig.navigateConfig.error.get(HummerConstants.INDEX)).intValue();
        }
        if (c2 != 5) {
            return 0;
        }
        return ((Integer) this.mCurrentTaskConfig.navigateConfig.validate.get(HummerConstants.INDEX)).intValue();
    }

    public JSONObject getOutputParam(String str) {
        if (this.mCurrentTaskConfig == null) {
            return null;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3015911:
                if (str.equals(HummerConstants.HUMMER_BACK)) {
                    c2 = 3;
                    break;
                }
                break;
            case 3135262:
                if (str.equals(HummerConstants.HUMMER_FAIL)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3377907:
                if (str.equals(HummerConstants.HUMMER_NEXT)) {
                    c2 = 0;
                    break;
                }
                break;
            case 3532159:
                if (str.equals(HummerConstants.HUMMER_SKIP)) {
                    c2 = 2;
                    break;
                }
                break;
            case 96784904:
                if (str.equals(HummerConstants.HUMMER_ERROR)) {
                    c2 = 4;
                    break;
                }
                break;
        }
        if (c2 == 0) {
            return (JSONObject) this.mCurrentTaskConfig.navigateConfig.next.get(HummerConstants.OUTPUT_PARAM);
        }
        if (c2 == 1) {
            return (JSONObject) this.mCurrentTaskConfig.navigateConfig.fail.get(HummerConstants.OUTPUT_PARAM);
        }
        if (c2 == 2) {
            return (JSONObject) this.mCurrentTaskConfig.navigateConfig.skip.get(HummerConstants.OUTPUT_PARAM);
        }
        if (c2 == 3) {
            return (JSONObject) this.mCurrentTaskConfig.navigateConfig.back.get(HummerConstants.OUTPUT_PARAM);
        }
        if (c2 != 4) {
            return null;
        }
        return (JSONObject) this.mCurrentTaskConfig.navigateConfig.error.get(HummerConstants.OUTPUT_PARAM);
    }

    public TaskConfig getTaskConfig(int i2) {
        ArrayList<TaskConfig> arrayList;
        ClientConfig clientConfig = this.mClientConfig;
        if (clientConfig != null && (arrayList = clientConfig.tasks) != null && arrayList.size() != 0) {
            for (int i3 = 0; i3 < this.mClientConfig.tasks.size(); i3++) {
                if (i2 == this.mClientConfig.tasks.get(i3).index) {
                    return this.mClientConfig.tasks.get(i3);
                }
            }
        }
        return null;
    }

    public List<Map<String, String>> getZStack() {
        return this.mZStack;
    }

    public boolean needRPC(String str) {
        TaskConfig taskConfig = getTaskConfig(getNextIndex(str));
        return (taskConfig == null || !HummerConstants.SERVER_TASK.equals(taskConfig.type) || HummerConstants.TASK_FINALIZE.equals(taskConfig.name) || HummerConstants.TASK_CANCEL.equals(taskConfig.name)) ? false : true;
    }

    public void overwriteZStack(List<Map<String, String>> list) {
        this.mZStack.clear();
        this.mZStack.addAll(list);
    }

    public HashMap<String, Object> packageRPCArguments() {
        TaskConfig taskConfig = this.mCurrentTaskConfig;
        if (taskConfig == null) {
            return null;
        }
        int i2 = taskConfig.index;
        HashMap<String, Object> hashMap = new HashMap<>();
        ArrayList arrayList = new ArrayList(this.rpcTaskIndexs);
        Collections.sort(arrayList);
        if (!arrayList.contains(Integer.valueOf(i2))) {
            return null;
        }
        int intValue = this.rpcTaskIndexs.indexOf(Integer.valueOf(i2)) > 0 ? ((Integer) arrayList.get(this.rpcTaskIndexs.indexOf(Integer.valueOf(i2)) - 1)).intValue() : 0;
        for (Map.Entry<Integer, Object> entry : this.argumentContext.entrySet()) {
            if (entry.getKey().intValue() > intValue && entry.getKey().intValue() <= i2) {
                hashMap.putAll((Map) entry.getValue());
            }
        }
        return hashMap;
    }

    public Object query(String str) {
        if (this.mBizConfig.containsKey(str)) {
            return this.mBizConfig.get(str);
        }
        if (this.serverResponse.containsKey(str)) {
            return this.serverResponse.get(str);
        }
        if (this.runtimeContext.containsKey(str)) {
            return this.runtimeContext.get(str);
        }
        if (this.serverConfig.containsKey(str)) {
            return this.serverConfig.get(str);
        }
        return null;
    }

    public void recordSystemError(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("subCode", str2);
        hashMap.put(HummerConstants.CURRENT_TASK_NAME, str);
        RecordManager.getInstance().record(HummerConstants.ZTECH_SYSTEM_ERROR, hashMap);
    }

    public void release() {
        this.mBizConfig.clear();
        this.serverConfig.clear();
        this.serverResponse.clear();
        this.runtimeContext.clear();
        this.argumentContext.clear();
        this.mZStack.clear();
        this.mContext = null;
        this.mCurrentTaskConfig = null;
    }

    public void setClientConfig(ClientConfig clientConfig) {
        this.mClientConfig = clientConfig;
    }

    public void setCurrentTaskConfig(TaskConfig taskConfig) {
        this.mCurrentTaskConfig = taskConfig;
    }

    public void setTaskUIConfig(TaskUIConfig taskUIConfig) {
        this.mTaskUIConfig = taskUIConfig;
    }

    public void updateRpcIndexList() {
        TaskConfig taskConfig = this.mCurrentTaskConfig;
        if (taskConfig == null) {
            return;
        }
        this.rpcTaskIndexs.add(Integer.valueOf(taskConfig.index));
        HummerLogger.d(this.rpcTaskIndexs.toString());
    }

    public void updateZStack(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        this.mZStack.add(hashMap);
    }
}
