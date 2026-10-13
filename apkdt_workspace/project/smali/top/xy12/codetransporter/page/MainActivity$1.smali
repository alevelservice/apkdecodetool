.class Ltop/xy12/codetransporter/page/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ltop/xy12/codetransporter/interfaces/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/page/MainActivity;->sendHeart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/page/MainActivity;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/page/MainActivity;)V
    .locals 0

    .line 302
    iput-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity$1;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFail$1$top-xy12-codetransporter-page-MainActivity$1(Ljava/lang/String;)V
    .locals 3

    .line 313
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity$1;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/MainActivity;->access$400(Ltop/xy12/codetransporter/page/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apk Offline\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onSuccess$0$top-xy12-codetransporter-page-MainActivity$1()V
    .locals 2

    .line 306
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity$1;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-static {v0}, Ltop/xy12/codetransporter/page/MainActivity;->access$400(Ltop/xy12/codetransporter/page/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "apk Online success"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 312
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity$1;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    new-instance v1, Ltop/xy12/codetransporter/page/MainActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ltop/xy12/codetransporter/page/MainActivity$1$$ExternalSyntheticLambda1;-><init>(Ltop/xy12/codetransporter/page/MainActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 305
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity$1;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    new-instance v1, Ltop/xy12/codetransporter/page/MainActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltop/xy12/codetransporter/page/MainActivity$1$$ExternalSyntheticLambda0;-><init>(Ltop/xy12/codetransporter/page/MainActivity$1;)V

    invoke-virtual {v0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
