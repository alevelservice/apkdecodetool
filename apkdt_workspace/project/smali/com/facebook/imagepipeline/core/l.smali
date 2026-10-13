.class public Lcom/facebook/imagepipeline/core/l;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Le/f/c/f/a;

.field private final e:Le/f/i/e/c;

.field private final f:Le/f/i/e/e;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/facebook/imagepipeline/core/e;

.field private final k:Le/f/c/f/h;

.field private final l:Le/f/i/c/e;

.field private final m:Le/f/i/c/e;

.field private final n:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Le/f/i/c/f;

.field private final q:Le/f/i/b/f;

.field private final r:I

.field private final s:I

.field private t:Z

.field private final u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/f/c/f/a;Le/f/i/e/c;Le/f/i/e/e;ZZZLcom/facebook/imagepipeline/core/e;Le/f/c/f/h;Le/f/i/c/p;Le/f/i/c/p;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Le/f/i/b/f;IIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/c/f/a;",
            "Le/f/i/e/c;",
            "Le/f/i/e/e;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/core/e;",
            "Le/f/c/f/h;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;",
            "Le/f/i/c/e;",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            "Le/f/i/b/f;",
            "IIZI)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->c:Landroid/content/res/AssetManager;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->d:Le/f/c/f/a;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->e:Le/f/i/e/c;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->f:Le/f/i/e/e;

    move v1, p5

    .line 8
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/l;->g:Z

    move v1, p6

    .line 9
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/l;->h:Z

    move v1, p7

    .line 10
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/l;->i:Z

    move-object v1, p8

    .line 11
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    move-object v1, p9

    .line 12
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    move-object v1, p10

    .line 13
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->o:Le/f/i/c/p;

    move-object v1, p11

    .line 14
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->n:Le/f/i/c/p;

    move-object v1, p12

    .line 15
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->l:Le/f/i/c/e;

    move-object v1, p13

    .line 16
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->m:Le/f/i/c/e;

    move-object/from16 v1, p14

    .line 17
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    move-object/from16 v1, p15

    .line 18
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->q:Le/f/i/b/f;

    move/from16 v1, p16

    .line 19
    iput v1, v0, Lcom/facebook/imagepipeline/core/l;->r:I

    move/from16 v1, p17

    .line 20
    iput v1, v0, Lcom/facebook/imagepipeline/core/l;->s:I

    move/from16 v1, p18

    .line 21
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/l;->t:Z

    move/from16 v1, p19

    .line 22
    iput v1, v0, Lcom/facebook/imagepipeline/core/l;->u:I

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/j;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/j;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/j;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public static o(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/e0;)Lcom/facebook/imagepipeline/producers/d0;
    .locals 3

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/producers/d0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->d:Le/f/c/f/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/d0;-><init>(Le/f/c/f/h;Le/f/c/f/a;Lcom/facebook/imagepipeline/producers/e0;)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->o:Le/f/i/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/f;-><init>(Le/f/i/c/p;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public a()Lcom/facebook/imagepipeline/producers/k;
    .locals 2

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/producers/k;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/k;-><init>(Le/f/c/f/h;)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/i0;ZLcom/facebook/imagepipeline/transcoder/d;)Lcom/facebook/imagepipeline/producers/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;Z",
            "Lcom/facebook/imagepipeline/transcoder/d;",
            ")",
            "Lcom/facebook/imagepipeline/producers/n0;"
        }
    .end annotation

    .line 6
    new-instance v6, Lcom/facebook/imagepipeline/producers/n0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/n0;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Lcom/facebook/imagepipeline/producers/i0;ZLcom/facebook/imagepipeline/transcoder/d;)V

    return-object v6
.end method

.method public a(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/r0;)Lcom/facebook/imagepipeline/producers/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/r0;",
            ")",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/facebook/imagepipeline/producers/q0;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/r0;)V

    return-object v0
.end method

.method public a([Lcom/facebook/imagepipeline/producers/u0;)Lcom/facebook/imagepipeline/producers/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/u0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/t0;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/producers/t0;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/t0;-><init>([Lcom/facebook/imagepipeline/producers/u0;)V

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/g;-><init>(Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/producers/u;
    .locals 4

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/u;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/u;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->o:Le/f/i/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Le/f/i/c/p;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/producers/v;
    .locals 4

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/v;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    iget v1, p0, Lcom/facebook/imagepipeline/core/l;->r:I

    iget v2, p0, Lcom/facebook/imagepipeline/core/l;->s:I

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/core/l;->t:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/i;-><init>(Lcom/facebook/imagepipeline/producers/i0;IIZ)V

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/producers/w;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/w;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/l;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/l;"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/facebook/imagepipeline/producers/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->d:Le/f/c/f/a;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->e:Le/f/i/e/c;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/l;->f:Le/f/i/e/e;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/l;->g:Z

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/core/l;->h:Z

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/core/l;->i:Z

    iget v9, p0, Lcom/facebook/imagepipeline/core/l;->u:I

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/producers/l;-><init>(Le/f/c/f/a;Ljava/util/concurrent/Executor;Le/f/i/e/c;Le/f/i/e/e;ZZZLcom/facebook/imagepipeline/producers/i0;I)V

    return-object v10
.end method

.method public e()Lcom/facebook/imagepipeline/producers/x;
    .locals 4

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/producers/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/n;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->l:Le/f/i/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->m:Le/f/i/c/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/n;-><init>(Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/producers/z;
    .locals 3

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/z;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;)V

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/producers/a0;
    .locals 4

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/a0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/a0;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/o;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->l:Le/f/i/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->m:Le/f/i/c/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/o;-><init>(Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/producers/b0;
    .locals 3

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/b0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/b0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public h(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/producers/m0;
    .locals 4

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/q;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->n:Le/f/i/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/q;-><init>(Le/f/i/c/p;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/f0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/f0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/f0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->l:Le/f/i/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/l;->d:Le/f/c/f/a;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/f0;-><init>(Le/f/i/c/e;Le/f/i/c/f;Le/f/c/f/h;Le/f/c/f/a;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v6
.end method

.method public k(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->o:Le/f/i/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->p:Le/f/i/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/g0;-><init>(Le/f/i/c/p;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->q:Le/f/i/b/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/h0;-><init>(Lcom/facebook/imagepipeline/producers/i0;Le/f/i/b/f;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/s0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/s0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/s0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/imagepipeline/producers/s0;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method

.method public n(Lcom/facebook/imagepipeline/producers/i0;)Lcom/facebook/imagepipeline/producers/w0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/w0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/w0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/core/e;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->k:Le/f/c/f/h;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/w0;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Lcom/facebook/imagepipeline/producers/i0;)V

    return-object v0
.end method
