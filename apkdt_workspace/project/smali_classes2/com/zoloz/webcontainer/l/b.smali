.class Lcom/zoloz/webcontainer/l/b;
.super Ljava/lang/Object;
.source "H5OfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/zoloz/webcontainer/l/a;


# direct methods
.method constructor <init>(Lcom/zoloz/webcontainer/l/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    iput-object p2, p0, Lcom/zoloz/webcontainer/l/b;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v0}, Lcom/zoloz/webcontainer/l/a;->a(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5OfflineManager"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zoloz/webcontainer/l/b;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v3}, Lcom/zoloz/webcontainer/l/a;->b(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/ekyc_web"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zoloz/webcontainer/l/a;->a(Lcom/zoloz/webcontainer/l/a;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    iget-object v2, p0, Lcom/zoloz/webcontainer/l/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/zoloz/webcontainer/l/a;->a(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v4}, Lcom/zoloz/webcontainer/l/a;->c(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/zoloz/webcontainer/p/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/zoloz/webcontainer/l/a;->a(Lcom/zoloz/webcontainer/l/a;Z)Z

    const-string v0, "resourceId have not been set, unzip from assets"

    .line 4
    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zoloz/webcontainer/l/b;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v3}, Lcom/zoloz/webcontainer/l/a;->d(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zoloz/webcontainer/l/a;->a(Lcom/zoloz/webcontainer/l/a;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unzip base path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v2}, Lcom/zoloz/webcontainer/l/a;->c(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    iget-object v2, p0, Lcom/zoloz/webcontainer/l/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/zoloz/webcontainer/l/a;->e(Lcom/zoloz/webcontainer/l/a;)I

    move-result v3

    iget-object v4, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v4}, Lcom/zoloz/webcontainer/l/a;->c(Lcom/zoloz/webcontainer/l/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/zoloz/webcontainer/p/c;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/zoloz/webcontainer/l/a;->a(Lcom/zoloz/webcontainer/l/a;Z)Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unzip base path ok? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-static {v2}, Lcom/zoloz/webcontainer/l/a;->f(Lcom/zoloz/webcontainer/l/a;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/b;->f:Lcom/zoloz/webcontainer/l/a;

    iget-object v0, v0, Lcom/zoloz/webcontainer/l/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
