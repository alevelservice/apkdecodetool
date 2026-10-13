.class Lcom/zoloz/webcontainer/o;
.super Ljava/lang/Object;
.source "WebCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic e:Lcom/zoloz/webcontainer/j/a;

.field final synthetic f:Lcom/zoloz/webcontainer/WebCActivity;


# direct methods
.method constructor <init>(Lcom/zoloz/webcontainer/WebCActivity;Lcom/zoloz/webcontainer/j/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/o;->f:Lcom/zoloz/webcontainer/WebCActivity;

    iput-object p2, p0, Lcom/zoloz/webcontainer/o;->e:Lcom/zoloz/webcontainer/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/zoloz/webcontainer/o;->e:Lcom/zoloz/webcontainer/j/a;

    sget-object v0, Lcom/zoloz/webcontainer/j/a;->BTN_LEFT:Lcom/zoloz/webcontainer/j/a;

    if-ne p1, v0, :cond_0

    const-string p1, "indexLeftMenu"

    goto :goto_0

    :cond_0
    const-string p1, "optionMenu"

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/o;->f:Lcom/zoloz/webcontainer/WebCActivity;

    invoke-static {v0}, Lcom/zoloz/webcontainer/WebCActivity;->access$000(Lcom/zoloz/webcontainer/WebCActivity;)Lcom/zoloz/webcontainer/r/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/r/b;->a()Lcom/zoloz/webcontainer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/o;->f:Lcom/zoloz/webcontainer/WebCActivity;

    invoke-static {v1}, Lcom/zoloz/webcontainer/WebCActivity;->access$000(Lcom/zoloz/webcontainer/WebCActivity;)Lcom/zoloz/webcontainer/r/b;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/zoloz/webcontainer/a/c;->b(Lcom/zoloz/webcontainer/r/a;Ljava/lang/String;)V

    return-void
.end method
