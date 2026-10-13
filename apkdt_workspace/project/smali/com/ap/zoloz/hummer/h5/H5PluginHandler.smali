.class public Lcom/ap/zoloz/hummer/h5/H5PluginHandler;
.super Ljava/lang/Object;
.source "H5PluginHandler.java"


# static fields
.field public static final HUMMER_FOUNDATION_ACTION:Ljava/lang/String; = "action"

.field public static final HUMMER_FOUNDATION_ADD:Ljava/lang/String; = "add"

.field public static final HUMMER_FOUNDATION_DELETE:Ljava/lang/String; = "delete"

.field public static final HUMMER_FOUNDATION_GET_INTPUT_PARAMS:Ljava/lang/String; = "getInputParams"

.field public static final HUMMER_FOUNDATION_GET_LANGUAGE:Ljava/lang/String; = "getLanguage"

.field public static final HUMMER_FOUNDATION_GET_OUTPUT_PARAMS:Ljava/lang/String; = "getOutputParams"

.field public static final HUMMER_FOUNDATION_HIDE_LOADING_DIALOG:Ljava/lang/String; = "hideLoadingDialog"

.field private static final HUMMER_FOUNDATION_KEY:Ljava/lang/String; = "key"

.field public static final HUMMER_FOUNDATION_LOGGING:Ljava/lang/String; = "logging"

.field public static final HUMMER_FOUNDATION_LOG_MESS:Ljava/lang/String; = "logMessage"

.field public static final HUMMER_FOUNDATION_LOG_SEED_ID:Ljava/lang/String; = "logSeedID"

.field public static final HUMMER_FOUNDATION_MESSAGE:Ljava/lang/String; = "message"

.field public static final HUMMER_FOUNDATION_NEED_RPC:Ljava/lang/String; = "needRpc"

.field public static final HUMMER_FOUNDATION_NEGATIVE:Ljava/lang/String; = "negative"

.field private static final HUMMER_FOUNDATION_PIPE_TYPE:Ljava/lang/String; = "pipeType"

.field public static final HUMMER_FOUNDATION_POSITIVE:Ljava/lang/String; = "positive"

.field public static final HUMMER_FOUNDATION_QUERY:Ljava/lang/String; = "query"

.field public static final HUMMER_FOUNDATION_SEND_RPC:Ljava/lang/String; = "sendRpc"

.field public static final HUMMER_FOUNDATION_SHOW_ALERT:Ljava/lang/String; = "showAlert"

.field public static final HUMMER_FOUNDATION_SHOW_LOADING_DIALOG:Ljava/lang/String; = "showLoadingDialog"

.field public static final HUMMER_FOUNDATION_TITLE:Ljava/lang/String; = "title"

.field private static final HUMMER_FOUNDATION_TYPE:Ljava/lang/String; = "type"

.field private static final HUMMER_FOUNDATION_VALUE:Ljava/lang/String; = "value"

.field public static final TAG:Ljava/lang/String; = "H5PluginHandler"

.field public static final ZIM_IDENTIFY_ACTION:Ljava/lang/String; = "action"

.field public static final ZIM_IDENTIFY_BIZCONFIG:Ljava/lang/String; = "bizParam"

.field public static final ZIM_IDENTIFY_EKYCID:Ljava/lang/String; = "ekycId"

.field public static final ZIM_IDENTIFY_EKYCONFIG:Ljava/lang/String; = "ekycConfig"

.field public static final ZIM_IDENTIFY_FINISH_WEB_TASK:Ljava/lang/String; = "finishWebTask"

.field private static final ZIM_IDENTIFY_GET_META_INFO:Ljava/lang/String; = "getMetaInfo"

.field public static final ZIM_IDENTIFY_NEXTINDEX:Ljava/lang/String; = "nextIndex"

.field public static final ZIM_IDENTIFY_START_EKYC:Ljava/lang/String; = "startEkyc"

.field public static final ZIM_IDENTIFY_STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSystemLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    return-object p1
.end method

.method private updateLocale(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "-"

    if-eqz p2, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 4
    array-length v0, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    .line 5
    new-instance v0, Ljava/util/Locale;

    aget-object v2, p2, v4

    aget-object p2, p2, v3

    invoke-direct {v0, v2, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p2

    if-ne v0, v3, :cond_1

    .line 7
    new-instance v0, Ljava/util/Locale;

    aget-object p2, p2, v4

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p2, v2, :cond_4

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 14
    :cond_4
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method public identify(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V
    .locals 6

    if-eqz p1, :cond_16

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " jsapi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PluginHandler"

    invoke-static {v1, v0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p2}, Lcom/ap/zoloz/hummer/api/BaseFacade;->setContext(Landroid/content/Context;)V

    const-string v2, "getMetaInfo"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ap/zoloz/hummer/api/BaseFacade;->getMetaInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "metaInfo"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p3, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_2
    const-string v2, "startEkyc"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p2, "ekycId"

    .line 11
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v0, Lcom/ap/zoloz/hummer/api/EkycRequest;

    invoke-direct {v0}, Lcom/ap/zoloz/hummer/api/EkycRequest;-><init>()V

    .line 13
    iput-object p2, v0, Lcom/ap/zoloz/hummer/api/EkycRequest;->eKYCId:Ljava/lang/String;

    const-string p2, "bizParam"

    .line 14
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 17
    const-class p2, Ljava/util/Map;

    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    .line 21
    :cond_4
    :goto_0
    iget-object p2, v0, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p2, "ekycConfig"

    .line 22
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycRequest;->clientCfg:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$1;

    invoke-direct {p1, p0, p3}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$1;-><init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V

    invoke-virtual {v1, v0, p1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->startEkyc(Lcom/ap/zoloz/hummer/api/EkycRequest;Lcom/ap/zoloz/hummer/api/IEkycCallback;)V

    goto/16 :goto_3

    :cond_5
    const-string v1, "finishWebTask"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const-string p2, "nextIndex"

    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28
    :cond_6
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object p2

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->endWebTask(ILjava/lang/String;)V

    .line 29
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-interface {p3, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_7
    const-string v1, "logging"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p2, "logSeedID"

    .line 31
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "logMessage"

    .line 32
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 33
    const-class p3, Ljava/util/Map;

    invoke-static {p1, p3}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 34
    invoke-static {}, Lcom/ap/zoloz/hummer/common/RecordManager;->getInstance()Lcom/ap/zoloz/hummer/common/RecordManager;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/ap/zoloz/hummer/common/RecordManager;->record(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_8
    const-string v1, "sendRpc"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "type"

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ap/zoloz/hummer/common/HummerContext;->updateRpcIndexList()V

    .line 38
    invoke-static {}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->getInstance()Lcom/ap/zoloz/hummer/rpc/RpcManager;

    move-result-object p2

    new-instance v0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;

    invoke-direct {v0, p0, p3}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;-><init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V

    .line 39
    invoke-static {}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->getInstance()Lcom/ap/zoloz/hummer/rpc/RpcManager;

    move-result-object p3

    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v1

    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getNextIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v1, p1, v2}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->formatRequest(Lcom/ap/zoloz/hummer/common/HummerContext;IZ)Lcom/ap/zoloz/hummer/rpc/RpcRequest;

    move-result-object p1

    .line 40
    invoke-virtual {p2, v0, p1}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->sendRpc(Lcom/ap/zoloz/hummer/rpc/IRpcCallback;Lcom/ap/zoloz/hummer/rpc/RpcRequest;)V

    goto/16 :goto_3

    :cond_9
    const-string v1, "showAlert"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p2, "title"

    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p2, "message"

    .line 43
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "positive"

    .line 44
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "negative"

    .line 45
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object v0

    new-instance v5, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;

    invoke-direct {v5, p0, p3}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;-><init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V

    invoke-virtual/range {v0 .. v5}, Lcom/ap/zoloz/hummer/common/AlertManager;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ap/zoloz/hummer/common/IAlertCallback;)V

    goto/16 :goto_3

    :cond_a
    const-string v1, "showLoadingDialog"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 48
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    new-instance p2, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$4;

    invoke-direct {p2, p0}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$4;-><init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;)V

    const/4 p3, 0x1

    const-string v0, ""

    invoke-virtual {p1, v0, v2, p2, p3}, Lcom/ap/zoloz/hummer/common/AlertManager;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    goto/16 :goto_3

    :cond_b
    const-string v1, "hideLoadingDialog"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ap/zoloz/hummer/common/AlertManager;->dismissDialog()V

    goto/16 :goto_3

    :cond_c
    const-string v1, "add"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    const-string v4, "key"

    if-eqz v1, :cond_d

    .line 52
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pipeType"

    .line 53
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-interface {p3, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_d
    const-string v1, "query"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 58
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {p3, p2}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_e
    const-string v1, "delete"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 63
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->delete(Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-interface {p3, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_f
    const-string v1, "needRpc"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 67
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->needRPC(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {p3, p2}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_10
    const-string v1, "getInputParams"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 72
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 73
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ap/zoloz/hummer/common/HummerContext;->getInputParam()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 74
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 75
    :cond_11
    invoke-interface {p3, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    :cond_12
    const-string v1, "getOutputParams"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 77
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 78
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getOutputParam(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13

    goto :goto_1

    :cond_13
    move-object p1, p2

    .line 80
    :goto_1
    invoke-interface {p3, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_3

    :cond_14
    const-string p1, "getLanguage"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 82
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object p1

    const-string v0, "hummerLocale"

    invoke-virtual {p1, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 84
    invoke-direct {p0, p2, p1}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler;->updateLocale(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_15
    invoke-direct {p0, p2}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler;->getSystemLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_2
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "language"

    .line 88
    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {p3, p2}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_16
    :goto_3
    return-void
.end method
