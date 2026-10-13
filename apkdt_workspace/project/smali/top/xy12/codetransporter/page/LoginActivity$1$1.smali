.class Ltop/xy12/codetransporter/page/LoginActivity$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ltop/xy12/codetransporter/interfaces/ILoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/page/LoginActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/page/LoginActivity$1;)V
    .locals 0

    .line 99
    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFail$0$top-xy12-codetransporter-page-LoginActivity$1$1(Ljava/lang/String;)V
    .locals 2

    .line 113
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    iget-object v0, v0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 109
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    iget-object v0, v0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$300(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    iget-object v0, v0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$300(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 112
    :cond_0
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    iget-object v0, v0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    new-instance v1, Ltop/xy12/codetransporter/page/LoginActivity$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ltop/xy12/codetransporter/page/LoginActivity$1$1$$ExternalSyntheticLambda0;-><init>(Ltop/xy12/codetransporter/page/LoginActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltop/xy12/codetransporter/page/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 102
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    iget-object v0, v0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$300(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity$1$1;->this$1:Ltop/xy12/codetransporter/page/LoginActivity$1;

    iget-object v0, v0, Ltop/xy12/codetransporter/page/LoginActivity$1;->this$0:Ltop/xy12/codetransporter/page/LoginActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/LoginActivity;->access$300(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
