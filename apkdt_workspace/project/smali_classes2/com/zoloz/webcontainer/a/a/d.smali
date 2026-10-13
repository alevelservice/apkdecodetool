.class Lcom/zoloz/webcontainer/a/a/d;
.super Ljava/lang/Object;
.source "ZolozJSBridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Lcom/zoloz/webcontainer/j/b;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zoloz/webcontainer/a/a/b;Lcom/zoloz/webcontainer/j/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/zoloz/webcontainer/a/a/d;->e:Lcom/zoloz/webcontainer/j/b;

    iput-object p3, p0, Lcom/zoloz/webcontainer/a/a/d;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/a/a/d;->e:Lcom/zoloz/webcontainer/j/b;

    iget-object v0, v0, Lcom/zoloz/webcontainer/j/b;->a:Lcom/zoloz/webcontainer/c/a;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoloz/webcontainer/r/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zoloz/webcontainer/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
