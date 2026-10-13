.class public Lcom/facebook/imagepipeline/core/h$b;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final A:Lcom/facebook/imagepipeline/core/i$b;

.field private B:Z

.field private a:Landroid/graphics/Bitmap$Config;

.field private b:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Le/f/i/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Le/f/i/c/h$c;

.field private d:Le/f/i/c/f;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Le/f/i/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/core/e;

.field private i:Le/f/i/c/n;

.field private j:Le/f/i/e/c;

.field private k:Lcom/facebook/imagepipeline/transcoder/d;

.field private l:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/facebook/cache/disk/b;

.field private o:Le/f/c/f/c;

.field private p:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/imagepipeline/producers/e0;

.field private r:Le/f/i/b/f;

.field private s:Lcom/facebook/imagepipeline/memory/e0;

.field private t:Le/f/i/e/e;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/f/i/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/facebook/cache/disk/b;

.field private x:Lcom/facebook/imagepipeline/core/f;

.field private y:Le/f/i/e/d;

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h$b;->l:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h$b;->p:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->v:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/facebook/imagepipeline/core/h$b;->z:I

    .line 8
    new-instance v1, Lcom/facebook/imagepipeline/core/i$b;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/i$b;-><init>(Lcom/facebook/imagepipeline/core/h$b;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/h$b;->A:Lcom/facebook/imagepipeline/core/i$b;

    .line 9
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/h$b;->B:Z

    .line 10
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$b;->e:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->f:Z

    return p0
.end method

.method static synthetic B(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/internal/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->g:Lcom/facebook/common/internal/j;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->A:Lcom/facebook/imagepipeline/core/i$b;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/c/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->i:Le/f/i/c/n;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/e/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->j:Le/f/i/e/c;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/core/h$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/internal/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->m:Lcom/facebook/common/internal/j;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/cache/disk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->n:Lcom/facebook/cache/disk/b;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/core/h$b;)Le/f/c/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->o:Le/f/c/f/c;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/core/h$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/h$b;->z:I

    return p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/producers/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->q:Lcom/facebook/imagepipeline/producers/e0;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/b/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->r:Le/f/i/b/f;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/memory/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->s:Lcom/facebook/imagepipeline/memory/e0;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/common/internal/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->b:Lcom/facebook/common/internal/j;

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/e/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->t:Le/f/i/e/e;

    return-object p0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/core/h$b;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->u:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->v:Z

    return p0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/cache/disk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->w:Lcom/facebook/cache/disk/b;

    return-object p0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/e/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->y:Le/f/i/e/d;

    return-object p0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/core/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->h:Lcom/facebook/imagepipeline/core/e;

    return-object p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/core/h$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/h$b;->B:Z

    return p0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/transcoder/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->k:Lcom/facebook/imagepipeline/transcoder/d;

    return-object p0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/core/h$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/core/h$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/c/h$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->c:Le/f/i/c/h$c;

    return-object p0
.end method

.method static synthetic x(Lcom/facebook/imagepipeline/core/h$b;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->a:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic y(Lcom/facebook/imagepipeline/core/h$b;)Le/f/i/c/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->d:Le/f/i/c/f;

    return-object p0
.end method

.method static synthetic z(Lcom/facebook/imagepipeline/core/h$b;)Lcom/facebook/imagepipeline/core/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h$b;->x:Lcom/facebook/imagepipeline/core/f;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/core/h;
    .locals 2

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/core/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/h;-><init>(Lcom/facebook/imagepipeline/core/h$b;Lcom/facebook/imagepipeline/core/h$a;)V

    return-object v0
.end method
