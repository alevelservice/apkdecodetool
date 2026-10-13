.class public Le/f/f/g/b;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# static fields
.field public static final s:Le/f/f/f/q$b;

.field public static final t:Le/f/f/f/q$b;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:I

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Le/f/f/f/q$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Le/f/f/f/q$b;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Le/f/f/f/q$b;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Le/f/f/f/q$b;

.field private l:Le/f/f/f/q$b;

.field private m:Landroid/graphics/PointF;

.field private n:Landroid/graphics/ColorFilter;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Le/f/f/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/f/f/f/q$b;->f:Le/f/f/f/q$b;

    sput-object v0, Le/f/f/g/b;->s:Le/f/f/f/q$b;

    .line 2
    sget-object v0, Le/f/f/f/q$b;->g:Le/f/f/f/q$b;

    sput-object v0, Le/f/f/g/b;->t:Le/f/f/f/q$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/f/g/b;->a:Landroid/content/res/Resources;

    .line 3
    invoke-direct {p0}, Le/f/f/g/b;->t()V

    return-void
.end method

.method private t()V
    .locals 2

    const/16 v0, 0x12c

    .line 1
    iput v0, p0, Le/f/f/g/b;->b:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/f/f/g/b;->c:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/f/g/b;->d:Landroid/graphics/drawable/Drawable;

    .line 4
    sget-object v1, Le/f/f/g/b;->s:Le/f/f/f/q$b;

    iput-object v1, p0, Le/f/f/g/b;->e:Le/f/f/f/q$b;

    .line 5
    iput-object v0, p0, Le/f/f/g/b;->f:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Le/f/f/g/b;->g:Le/f/f/f/q$b;

    .line 7
    iput-object v0, p0, Le/f/f/g/b;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v1, p0, Le/f/f/g/b;->i:Le/f/f/f/q$b;

    .line 9
    iput-object v0, p0, Le/f/f/g/b;->j:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v1, p0, Le/f/f/g/b;->k:Le/f/f/f/q$b;

    .line 11
    sget-object v1, Le/f/f/g/b;->t:Le/f/f/f/q$b;

    iput-object v1, p0, Le/f/f/g/b;->l:Le/f/f/f/q$b;

    .line 12
    iput-object v0, p0, Le/f/f/g/b;->m:Landroid/graphics/PointF;

    .line 13
    iput-object v0, p0, Le/f/f/g/b;->n:Landroid/graphics/ColorFilter;

    .line 14
    iput-object v0, p0, Le/f/f/g/b;->o:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object v0, p0, Le/f/f/g/b;->p:Ljava/util/List;

    .line 16
    iput-object v0, p0, Le/f/f/g/b;->q:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object v0, p0, Le/f/f/g/b;->r:Le/f/f/g/e;

    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {v1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Le/f/f/g/a;
    .locals 1

    .line 6
    invoke-direct {p0}, Le/f/f/g/b;->u()V

    .line 7
    new-instance v0, Le/f/f/g/a;

    invoke-direct {v0, p0}, Le/f/f/g/a;-><init>(Le/f/f/g/b;)V

    return-object v0
.end method

.method public a(F)Le/f/f/g/b;
    .locals 0

    .line 2
    iput p1, p0, Le/f/f/g/b;->c:F

    return-object p0
.end method

.method public a(I)Le/f/f/g/b;
    .locals 0

    .line 1
    iput p1, p0, Le/f/f/g/b;->b:I

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Le/f/f/g/b;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Le/f/f/f/q$b;)Le/f/f/g/b;
    .locals 0
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Le/f/f/g/b;->l:Le/f/f/f/q$b;

    return-object p0
.end method

.method public a(Le/f/f/g/e;)Le/f/f/g/b;
    .locals 0
    .param p1    # Le/f/f/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Le/f/f/g/b;->r:Le/f/f/g/e;

    return-object p0
.end method

.method public b()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Le/f/f/g/b;->n:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Le/f/f/g/b;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(Le/f/f/f/q$b;)Le/f/f/g/b;
    .locals 0
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Le/f/f/g/b;->i:Le/f/f/f/q$b;

    return-object p0
.end method

.method public c()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Le/f/f/g/b;->m:Landroid/graphics/PointF;

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/f/f/g/b;->p:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/f/f/g/b;->p:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public c(Le/f/f/f/q$b;)Le/f/f/g/b;
    .locals 0
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Le/f/f/g/b;->e:Le/f/f/f/q$b;

    return-object p0
.end method

.method public d()Le/f/f/f/q$b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Le/f/f/g/b;->l:Le/f/f/f/q$b;

    return-object v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Le/f/f/g/b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public d(Le/f/f/f/q$b;)Le/f/f/g/b;
    .locals 0
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Le/f/f/g/b;->k:Le/f/f/f/q$b;

    return-object p0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Le/f/f/g/b;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/f/f/g/b;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 6
    iput-object v0, p0, Le/f/f/g/b;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method public e(Le/f/f/f/q$b;)Le/f/f/g/b;
    .locals 0
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Le/f/f/g/b;->g:Le/f/f/f/q$b;

    return-object p0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Le/f/f/g/b;->c:F

    return v0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Le/f/f/g/b;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/f/g/b;->b:I

    return v0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)Le/f/f/g/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Le/f/f/g/b;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i()Le/f/f/f/q$b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->i:Le/f/f/f/q$b;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->p:Ljava/util/List;

    return-object v0
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public l()Le/f/f/f/q$b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->e:Le/f/f/f/q$b;

    return-object v0
.end method

.method public m()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public o()Le/f/f/f/q$b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->k:Le/f/f/f/q$b;

    return-object v0
.end method

.method public p()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public r()Le/f/f/f/q$b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->g:Le/f/f/f/q$b;

    return-object v0
.end method

.method public s()Le/f/f/g/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/g/b;->r:Le/f/f/g/e;

    return-object v0
.end method
