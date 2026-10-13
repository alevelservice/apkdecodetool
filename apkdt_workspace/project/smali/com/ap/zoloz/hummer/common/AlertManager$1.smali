.class Lcom/ap/zoloz/hummer/common/AlertManager$1;
.super Ljava/lang/Object;
.source "AlertManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/common/AlertManager;

.field final synthetic val$callback:Lcom/ap/zoloz/hummer/common/IAlertCallback;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/common/AlertManager;Lcom/ap/zoloz/hummer/common/IAlertCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/common/AlertManager$1;->this$0:Lcom/ap/zoloz/hummer/common/AlertManager;

    iput-object p2, p0, Lcom/ap/zoloz/hummer/common/AlertManager$1;->val$callback:Lcom/ap/zoloz/hummer/common/IAlertCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ap/zoloz/hummer/common/AlertManager$1;->val$callback:Lcom/ap/zoloz/hummer/common/IAlertCallback;

    invoke-interface {p1}, Lcom/ap/zoloz/hummer/common/IAlertCallback;->onPositive()V

    return-void
.end method
