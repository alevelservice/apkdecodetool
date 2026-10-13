.class Lcom/zoloz/webcontainer/n/a/c;
.super Ljava/lang/Object;
.source "H5LoadingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/zoloz/webcontainer/n/a/b;


# direct methods
.method constructor <init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/n/a/c;->f:Lcom/zoloz/webcontainer/n/a/b;

    iput-object p2, p0, Lcom/zoloz/webcontainer/n/a/c;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/c;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/c;->f:Lcom/zoloz/webcontainer/n/a/b;

    invoke-static {v0}, Lcom/zoloz/webcontainer/n/a/b;->a(Lcom/zoloz/webcontainer/n/a/b;)Lcom/zoloz/webcontainer/n/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
