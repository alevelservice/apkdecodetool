.class public Lcom/facebook/imagepipeline/core/i$b;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Le/f/c/k/b$a;

.field private c:Z

.field private d:Le/f/c/k/b;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field public i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lcom/facebook/imagepipeline/core/i$d;

.field public n:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/h$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->a:Z

    .line 3
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->c:Z

    .line 4
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->e:Z

    .line 5
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->f:Z

    .line 6
    iput p1, p0, Lcom/facebook/imagepipeline/core/i$b;->g:I

    .line 7
    iput p1, p0, Lcom/facebook/imagepipeline/core/i$b;->h:I

    .line 8
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->i:Z

    const/16 v0, 0x800

    .line 9
    iput v0, p0, Lcom/facebook/imagepipeline/core/i$b;->j:I

    .line 10
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->k:Z

    .line 11
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/core/i$b;)Le/f/c/k/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->b:Le/f/c/k/b$a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->l:Z

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/i$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->m:Lcom/facebook/imagepipeline/core/i$d;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->c:Z

    return p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/core/i$b;)Le/f/c/k/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->d:Le/f/c/k/b;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->e:Z

    return p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->f:Z

    return p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/core/i$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/i$b;->g:I

    return p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/core/i$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/i$b;->h:I

    return p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/core/i$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/i$b;->j:I

    return p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->k:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/core/i;
    .locals 2

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/core/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/i;-><init>(Lcom/facebook/imagepipeline/core/i$b;Lcom/facebook/imagepipeline/core/i$a;)V

    return-object v0
.end method
