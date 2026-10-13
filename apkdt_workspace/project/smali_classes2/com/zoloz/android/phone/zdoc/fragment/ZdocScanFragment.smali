.class public Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;
.super Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;
.source "ZdocScanFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isAlgorithmStarted:Z

.field private isCompleted:Z

.field private isGetPreviewingImg:Z

.field private mAlgorithmModule:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

.field private mCurrentMessage:I

.field private mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

.field private mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

.field private mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;-><init>()V

    .line 2
    const-class v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isAlgorithmStarted:Z

    .line 4
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isCompleted:Z

    .line 5
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isGetPreviewingImg:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    return-void
.end method

.method static synthetic access$000(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    return p0
.end method

.method static synthetic access$200(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isCompleted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;Lcom/alipay/zoloz/toyger/doc/ToygerDocState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->handleOnStatusUpdated(Lcom/alipay/zoloz/toyger/doc/ToygerDocState;)V

    return-void
.end method

.method private getRotateTimes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private handleOnStatusUpdated(Lcom/alipay/zoloz/toyger/doc/ToygerDocState;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pageNumber"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->hasDoc:Z

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "doc_nodetect"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->appendBasicCheck(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordActionPrompt(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isCompleted:Z

    if-nez v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "doc_incomplete"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->appendBasicCheck(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordActionPrompt(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isReflected:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "doc_reflection"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->appendBasicCheck(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordActionPrompt(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isBlur:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "doc_vague"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->appendBasicCheck(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordActionPrompt(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    goto :goto_0

    .line 15
    :cond_3
    iget-boolean p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isCopy:Z

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "doc_copyreject"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->appendBasicCheck(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordActionPrompt(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mCurrentMessage:I

    .line 18
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->startProcessImg()V

    return-void
.end method

.method private initAlgorithm()V
    .locals 7

    .line 1
    new-instance v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    .line 2
    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->getmPublicKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pubkey"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getDocFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mappingToPic(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "docFrameRect"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->getRotateTimes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotateTimes"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;

    invoke-direct {v3, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mAlgorithmModule:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isAlgorithmStarted:Z

    .line 9
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isAlgorithmStarted:Z

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$5;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$5;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordStartScan()V

    :goto_0
    return-void
.end method

.method private initCountDownTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getModules()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/module/DocModule;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/DocModule;->getColl()Lcom/zoloz/android/phone/zdoc/module/CollModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getScanTimeout()I

    move-result v0

    .line 2
    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {v1, v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;-><init>(I)V

    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$3;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    return-void
.end method

.method private startProcessImg()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected formatConfigs()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->formatConfigs()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getModules()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/module/DocModule;

    .line 3
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/DocModule;->getColl()Lcom/zoloz/android/phone/zdoc/module/CollModule;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/DocModule;->getAlgorithm()Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mAlgorithmModule:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mAlgorithmModule:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getAlgoType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->setAlgoType(I)V

    .line 6
    new-instance v0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    invoke-direct {v0}, Lcom/zoloz/android/phone/zdoc/module/UploadModule;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    .line 7
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getDocType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->setDocType(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getPageNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->setPageNo(I)V

    .line 9
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->setRatio(F)V

    .line 10
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mAlgorithmModule:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mUploadModule:Lcom/zoloz/android/phone/zdoc/module/UploadModule;

    .line 12
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->config(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected handleAlert(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleAlert(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    :cond_0
    return-void
.end method

.method protected handleCapture()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleCapture()V

    .line 2
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isCompleted:Z

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->reset()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->reset()V

    .line 8
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V

    :cond_1
    return-void
.end method

.method protected handleUserConfirm()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleUserConfirm()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->initCountDownTimer()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 5
    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isCompleted:Z

    .line 7
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->isAlgorithmStarted:Z

    .line 8
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->release()V

    .line 10
    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mToygerDocService:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v1, "backstage_interrupt"

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->alert_interrupt_error_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->alert_interrupt_error_msg:I

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->btn_retry:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$1;

    invoke-direct {v6, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->btn_exit:I

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$2;

    invoke-direct {v8, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$2;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;)V

    .line 8
    invoke-virtual/range {v2 .. v8}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    :cond_0
    return-void
.end method
