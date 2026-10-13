.class Lcom/facebook/imagepipeline/producers/t$b;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/t;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/t$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/imagepipeline/producers/t;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/t$b;->e:Lcom/facebook/imagepipeline/producers/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t$b;->e:Lcom/facebook/imagepipeline/producers/t;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/t;->b(Lcom/facebook/imagepipeline/producers/t;)V

    return-void
.end method
