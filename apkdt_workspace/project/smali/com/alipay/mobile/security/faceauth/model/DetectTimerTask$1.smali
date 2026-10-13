.class Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;
.super Ljava/util/TimerTask;
.source "DetectTimerTask.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->this$0:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->this$0:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mTimeout:I

    iget v2, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mInternal:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mTimeout:I

    .line 2
    iget v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mTimeout:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mTimeout:I

    .line 4
    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->myTime:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->this$0:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget-object v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mTimerTaskListener:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    if-eqz v1, :cond_1

    .line 6
    iget v0, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->mTimeout:I

    invoke-interface {v1, v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;->countdown(I)V

    :cond_1
    return-void
.end method
