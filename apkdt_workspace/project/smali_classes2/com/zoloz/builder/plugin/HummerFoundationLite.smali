.class public Lcom/zoloz/builder/plugin/HummerFoundationLite;
.super Ljava/lang/Object;
.source "HummerFoundationLite.java"

# interfaces
.implements Lcom/zoloz/webcontainer/n/d;


# static fields
.field public static final HUMMER_FOUNDATION:Ljava/lang/String; = "hummerFoundation"

.field public static final HUMMER_FOUNDATION_ACTION:Ljava/lang/String; = "action"

.field public static final HUMMER_FOUNDATION_ALERT:Ljava/lang/String; = "alert"

.field public static final HUMMER_FOUNDATION_CONTEXT:Ljava/lang/String; = "paramkeys"

.field public static final HUMMER_FOUNDATION_DEL_PARAMS:Ljava/lang/String; = "deleteParams"

.field public static final HUMMER_FOUNDATION_FORWARD_REQUEST:Ljava/lang/String; = "forwardRequest"

.field public static final HUMMER_FOUNDATION_GET_PARAMS:Ljava/lang/String; = "getParams"

.field public static final HUMMER_FOUNDATION_HIDE_LOADING:Ljava/lang/String; = "hideLoading"

.field public static final HUMMER_FOUNDATION_LOG:Ljava/lang/String; = "log"

.field public static final HUMMER_FOUNDATION_LOG_MESS:Ljava/lang/String; = "logMessage"

.field public static final HUMMER_FOUNDATION_LOG_SEED_ID:Ljava/lang/String; = "logSeedID"

.field public static final HUMMER_FOUNDATION_MESSAGE:Ljava/lang/String; = "message"

.field public static final HUMMER_FOUNDATION_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final HUMMER_FOUNDATION_POSITIVE:Ljava/lang/String; = "positive"

.field public static final HUMMER_FOUNDATION_RPC:Ljava/lang/String; = "rpc"

.field public static final HUMMER_FOUNDATION_SET_PARAMS:Ljava/lang/String; = "setParams"

.field public static final HUMMER_FOUNDATION_SHOW_LOADING:Ljava/lang/String; = "showLoading"

.field public static final HUMMER_FOUNDATION_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "HummerFoundationLite"

.field public static final ZIM_IDENTIFY:Ljava/lang/String; = "zimIdentity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private identify(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

    invoke-direct {v0}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->e()Landroid/app/Activity;

    move-result-object p1

    new-instance v2, Lcom/zoloz/builder/plugin/HummerFoundationLite$1;

    invoke-direct {v2, p0, p2}, Lcom/zoloz/builder/plugin/HummerFoundationLite$1;-><init>(Lcom/zoloz/builder/plugin/HummerFoundationLite;Lcom/zoloz/webcontainer/a/b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ap/zoloz/hummer/h5/H5PluginHandler;->identify(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V

    return-void
.end method


# virtual methods
.method public getJSApiName()Ljava/lang/String;
    .locals 1

    const-string v0, "hummerFoundation"

    return-object v0
.end method

.method public handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/zoloz/builder/plugin/HummerFoundationLite;->getJSApiName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bridge data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " jsapi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HummerFoundationLite"

    invoke-static {v1, v0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hummerFoundation"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zimIdentity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zoloz/builder/plugin/HummerFoundationLite;->identify(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method
