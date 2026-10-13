.class Lcom/ap/zoloz/hummer/api/EkycFacade$1;
.super Ljava/lang/Object;
.source "EkycFacade.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/api/EkycFacade;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$1;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandelNetworkError(Z)V
    .locals 0

    return-void
.end method

.method public onHandelSystemError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$1;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    invoke-static {v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->access$000(Lcom/ap/zoloz/hummer/api/EkycFacade;)V

    return-void
.end method
