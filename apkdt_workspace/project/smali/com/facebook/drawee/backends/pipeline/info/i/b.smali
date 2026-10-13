.class public Lcom/facebook/drawee/backends/pipeline/info/i/b;
.super Ljava/lang/Object;
.source "ImagePerfImageOriginListener.java"

# interfaces
.implements Lcom/facebook/drawee/backends/pipeline/info/b;


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/info/h;

.field private final b:Lcom/facebook/drawee/backends/pipeline/info/g;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/backends/pipeline/info/h;Lcom/facebook/drawee/backends/pipeline/info/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/b;->a:Lcom/facebook/drawee/backends/pipeline/info/h;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/b;->b:Lcom/facebook/drawee/backends/pipeline/info/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/b;->a:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(I)V

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/b;->b:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/b;->a:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/g;->b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    return-void
.end method
