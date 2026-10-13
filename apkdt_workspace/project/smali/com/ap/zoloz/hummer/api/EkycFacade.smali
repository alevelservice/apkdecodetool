.class public Lcom/ap/zoloz/hummer/api/EkycFacade;
.super Lcom/ap/zoloz/hummer/api/BaseFacade;
.source "EkycFacade.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EkycFacade"

.field private static sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;


# instance fields
.field private mEkycCallback:Lcom/ap/zoloz/hummer/api/IEkycCallback;

.field private mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ap/zoloz/hummer/api/BaseFacade;-><init>()V

    .line 2
    new-instance v0, Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-direct {v0}, Lcom/ap/zoloz/hummer/common/HummerContext;-><init>()V

    iput-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    .line 3
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v1, "currentTaskName"

    const-string v2, "context"

    const-string v3, "EkycFacade"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ap/zoloz/hummer/common/HummerContext;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/ap/zoloz/hummer/common/HummerCore;

    invoke-direct {v0}, Lcom/ap/zoloz/hummer/common/HummerCore;-><init>()V

    iput-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerCore:Lcom/ap/zoloz/hummer/common/HummerCore;

    return-void
.end method

.method static synthetic access$000(Lcom/ap/zoloz/hummer/api/EkycFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->cancelEkyc()V

    return-void
.end method

.method static synthetic access$100(Lcom/ap/zoloz/hummer/api/EkycFacade;Lcom/ap/zoloz/hummer/api/EkycResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->finalizeEkyc(Lcom/ap/zoloz/hummer/api/EkycResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ap/zoloz/hummer/api/EkycFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->cancelExit()V

    return-void
.end method

.method private cancelEkyc()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->getCancelIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v1, "EkycFacade"

    const-string v2, "Z7034"

    invoke-virtual {v0, v1, v2}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->cancelExit()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->getInstance()Lcom/ap/zoloz/hummer/rpc/RpcManager;

    move-result-object v1

    new-instance v2, Lcom/ap/zoloz/hummer/api/EkycFacade$3;

    invoke-direct {v2, p0}, Lcom/ap/zoloz/hummer/api/EkycFacade$3;-><init>(Lcom/ap/zoloz/hummer/api/EkycFacade;)V

    .line 6
    invoke-static {}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->getInstance()Lcom/ap/zoloz/hummer/rpc/RpcManager;

    move-result-object v3

    iget-object v4, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->formatRequest(Lcom/ap/zoloz/hummer/common/HummerContext;IZ)Lcom/ap/zoloz/hummer/rpc/RpcRequest;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v2, v0}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->sendRpc(Lcom/ap/zoloz/hummer/rpc/IRpcCallback;Lcom/ap/zoloz/hummer/rpc/RpcRequest;)V

    :goto_0
    return-void
.end method

.method private cancelExit()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ap/zoloz/hummer/common/WebPageManager;->getInstance()Lcom/ap/zoloz/hummer/common/WebPageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/common/WebPageManager;->exitSession()V

    .line 2
    new-instance v0, Lcom/ap/zoloz/hummer/api/EkycResponse;

    invoke-direct {v0}, Lcom/ap/zoloz/hummer/api/EkycResponse;-><init>()V

    const/16 v1, 0x3eb

    .line 3
    iput v1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    .line 4
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getLastZStackCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getZStack()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->result:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->finalizeEkyc(Lcom/ap/zoloz/hummer/api/EkycResponse;)V

    return-void
.end method

.method private finalizeEkyc(Lcom/ap/zoloz/hummer/api/EkycResponse;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prodRetCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    const-string v2, "prodSubRetCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ap/zoloz/hummer/common/RecordManager;->getInstance()Lcom/ap/zoloz/hummer/common/RecordManager;

    move-result-object v1

    const-string v2, "ekycEnd"

    invoke-virtual {v1, v2, v0}, Lcom/ap/zoloz/hummer/common/RecordManager;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mEkycCallback:Lcom/ap/zoloz/hummer/api/IEkycCallback;

    invoke-interface {v0, p1}, Lcom/ap/zoloz/hummer/api/IEkycCallback;->onCompletion(Lcom/ap/zoloz/hummer/api/EkycResponse;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ekyc response ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->release()V

    return-void
.end method

.method public static getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;
    .locals 2

    .line 1
    sget-object v0, Lcom/ap/zoloz/hummer/api/EkycFacade;->sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ap/zoloz/hummer/api/EkycFacade;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ap/zoloz/hummer/api/EkycFacade;->sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ap/zoloz/hummer/api/EkycFacade;

    invoke-direct {v1}, Lcom/ap/zoloz/hummer/api/EkycFacade;-><init>()V

    sput-object v1, Lcom/ap/zoloz/hummer/api/EkycFacade;->sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ap/zoloz/hummer/api/EkycFacade;->sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;

    return-object v0
.end method

.method private initMonitorLog()V
    .locals 0

    return-void
.end method

.method private parseService()Lcom/ap/zoloz/hummer/common/BaseWebService;
    .locals 6

    const-string v0, "Z7017"

    const-string v1, "EkycFacade"

    .line 1
    iget-object v2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v2, v2, Lcom/ap/zoloz/hummer/common/HummerContext;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "hummer_service.json"

    invoke-static {v2, v5}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/res/Resources;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 4
    const-class v2, Lcom/ap/zoloz/hummer/common/ServiceDesc;

    invoke-static {v4, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ap/zoloz/hummer/common/ServiceDesc;

    .line 5
    iget-object v2, v2, Lcom/ap/zoloz/hummer/common/ServiceDesc;->className:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ap/zoloz/hummer/common/BaseWebService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 7
    :catch_0
    iget-object v2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v2, v1, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {v0, v1}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-object v3

    .line 9
    :catch_1
    iget-object v2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v2, v1, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {v0, v1}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-object v3

    .line 11
    :catch_2
    iget-object v2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v2, v1, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {v0, v1}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-object v3

    .line 13
    :catch_3
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v2, "Z7016"

    invoke-virtual {v0, v1, v2}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {v0, v1}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-object v3
.end method


# virtual methods
.method public endWebTask(ILjava/lang/String;)V
    .locals 2

    const-string v0, "endWebTask "

    .line 1
    invoke-static {v0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerCore:Lcom/ap/zoloz/hummer/common/HummerCore;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->getCurrentTaskConfig()Lcom/ap/zoloz/hummer/common/TaskConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/ap/zoloz/hummer/common/TaskConfig;->type:Ljava/lang/String;

    const-string v1, "webTask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerCore:Lcom/ap/zoloz/hummer/common/HummerCore;

    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/common/HummerCore;->getCurrentTask()Lcom/ap/zoloz/hummer/common/TaskTracker;

    move-result-object v0

    check-cast v0, Lcom/ap/zoloz/hummer/common/WebTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ap/zoloz/hummer/common/WebTask;->handleResult(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7021"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {p1, p2}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected forceQuit()V
    .locals 1

    const-string v0, "forceQuitting"

    .line 1
    invoke-static {v0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/ap/zoloz/hummer/api/BaseFacade;->forceQuit()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    return-void
.end method

.method public forceRelease()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ap/zoloz/hummer/api/BaseFacade;->sIsBusy:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "endStatus"

    const-string v2, "login_expire"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ap/zoloz/hummer/common/RecordManager;->getInstance()Lcom/ap/zoloz/hummer/common/RecordManager;

    move-result-object v1

    const-string v2, "ekycEnd"

    invoke-virtual {v1, v2, v0}, Lcom/ap/zoloz/hummer/common/RecordManager;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    invoke-virtual {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->forceQuit()V

    .line 6
    invoke-virtual {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->release()V

    return-void
.end method

.method public getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->install(Landroid/content/Context;)V

    return-void
.end method

.method protected release()V
    .locals 2

    const-string v0, "releasing"

    .line 1
    invoke-static {v0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/ap/zoloz/hummer/api/BaseFacade;->release()V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/ap/zoloz/hummer/api/BaseFacade;->sIsBusy:Z

    .line 4
    sget-object v0, Lcom/ap/zoloz/hummer/api/EkycFacade;->sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    sput-object v1, Lcom/ap/zoloz/hummer/api/EkycFacade;->sInstance:Lcom/ap/zoloz/hummer/api/EkycFacade;

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mEkycCallback:Lcom/ap/zoloz/hummer/api/IEkycCallback;

    .line 7
    iput-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    return-void
.end method

.method public startEkyc(Lcom/ap/zoloz/hummer/api/EkycRequest;Lcom/ap/zoloz/hummer/api/IEkycCallback;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EkycFacade startEkyc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ap/zoloz/hummer/api/EkycRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;)V

    .line 2
    const-class v0, Lcom/ap/zoloz/hummer/api/EkycFacade;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/ap/zoloz/hummer/api/BaseFacade;->sIsBusy:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->forceQuit()V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/ap/zoloz/hummer/api/BaseFacade;->sIsBusy:Z

    .line 7
    iput-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mEkycCallback:Lcom/ap/zoloz/hummer/api/IEkycCallback;

    if-eqz p1, :cond_b

    .line 8
    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerCore:Lcom/ap/zoloz/hummer/common/HummerCore;

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    if-eqz p2, :cond_2

    const-string v1, "hummerContext"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    const-string v1, "hummerContext"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    const-string v1, "hummerContext"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 11
    invoke-virtual {p0, p2}, Lcom/ap/zoloz/hummer/api/BaseFacade;->setContext(Landroid/content/Context;)V

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object p2, p2, Lcom/ap/zoloz/hummer/common/HummerContext;->mContext:Landroid/content/Context;

    if-nez p2, :cond_3

    const-string p1, "context is null!"

    .line 13
    invoke-static {p1}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->e(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/ap/zoloz/hummer/api/EkycResponse;

    invoke-direct {p1}, Lcom/ap/zoloz/hummer/api/EkycResponse;-><init>()V

    const/16 p2, 0x3eb

    .line 15
    iput p2, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    const-string p2, "Z7011"

    .line 16
    iput-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    const-string p2, "context is null"

    .line 17
    iput-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->result:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/ap/zoloz/hummer/api/EkycFacade;->finalizeEkyc(Lcom/ap/zoloz/hummer/api/EkycResponse;)V

    return-void

    .line 19
    :cond_3
    new-instance p2, Lcom/ap/zoloz/hummer/api/EkycFacade$1;

    invoke-direct {p2, p0}, Lcom/ap/zoloz/hummer/api/EkycFacade$1;-><init>(Lcom/ap/zoloz/hummer/api/EkycFacade;)V

    iput-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    .line 20
    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->eKYCId:Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 21
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7010"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {p1, p2}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-void

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object v1, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->eKYCId:Ljava/lang/String;

    iput-object v1, p2, Lcom/ap/zoloz/hummer/common/HummerContext;->mHummerId:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/ap/zoloz/hummer/common/HummerContext;->getBizConfig()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->clientCfg:Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7012"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {p1, p2}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-void

    .line 28
    :cond_5
    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->clientCfg:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ap/zoloz/hummer/api/BaseFacade;->parseConfig(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 29
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7031"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {p1, p2}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-void

    .line 31
    :cond_6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object v1, v1, Lcom/ap/zoloz/hummer/common/HummerContext;->mHummerId:Ljava/lang/String;

    const-string v2, "hummerId"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getBizConfig()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getBizConfig()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {v1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getBizConfig()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_7
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v2, "REMOTELOG_URL"

    invoke-virtual {v1, v2}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 36
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v2, "REMOTELOG_URL"

    invoke-virtual {v1, v2}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "REMOTELOG_URL"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_8
    invoke-static {}, Lcom/ap/zoloz/hummer/common/RecordManager;->getInstance()Lcom/ap/zoloz/hummer/common/RecordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object v2, v2, Lcom/ap/zoloz/hummer/common/HummerContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Lcom/ap/zoloz/hummer/common/RecordManager;->init(Landroid/content/Context;Ljava/util/Map;)V

    .line 38
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object v1, v1, Lcom/ap/zoloz/hummer/common/HummerContext;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->getZimMetaInfo(Landroid/content/Context;Ljava/util/Map;)Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdkVersion"

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/ap/zoloz/hummer/common/RecordManager;->getInstance()Lcom/ap/zoloz/hummer/common/RecordManager;

    move-result-object v1

    const-string v3, "ekycStart"

    invoke-virtual {v1, v3, p2}, Lcom/ap/zoloz/hummer/common/RecordManager;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    iget-object p2, p2, Lcom/ap/zoloz/hummer/common/HummerContext;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v1, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-static {p2, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getLocalService(Landroid/content/Context;Ljava/lang/Class;)Lcom/alipay/mobile/security/bio/service/local/LocalService;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    .line 42
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v3, "GATEWAY_URL"

    invoke-virtual {v1, v3}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->setRemoteUrl(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    iget-object v3, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v4, "WORKSPACE_ID"

    invoke-virtual {v3, v4}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WORKSPACE_ID"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v4, "APP_ID"

    invoke-virtual {v3, v4}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "APP_ID"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->setExtProperties(Ljava/util/Map;)V

    .line 47
    invoke-static {}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->getInstance()Lcom/ap/zoloz/hummer/rpc/RpcManager;

    move-result-object v1

    const-class v3, Lcom/zoloz/zhub/common/factor/facade/HummerGWFacade;

    invoke-virtual {p2, v3}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoloz/zhub/common/factor/facade/HummerGWFacade;

    invoke-virtual {v1, p2}, Lcom/ap/zoloz/hummer/rpc/RpcManager;->init(Lcom/zoloz/zhub/common/factor/facade/HummerGWFacade;)V

    const-string p2, "UI.json"

    .line 48
    invoke-virtual {p0, p2}, Lcom/ap/zoloz/hummer/api/BaseFacade;->parseUIConfig(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 49
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7014"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {p1, p2}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-void

    .line 51
    :cond_9
    invoke-static {}, Lcom/ap/zoloz/hummer/common/WebPageManager;->getInstance()Lcom/ap/zoloz/hummer/common/WebPageManager;

    move-result-object p2

    invoke-direct {p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->parseService()Lcom/ap/zoloz/hummer/common/BaseWebService;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ap/zoloz/hummer/common/WebPageManager;->init(Lcom/ap/zoloz/hummer/common/BaseWebService;)V

    .line 52
    invoke-static {}, Lcom/ap/zoloz/hummer/common/RecordManager;->getInstance()Lcom/ap/zoloz/hummer/common/RecordManager;

    move-result-object p2

    const-string v1, "ztech_check_pass"

    invoke-virtual {p2, v1, v2}, Lcom/ap/zoloz/hummer/common/RecordManager;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    iget-object p2, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/ap/zoloz/hummer/api/BaseFacade;->customizePublicKey(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 54
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7037"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->recordSystemError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string p2, "EkycFacade"

    const-string v0, "Z7037"

    invoke-virtual {p1, p2, v0}, Lcom/ap/zoloz/hummer/common/HummerContext;->updateZStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/ap/zoloz/hummer/common/AlertManager;->getInstance()Lcom/ap/zoloz/hummer/common/AlertManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/EkycFacade;->mIAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-virtual {p1, p2}, Lcom/ap/zoloz/hummer/common/AlertManager;->alertSystemError(Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V

    return-void

    .line 57
    :cond_a
    iget-object p1, p1, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/ap/zoloz/hummer/api/BaseFacade;->customizeLocale(Ljava/util/Map;)V

    .line 58
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerCore:Lcom/ap/zoloz/hummer/common/HummerCore;

    iget-object p2, p0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    new-instance v1, Lcom/ap/zoloz/hummer/api/EkycFacade$2;

    invoke-direct {v1, p0}, Lcom/ap/zoloz/hummer/api/EkycFacade$2;-><init>(Lcom/ap/zoloz/hummer/api/EkycFacade;)V

    invoke-virtual {p1, p2, v1, v0}, Lcom/ap/zoloz/hummer/common/HummerCore;->schedule(Lcom/ap/zoloz/hummer/common/HummerContext;Lcom/ap/zoloz/hummer/common/IHummerCoreCallback;Z)V

    return-void

    :cond_b
    :goto_0
    const-string p1, "illegal request!"

    .line 59
    invoke-static {p1}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->e(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
