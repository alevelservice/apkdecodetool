.class Lcom/facebook/imagepipeline/memory/p$a;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Le/f/c/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/p;-><init>(Le/f/c/f/c;Lcom/facebook/imagepipeline/memory/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/c/g/c<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/p;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/p$a;->a:Lcom/facebook/imagepipeline/memory/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/p$a;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p$a;->a:Lcom/facebook/imagepipeline/memory/p;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/p;->a([B)V

    return-void
.end method
