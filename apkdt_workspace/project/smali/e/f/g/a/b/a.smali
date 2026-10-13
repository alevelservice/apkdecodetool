.class public Le/f/g/a/b/a;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable2.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Le/f/e/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/g/a/b/a$b;
    }
.end annotation


# static fields
.field private static final s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final t:Le/f/g/a/b/b;


# instance fields
.field private e:Le/f/g/a/a/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Le/f/g/a/c/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:I

.field private volatile o:Le/f/g/a/b/b;

.field private volatile p:Le/f/g/a/b/a$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Le/f/f/f/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/f/g/a/b/a;

    sput-object v0, Le/f/g/a/b/a;->s:Ljava/lang/Class;

    .line 2
    new-instance v0, Le/f/g/a/b/c;

    invoke-direct {v0}, Le/f/g/a/b/c;-><init>()V

    sput-object v0, Le/f/g/a/b/a;->t:Le/f/g/a/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/f/g/a/b/a;-><init>(Le/f/g/a/a/a;)V

    return-void
.end method

.method public constructor <init>(Le/f/g/a/a/a;)V
    .locals 2
    .param p1    # Le/f/g/a/a/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x8

    .line 3
    iput-wide v0, p0, Le/f/g/a/b/a;->l:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Le/f/g/a/b/a;->m:J

    .line 5
    sget-object v0, Le/f/g/a/b/a;->t:Le/f/g/a/b/b;

    iput-object v0, p0, Le/f/g/a/b/a;->o:Le/f/g/a/b/b;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/f/g/a/b/a;->p:Le/f/g/a/b/a$b;

    .line 7
    new-instance v0, Le/f/g/a/b/a$a;

    invoke-direct {v0, p0}, Le/f/g/a/b/a$a;-><init>(Le/f/g/a/b/a;)V

    iput-object v0, p0, Le/f/g/a/b/a;->r:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    .line 9
    iget-object p1, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    invoke-static {p1}, Le/f/g/a/b/a;->a(Le/f/g/a/a/a;)Le/f/g/a/c/b;

    move-result-object p1

    iput-object p1, p0, Le/f/g/a/b/a;->f:Le/f/g/a/c/b;

    return-void
.end method

.method private static a(Le/f/g/a/a/a;)Le/f/g/a/c/b;
    .locals 1
    .param p0    # Le/f/g/a/a/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Le/f/g/a/c/a;

    invoke-direct {v0, p0}, Le/f/g/a/c/a;-><init>(Le/f/g/a/a/d;)V

    return-object v0
.end method

.method static synthetic a(Le/f/g/a/b/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Le/f/g/a/b/a;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    .line 2
    iget-wide v0, p0, Le/f/g/a/b/a;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Le/f/g/a/b/a;->j:J

    .line 3
    iget-object p1, p0, Le/f/g/a/b/a;->r:Ljava/lang/Runnable;

    iget-wide v0, p0, Le/f/g/a/b/a;->j:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()V
    .locals 3

    .line 1
    iget v0, p0, Le/f/g/a/b/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/f/g/a/b/a;->n:I

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Le/f/c/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/f/g/a/b/a;->s:Ljava/lang/Class;

    iget v1, p0, Le/f/g/a/b/a;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dropped a frame. Count: %s"

    invoke-static {v0, v2, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Le/f/g/a/a/a;->clear()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v14, p0

    .line 1
    iget-object v0, v14, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-eqz v0, :cond_9

    iget-object v0, v14, Le/f/g/a/b/a;->f:Le/f/g/a/c/b;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p0}, Le/f/g/a/b/a;->b()J

    move-result-wide v12

    .line 3
    iget-boolean v0, v14, Le/f/g/a/b/a;->g:Z

    if-eqz v0, :cond_1

    iget-wide v0, v14, Le/f/g/a/b/a;->h:J

    sub-long v0, v12, v0

    iget-wide v2, v14, Le/f/g/a/b/a;->m:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, v14, Le/f/g/a/b/a;->i:J

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 5
    iget-object v0, v14, Le/f/g/a/b/a;->f:Le/f/g/a/c/b;

    iget-wide v1, v14, Le/f/g/a/b/a;->i:J

    invoke-interface {v0, v8, v9, v1, v2}, Le/f/g/a/c/b;->a(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, v14, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    invoke-interface {v0}, Le/f/g/a/a/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 7
    iget-object v1, v14, Le/f/g/a/b/a;->o:Le/f/g/a/b/b;

    invoke-interface {v1, v14}, Le/f/g/a/b/b;->c(Le/f/g/a/b/a;)V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v14, Le/f/g/a/b/a;->g:Z

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 9
    iget v2, v14, Le/f/g/a/b/a;->k:I

    if-eq v2, v1, :cond_3

    iget-wide v1, v14, Le/f/g/a/b/a;->j:J

    cmp-long v3, v12, v1

    if-ltz v3, :cond_3

    .line 10
    iget-object v1, v14, Le/f/g/a/b/a;->o:Le/f/g/a/b/b;

    invoke-interface {v1, v14}, Le/f/g/a/b/b;->a(Le/f/g/a/b/a;)V

    :cond_3
    :goto_1
    move v3, v0

    .line 11
    iget-object v0, v14, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    move-object/from16 v1, p1

    invoke-interface {v0, v14, v1, v3}, Le/f/g/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v0, v14, Le/f/g/a/b/a;->o:Le/f/g/a/b/b;

    invoke-interface {v0, v14, v3}, Le/f/g/a/b/b;->a(Le/f/g/a/b/a;I)V

    .line 13
    iput v3, v14, Le/f/g/a/b/a;->k:I

    :cond_4
    if-nez v4, :cond_5

    .line 14
    invoke-direct/range {p0 .. p0}, Le/f/g/a/b/a;->c()V

    .line 15
    :cond_5
    invoke-direct/range {p0 .. p0}, Le/f/g/a/b/a;->b()J

    move-result-wide v15

    .line 16
    iget-boolean v0, v14, Le/f/g/a/b/a;->g:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, v14, Le/f/g/a/b/a;->f:Le/f/g/a/c/b;

    iget-wide v5, v14, Le/f/g/a/b/a;->h:J

    sub-long v5, v15, v5

    .line 18
    invoke-interface {v0, v5, v6}, Le/f/g/a/c/b;->a(J)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_6

    .line 19
    iget-wide v0, v14, Le/f/g/a/b/a;->l:J

    add-long/2addr v0, v5

    .line 20
    invoke-direct {v14, v0, v1}, Le/f/g/a/b/a;->a(J)V

    move-wide/from16 v19, v0

    goto :goto_2

    :cond_6
    move-wide/from16 v19, v1

    :goto_2
    move-wide/from16 v17, v5

    goto :goto_3

    :cond_7
    move-wide/from16 v17, v1

    move-wide/from16 v19, v17

    .line 21
    :goto_3
    iget-object v0, v14, Le/f/g/a/b/a;->p:Le/f/g/a/b/a$b;

    if-eqz v0, :cond_8

    .line 22
    iget-object v2, v14, Le/f/g/a/b/a;->f:Le/f/g/a/c/b;

    iget-boolean v5, v14, Le/f/g/a/b/a;->g:Z

    iget-wide v6, v14, Le/f/g/a/b/a;->h:J

    iget-wide v10, v14, Le/f/g/a/b/a;->i:J

    move-object/from16 v1, p0

    move-wide/from16 v21, v8

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    invoke-interface/range {v0 .. v19}, Le/f/g/a/b/a$b;->a(Le/f/g/a/b/a;Le/f/g/a/c/b;IZZJJJJJJJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    move-wide v1, v8

    .line 23
    :goto_4
    iput-wide v1, v0, Le/f/g/a/b/a;->i:J

    return-void

    :cond_9
    :goto_5
    move-object v0, v14

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Le/f/g/a/a/a;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Le/f/g/a/a/a;->d()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/g/a/b/a;->g:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/f/g/a/a/a;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Le/f/g/a/b/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Le/f/g/a/b/a;->i:J

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 3
    iput-wide v4, p0, Le/f/g/a/b/a;->i:J

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/g/a/b/a;->q:Le/f/f/f/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/f/f/f/e;

    invoke-direct {v0}, Le/f/f/f/e;-><init>()V

    iput-object v0, p0, Le/f/g/a/b/a;->q:Le/f/f/f/e;

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/g/a/b/a;->q:Le/f/f/f/e;

    invoke-virtual {v0, p1}, Le/f/f/f/e;->a(I)V

    .line 4
    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Le/f/g/a/a/a;->b(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/g/a/b/a;->q:Le/f/f/f/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/f/f/f/e;

    invoke-direct {v0}, Le/f/f/f/e;-><init>()V

    iput-object v0, p0, Le/f/g/a/b/a;->q:Le/f/f/f/e;

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/g/a/b/a;->q:Le/f/f/f/e;

    invoke-virtual {v0, p1}, Le/f/f/f/e;->a(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Le/f/g/a/a/a;->a(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/g/a/b/a;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le/f/g/a/b/a;->e:Le/f/g/a/a/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/f/g/a/a/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Le/f/g/a/b/a;->g:Z

    .line 3
    invoke-direct {p0}, Le/f/g/a/b/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Le/f/g/a/b/a;->h:J

    .line 4
    iget-wide v0, p0, Le/f/g/a/b/a;->h:J

    iput-wide v0, p0, Le/f/g/a/b/a;->j:J

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Le/f/g/a/b/a;->i:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Le/f/g/a/b/a;->k:I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    iget-object v0, p0, Le/f/g/a/b/a;->o:Le/f/g/a/b/b;

    invoke-interface {v0, p0}, Le/f/g/a/b/b;->b(Le/f/g/a/b/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/g/a/b/a;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/f/g/a/b/a;->g:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Le/f/g/a/b/a;->h:J

    .line 4
    iget-wide v0, p0, Le/f/g/a/b/a;->h:J

    iput-wide v0, p0, Le/f/g/a/b/a;->j:J

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Le/f/g/a/b/a;->i:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Le/f/g/a/b/a;->k:I

    .line 7
    iget-object v0, p0, Le/f/g/a/b/a;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Le/f/g/a/b/a;->o:Le/f/g/a/b/b;

    invoke-interface {v0, p0}, Le/f/g/a/b/b;->c(Le/f/g/a/b/a;)V

    return-void
.end method
