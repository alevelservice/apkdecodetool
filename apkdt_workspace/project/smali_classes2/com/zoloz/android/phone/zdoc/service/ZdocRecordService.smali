.class public Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "ZdocRecordService.java"


# static fields
.field public static final ACTION_PROMPT:Ljava/lang/String; = "actionPrompt"

.field public static final ACTIVE_EXIT:Ljava/lang/String; = "active_exit"

.field public static final ALERT_APPEAR:Ljava/lang/String; = "alertAppear"

.field public static final ALERT_CHOOSE:Ljava/lang/String; = "alertChoose"

.field public static final APDIDTOKEN:Ljava/lang/String; = "apdidToken"

.field public static final AUTH_CHECK:Ljava/lang/String; = "authCheck"

.field public static final AUTH_CHECK_RESULT:Ljava/lang/String; = "authCheckResult"

.field public static final BACKSTAGE_INTERRUPT:Ljava/lang/String; = "backstage_interrupt"

.field public static final BASIC_CHECK:Ljava/lang/String; = "basicCheck"

.field public static final BISTOKEN:Ljava/lang/String; = "bisToken"

.field public static final CAMERA_ERROR:Ljava/lang/String; = "camera_error"

.field public static final CAPTURE_MODE:Ljava/lang/String; = "captureMode"

.field public static final CAPTURE_RESULT:Ljava/lang/String; = "captureResult"

.field public static final CLICK_ALERT:Ljava/lang/String; = "clickAlert"

.field public static final CLICK_BUTTON:Ljava/lang/String; = "clickButton"

.field public static final CLICK_ITEM:Ljava/lang/String; = "clickItem"

.field public static final COMPRESS_RESULT:Ljava/lang/String; = "compressResult"

.field public static final DEVICE_BRAND:Ljava/lang/String; = "deviceBrand"

.field public static final DOC_COPY:Ljava/lang/String; = "doc_copyreject"

.field public static final DOC_INCOMPLETE:Ljava/lang/String; = "doc_incomplete"

.field public static final DOC_NO_DETECT:Ljava/lang/String; = "doc_nodetect"

.field public static final DOC_REFLECTION:Ljava/lang/String; = "doc_reflection"

.field public static final DOC_TYPE:Ljava/lang/String; = "docType"

.field public static final DOC_VAGUE:Ljava/lang/String; = "doc_vague"

.field public static final END_SCAN:Ljava/lang/String; = "endScan"

.field public static final END_ZDOC:Ljava/lang/String; = "endZdoc"

.field public static final FRAME_SIZE_WH:Ljava/lang/String; = "ztech_zdoc_frame_size"

.field public static final GO_BACK:Ljava/lang/String; = "go_back"

.field public static final MAX_PAGE:Ljava/lang/String; = "maxPage"

.field public static final NETWORK_ERROR:Ljava/lang/String; = "network_error"

.field public static final ON_PAGE:Ljava/lang/String; = "onPage"

.field public static final OVERTIME_ERROR:Ljava/lang/String; = "overtime_error"

.field public static final OVERTIME_REASON:Ljava/lang/String; = "overtimeReason"

.field public static final OVER_THRESHOLD:Ljava/lang/String; = "overThreshold"

.field public static final OVER_THRESHOLD_ERROR:Ljava/lang/String; = "overthreshold_error"

.field public static final OVER_TIME:Ljava/lang/String; = "overtime"

.field public static final PAGE_CONTENT:Ljava/lang/String; = "pageContent"

.field public static final PAGE_NUMBER:Ljava/lang/String; = "pageNumber"

.field public static final PARAMES:Ljava/lang/String; = "params"

.field public static final PHOTO_CANCEL:Ljava/lang/String; = "photo_cancel"

.field public static final PHOTO_CONFIRM:Ljava/lang/String; = "photo_confirm"

.field public static final POST_COMPRESS_SIZE:Ljava/lang/String; = "postCompressSize"

.field public static final PRE_COMPRESS_SIZE:Ljava/lang/String; = "preCompressSize"

.field public static final PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final RPC_RESULT_CODE:Ljava/lang/String; = "rpcResultCode"

.field public static final SCAN_OVER_TIME:Ljava/lang/String; = "scan_overtime"

.field public static final SCAN_RESULT:Ljava/lang/String; = "scanResult"

.field public static final SCENCE_ID:Ljava/lang/String; = "sceneId"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field public static final SERVER_QUALITY_ERROR:Ljava/lang/String; = "serverQuality_error"

.field public static final SERVER_RESULT:Ljava/lang/String; = "serverResult"

.field public static final START_SCAN:Ljava/lang/String; = "startScan"

.field public static final START_ZDOC:Ljava/lang/String; = "startZdoc"

.field public static final SYSTEM_EXCEPTION_ERROR:Ljava/lang/String; = "systemException_error"

.field public static final TAKE_PHOTO:Ljava/lang/String; = "take_photo"

.field public static final TECH_SEED:Ljava/lang/String; = "techSeed"

.field public static final UPLOAD_END:Ljava/lang/String; = "uploadEnd"

.field public static final UPLOAD_RESULT:Ljava/lang/String; = "uploadResult"

.field public static final UPLOAD_START:Ljava/lang/String; = "uploadStart"

.field public static final UPLOAD_TIME:Ljava/lang/String; = "uploadTime"

.field public static final VALIDATION_RESULT:Ljava/lang/String; = "validationResult"

.field public static final ZDOC_RESULT:Ljava/lang/String; = "zdocResult"


# instance fields
.field protected mRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/common/record/MetaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->addExtProperties(Ljava/util/Map;)V

    return-void
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/service/BioService;->onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-01"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "startZdoc"

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "startZdoc"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-02"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "captureMode"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "captureMode"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-03"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "authCheck"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "authCheck"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-04"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "startScan"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "startScan"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-05"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "basicCheck"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "basicCheck"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-06"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "overtime"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "overtime"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-07"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "overThreshold"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "overThreshold"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-08"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "compressResult"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "compressResult"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-09"

    const-string v3, "openPage"

    const-string v4, "20000189"

    const-string v5, "uploadStart"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "uploadStart"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-10"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "uploadEnd"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "uploadEnd"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-11"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "endZdoc"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "endZdoc"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-12"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "clickButton"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "clickButton"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-13"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "alertAppear"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "alertAppear"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-14"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "alertChoose"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "alertChoose"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-15"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "actionPrompt"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "actionPrompt"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-16"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "endScan"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "endScan"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-17"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "techSeed"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "techSeed"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    new-instance v7, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string v2, "UC-YWRLSB-161114-19"

    const-string v3, "event"

    const-string v4, "20000189"

    const-string v5, "ztech_zdoc_frame_size"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ztech_zdoc_frame_size"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v0, Lcom/alipay/mobile/security/bio/service/ZimRecordService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/security/bio/service/ZimRecordService;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/security/bio/service/BioService;->onDestroy()V

    return-void
.end method

.method public retry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->retry()V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;Ljava/util/Map;)Z

    return-void
.end method
