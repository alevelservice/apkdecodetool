.class Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;
.super Ljava/lang/Object;
.source "BioUploadWatchThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

.field final synthetic val$result:Lcom/alipay/mobile/security/bio/service/BioUploadResult;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->this$0:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    iput-object p2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->val$result:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->this$0:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;->val$result:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->access$000(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    return-void
.end method
