.class public abstract Le/f/f/d/b;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Le/f/f/i/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/f/d/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Le/f/f/d/b<",
        "TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/f/i/d;"
    }
.end annotation


# static fields
.field private static final p:Le/f/f/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/f/d/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/lang/NullPointerException;

.field private static final r:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/f/f/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Le/f/f/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/f/d/d<",
            "-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Le/f/f/d/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Le/f/f/i/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/f/f/d/b$a;

    invoke-direct {v0}, Le/f/f/d/b$a;-><init>()V

    sput-object v0, Le/f/f/d/b;->p:Le/f/f/d/d;

    .line 2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/f/f/d/b;->q:Ljava/lang/NullPointerException;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Le/f/f/d/b;->r:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Le/f/f/d/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/f/d/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/f/f/d/b;->b:Ljava/util/Set;

    .line 4
    invoke-direct {p0}, Le/f/f/d/b;->m()V

    return-void
.end method

.method protected static l()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Le/f/f/d/b;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/f/f/d/b;->c:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Le/f/f/d/b;->e:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Le/f/f/d/b;->f:[Ljava/lang/Object;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Le/f/f/d/b;->g:Z

    .line 6
    iput-object v0, p0, Le/f/f/d/b;->i:Le/f/f/d/d;

    .line 7
    iput-object v0, p0, Le/f/f/d/b;->j:Le/f/f/d/e;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Le/f/f/d/b;->k:Z

    .line 9
    iput-boolean v1, p0, Le/f/f/d/b;->l:Z

    .line 10
    iput-object v0, p0, Le/f/f/d/b;->o:Le/f/f/i/a;

    .line 11
    iput-object v0, p0, Le/f/f/d/b;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Le/f/f/i/a;Ljava/lang/String;)Lcom/facebook/common/internal/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Le/f/f/d/b;->h:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0, p1, p2, v1}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/j;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Le/f/f/d/b;->f:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 18
    iget-boolean v0, p0, Le/f/f/d/b;->g:Z

    .line 19
    invoke-virtual {p0, p1, p2, v1, v0}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/common/internal/j;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 20
    iget-object v1, p0, Le/f/f/d/b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Le/f/f/d/b;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/j;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 24
    invoke-static {v1, p1}, Le/f/d/g;->a(Ljava/util/List;Z)Le/f/d/g;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 25
    sget-object p1, Le/f/f/d/b;->q:Ljava/lang/NullPointerException;

    invoke-static {p1}, Le/f/d/d;->a(Ljava/lang/Throwable;)Lcom/facebook/common/internal/j;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method protected a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            "Ljava/lang/String;",
            "TREQUEST;)",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 34
    sget-object v0, Le/f/f/d/b$c;->FULL_FETCH:Le/f/f/d/b$c;

    invoke-virtual {p0, p1, p2, p3, v0}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Le/f/f/d/b$c;)Lcom/facebook/common/internal/j;

    move-result-object p1

    return-object p1
.end method

.method protected a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Le/f/f/d/b$c;)Lcom/facebook/common/internal/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Le/f/f/d/b$c;",
            ")",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Le/f/f/d/b;->c()Ljava/lang/Object;

    move-result-object v5

    .line 36
    new-instance v7, Le/f/f/d/b$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Le/f/f/d/b$b;-><init>(Le/f/f/d/b;Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Le/f/f/d/b$c;)V

    return-object v7
.end method

.method protected a(Le/f/f/i/a;Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/common/internal/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            "Ljava/lang/String;",
            "[TREQUEST;Z)",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TIMAGE;>;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 27
    :goto_0
    array-length v2, p3

    if-ge p4, v2, :cond_0

    .line 28
    aget-object v2, p3, p4

    sget-object v3, Le/f/f/d/b$c;->BITMAP_MEMORY_CACHE:Le/f/f/d/b$c;

    .line 29
    invoke-virtual {p0, p1, p2, v2, v3}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Le/f/f/d/b$c;)Lcom/facebook/common/internal/j;

    move-result-object v2

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    array-length p4, p3

    if-ge v1, p4, :cond_1

    .line 32
    aget-object p4, p3, v1

    invoke-virtual {p0, p1, p2, p4}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/j;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_1
    invoke-static {v0}, Le/f/d/f;->a(Ljava/util/List;)Le/f/d/f;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Le/f/f/d/b$c;)Le/f/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            "Ljava/lang/String;",
            "TREQUEST;",
            "Ljava/lang/Object;",
            "Le/f/f/d/b$c;",
            ")",
            "Le/f/d/c<",
            "TIMAGE;>;"
        }
    .end annotation
.end method

.method public a()Le/f/f/d/a;
    .locals 1

    .line 9
    invoke-virtual {p0}, Le/f/f/d/b;->k()V

    .line 10
    iget-object v0, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/f/f/d/b;->f:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/f/f/d/b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 11
    iput-object v0, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Le/f/f/d/b;->e:Ljava/lang/Object;

    .line 13
    :cond_0
    invoke-virtual {p0}, Le/f/f/d/b;->b()Le/f/f/d/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Le/f/f/i/a;)Le/f/f/d/b;
    .locals 0
    .param p1    # Le/f/f/i/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Le/f/f/d/b;->o:Le/f/f/i/a;

    .line 8
    invoke-virtual {p0}, Le/f/f/d/b;->i()Le/f/f/d/b;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Le/f/f/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Le/f/f/d/b;->c:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/f/f/d/b;->i()Le/f/f/d/b;

    return-object p0
.end method

.method public a(Z)Le/f/f/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .line 5
    iput-boolean p1, p0, Le/f/f/d/b;->l:Z

    .line 6
    invoke-virtual {p0}, Le/f/f/d/b;->i()Le/f/f/d/b;

    return-object p0
.end method

.method public bridge synthetic a()Le/f/f/i/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/f/d/b;->a()Le/f/f/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Le/f/f/i/a;)Le/f/f/i/d;
    .locals 0
    .param p1    # Le/f/f/i/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1}, Le/f/f/d/b;->a(Le/f/f/i/a;)Le/f/f/d/b;

    return-object p0
.end method

.method protected a(Le/f/f/d/a;)V
    .locals 2

    .line 37
    iget-object v0, p0, Le/f/f/d/b;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/f/d/d;

    .line 39
    invoke-virtual {p1, v1}, Le/f/f/d/a;->a(Le/f/f/d/d;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Le/f/f/d/b;->i:Le/f/f/d/d;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1, v0}, Le/f/f/d/a;->a(Le/f/f/d/d;)V

    .line 42
    :cond_1
    iget-boolean v0, p0, Le/f/f/d/b;->l:Z

    if-eqz v0, :cond_2

    .line 43
    sget-object v0, Le/f/f/d/b;->p:Le/f/f/d/d;

    invoke-virtual {p1, v0}, Le/f/f/d/a;->a(Le/f/f/d/d;)V

    :cond_2
    return-void
.end method

.method protected b()Le/f/f/d/a;
    .locals 2

    .line 3
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeControllerBuilder#buildController"

    .line 4
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/f/f/d/b;->j()Le/f/f/d/a;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Le/f/f/d/b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/f/f/d/a;->a(Z)V

    .line 7
    invoke-virtual {p0}, Le/f/f/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/f/d/a;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Le/f/f/d/b;->e()Le/f/f/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/f/d/a;->a(Le/f/f/d/e;)V

    .line 9
    invoke-virtual {p0, v0}, Le/f/f/d/b;->c(Le/f/f/d/a;)V

    .line 10
    invoke-virtual {p0, v0}, Le/f/f/d/b;->a(Le/f/f/d/a;)V

    .line 11
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Le/f/f/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Le/f/f/d/b;->i()Le/f/f/d/b;

    return-object p0
.end method

.method protected b(Le/f/f/d/a;)V
    .locals 1

    .line 13
    invoke-virtual {p1}, Le/f/f/d/a;->k()Le/f/f/h/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Le/f/f/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Le/f/f/h/a;->a(Landroid/content/Context;)Le/f/f/h/a;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Le/f/f/d/a;->a(Le/f/f/h/a;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/d/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method protected c(Le/f/f/d/a;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Le/f/f/d/b;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/f/f/d/a;->m()Le/f/f/c/c;

    move-result-object v0

    iget-boolean v1, p0, Le/f/f/d/b;->k:Z

    invoke-virtual {v0, v1}, Le/f/f/c/c;->a(Z)V

    .line 4
    invoke-virtual {p0, p1}, Le/f/f/d/b;->b(Le/f/f/d/a;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/d/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e()Le/f/f/d/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/d/b;->j:Le/f/f/d/e;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Le/f/f/i/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/f/d/b;->o:Le/f/f/i/a;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/f/d/b;->m:Z

    return v0
.end method

.method protected final i()Le/f/f/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    return-object p0
.end method

.method protected abstract j()Le/f/f/d/a;
.end method

.method protected k()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/f/d/b;->f:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/h;->b(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/f/f/d/b;->h:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/f/f/d/b;->f:[Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Le/f/f/d/b;->d:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Le/f/f/d/b;->e:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lcom/facebook/common/internal/h;->b(ZLjava/lang/Object;)V

    return-void
.end method
