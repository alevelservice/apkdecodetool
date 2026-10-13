.class Lcom/ap/zoloz/hummer/common/AlertManager$5;
.super Ljava/lang/Object;
.source "AlertManager.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/common/IAlertCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/common/AlertManager;

.field final synthetic val$iAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/common/AlertManager;Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/common/AlertManager$5;->this$0:Lcom/ap/zoloz/hummer/common/AlertManager;

    iput-object p2, p0, Lcom/ap/zoloz/hummer/common/AlertManager$5;->val$iAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/common/AlertManager$5;->val$iAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;->onHandelNetworkError(Z)V

    :cond_0
    return-void
.end method

.method public onPositive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/common/AlertManager$5;->val$iAlertManagerCallback:Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/ap/zoloz/hummer/common/IAlertManagerCallback;->onHandelNetworkError(Z)V

    :cond_0
    return-void
.end method
