.class Lcom/zoloz/webcontainer/a/a/c;
.super Ljava/lang/Object;
.source "ZolozJSBridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Lcom/zoloz/webcontainer/j/b;


# direct methods
.method constructor <init>(Lcom/zoloz/webcontainer/a/a/b;Lcom/zoloz/webcontainer/j/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/zoloz/webcontainer/a/a/c;->e:Lcom/zoloz/webcontainer/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/l/d;->a()Lcom/zoloz/webcontainer/l/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/a/a/c;->e:Lcom/zoloz/webcontainer/j/b;

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/j/b;)V

    return-void
.end method
