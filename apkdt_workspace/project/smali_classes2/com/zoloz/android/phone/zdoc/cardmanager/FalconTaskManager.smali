.class public Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;
.super Ljava/lang/Object;
.source "FalconTaskManager.java"


# static fields
.field public static final CALL_BACK_PARAM_ERROR:I = 0x1

.field public static final CALL_BACK_SUCCESS:I = 0x0

.field public static final CALL_BACK_USER_QUIT:I = 0x2

.field private static instance:Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;


# instance fields
.field private mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private mCallBack:Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;
    .locals 2

    const-class v0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->instance:Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    invoke-direct {v1}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;-><init>()V

    sput-object v1, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->instance:Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    .line 3
    :cond_0
    sget-object v1, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->instance:Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBioServiceManager()Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    return-object v0
.end method

.method public registerCallback(Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mCallBack:Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;

    return-void
.end method

.method public setBioServiceManager(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public transResult(Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mCallBack:Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;->onResult(Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mCallBack:Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;

    .line 4
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mContext:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 6
    sput-object p1, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->instance:Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    return-void
.end method
