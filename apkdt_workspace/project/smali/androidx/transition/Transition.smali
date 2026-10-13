.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$e;,
        Landroidx/transition/Transition$d;,
        Landroidx/transition/Transition$f;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field private static final K:[I

.field private static final L:Landroidx/transition/PathMotion;

.field private static M:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "La/e/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$f;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field G:Landroidx/transition/k;

.field private H:Landroidx/transition/Transition$e;

.field private I:La/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroidx/transition/PathMotion;

.field private e:Ljava/lang/String;

.field private f:J

.field g:J

.field private h:Landroid/animation/TimeInterpolator;

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroidx/transition/n;

.field private u:Landroidx/transition/n;

.field v:Landroidx/transition/TransitionSet;

.field private w:[I

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/m;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/m;",
            ">;"
        }
    .end annotation
.end field

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/Transition;->K:[I

    .line 2
    new-instance v0, Landroidx/transition/Transition$a;

    invoke-direct {v0}, Landroidx/transition/Transition$a;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->L:Landroidx/transition/PathMotion;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->M:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->e:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroidx/transition/Transition;->f:J

    .line 4
    iput-wide v0, p0, Landroidx/transition/Transition;->g:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Landroidx/transition/Transition;->r:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Landroidx/transition/Transition;->s:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Landroidx/transition/n;

    invoke-direct {v1}, Landroidx/transition/n;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    .line 18
    new-instance v1, Landroidx/transition/n;

    invoke-direct {v1}, Landroidx/transition/n;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    .line 19
    iput-object v0, p0, Landroidx/transition/Transition;->v:Landroidx/transition/TransitionSet;

    .line 20
    sget-object v1, Landroidx/transition/Transition;->K:[I

    iput-object v1, p0, Landroidx/transition/Transition;->w:[I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Landroidx/transition/Transition;->z:Z

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, Landroidx/transition/Transition;->B:I

    .line 24
    iput-boolean v1, p0, Landroidx/transition/Transition;->C:Z

    .line 25
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    .line 26
    iput-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Landroidx/transition/Transition;->L:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->J:Landroidx/transition/PathMotion;

    return-void
.end method

.method private static C()La/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/e/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/transition/Transition;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/e/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/e/a;

    invoke-direct {v0}, La/e/a;-><init>()V

    .line 3
    sget-object v1, Landroidx/transition/Transition;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private a(La/e/a;La/e/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, La/e/g;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 37
    invoke-virtual {p1, v1}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    .line 38
    iget-object v4, v2, Landroidx/transition/m;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    invoke-virtual {p2}, La/e/g;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 42
    invoke-virtual {p2, v0}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/m;

    .line 43
    iget-object v1, p1, Landroidx/transition/m;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(La/e/a;La/e/a;La/e/a;La/e/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "La/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p3}, La/e/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 26
    invoke-virtual {p3, v1}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p3, v1}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {p1, v2}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/m;

    .line 31
    invoke-virtual {p2, v3}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/m;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 32
    iget-object v6, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v4, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p1, v2}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p2, v3}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(La/e/a;La/e/a;La/e/d;La/e/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/d<",
            "Landroid/view/View;",
            ">;",
            "La/e/d<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p3}, La/e/d;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p3, v1}, La/e/d;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p3, v1}, La/e/d;->a(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {p1, v2}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/m;

    .line 9
    invoke-virtual {p2, v3}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/m;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 10
    iget-object v6, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1, v2}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p2, v3}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(La/e/a;La/e/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {p1, v2}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/m;

    .line 20
    invoke-virtual {p2, v3}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/m;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 21
    iget-object v6, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v4, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p1, v2}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p2, v3}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/animation/Animator;La/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "La/e/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Landroidx/transition/Transition$b;

    invoke-direct {v0, p0, p2}, Landroidx/transition/Transition$b;-><init>(Landroidx/transition/Transition;La/e/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private static a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V
    .locals 3

    .line 131
    iget-object v0, p0, Landroidx/transition/n;->a:La/e/a;

    invoke-virtual {v0, p1, p2}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 133
    iget-object v1, p0, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 134
    iget-object v1, p0, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 137
    iget-object v1, p0, Landroidx/transition/n;->d:La/e/a;

    invoke-virtual {v1, p2}, La/e/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Landroidx/transition/n;->d:La/e/a;

    invoke-virtual {v1, p2, v0}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_2
    iget-object v1, p0, Landroidx/transition/n;->d:La/e/a;

    invoke-virtual {v1, p2, p1}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 142
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 144
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 145
    iget-object p2, p0, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {p2, v1, v2}, La/e/d;->b(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 146
    iget-object p1, p0, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {p1, v1, v2}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 147
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 148
    iget-object p0, p0, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {p0, v1, v2, v0}, La/e/d;->c(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 149
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 150
    iget-object p0, p0, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {p0, v1, v2, p1}, La/e/d;->c(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroidx/transition/n;Landroidx/transition/n;)V
    .locals 5

    .line 46
    new-instance v0, La/e/a;

    iget-object v1, p1, Landroidx/transition/n;->a:La/e/a;

    invoke-direct {v0, v1}, La/e/a;-><init>(La/e/g;)V

    .line 47
    new-instance v1, La/e/a;

    iget-object v2, p2, Landroidx/transition/n;->a:La/e/a;

    invoke-direct {v1, v2}, La/e/a;-><init>(La/e/g;)V

    const/4 v2, 0x0

    .line 48
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->w:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 49
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object v3, p1, Landroidx/transition/n;->c:La/e/d;

    iget-object v4, p2, Landroidx/transition/n;->c:La/e/d;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->a(La/e/a;La/e/a;La/e/d;La/e/d;)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object v3, p1, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->a(La/e/a;La/e/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 52
    :cond_2
    iget-object v3, p1, Landroidx/transition/n;->d:La/e/a;

    iget-object v4, p2, Landroidx/transition/n;->d:La/e/a;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->a(La/e/a;La/e/a;La/e/a;La/e/a;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->b(La/e/a;La/e/a;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_4
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->a(La/e/a;La/e/a;)V

    return-void
.end method

.method private static a(Landroidx/transition/m;Landroidx/transition/m;Ljava/lang/String;)Z
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/transition/m;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 192
    iget-object p1, p1, Landroidx/transition/m;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method private b(La/e/a;La/e/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;",
            "La/e/a<",
            "Landroid/view/View;",
            "Landroidx/transition/m;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, La/e/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p2, v1}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/m;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, v1, Landroidx/transition/m;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p1, v0}, La/e/g;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    .line 9
    iget-object v3, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 6
    iget-object v4, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 8
    new-instance v1, Landroidx/transition/m;

    invoke-direct {v1}, Landroidx/transition/m;-><init>()V

    .line 9
    iput-object p1, v1, Landroidx/transition/m;->b:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->c(Landroidx/transition/m;)V

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/m;)V

    .line 12
    :goto_1
    iget-object v3, v1, Landroidx/transition/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->b(Landroidx/transition/m;)V

    if-eqz p2, :cond_6

    .line 14
    iget-object v3, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V

    goto :goto_2

    .line 15
    :cond_6
    iget-object v3, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V

    .line 16
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 17
    iget-object v1, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 18
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 19
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 21
    iget-object v3, p0, Landroidx/transition/Transition;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/transition/Transition;->c(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Transition;->B()V

    .line 2
    invoke-static {}, Landroidx/transition/Transition;->C()La/e/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, La/e/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/transition/Transition;->B()V

    .line 6
    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition;->a(Landroid/animation/Animator;La/e/a;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {p0}, Landroidx/transition/Transition;->a()V

    return-void
.end method

.method protected B()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/transition/Transition;->B:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$f;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$f;->a(Landroidx/transition/Transition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    .line 8
    :cond_1
    iget v0, p0, Landroidx/transition/Transition;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/Transition;->B:I

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroidx/transition/m;Landroidx/transition/m;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Landroidx/transition/Transition;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/transition/Transition;->g:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroidx/transition/Transition$f;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroidx/transition/Transition$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 217
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 219
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method a(Landroid/view/View;Z)Landroidx/transition/m;
    .locals 6

    .line 157
    iget-object v0, p0, Landroidx/transition/Transition;->v:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->a(Landroid/view/View;Z)Landroidx/transition/m;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 159
    iget-object v0, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 160
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 161
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/m;

    if-nez v5, :cond_3

    return-object v1

    .line 162
    :cond_3
    iget-object v5, v5, Landroidx/transition/m;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 163
    iget-object p1, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    .line 164
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/transition/m;

    :cond_7
    return-object v1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    iget-wide v0, p0, Landroidx/transition/Transition;->g:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroidx/transition/Transition;->g:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_0
    iget-wide v0, p0, Landroidx/transition/Transition;->f:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/transition/Transition;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_2
    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 233
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    const/4 p1, 0x0

    .line 235
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 238
    :cond_6
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 239
    :goto_1
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-lez v2, :cond_7

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method protected a()V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 203
    iget v0, p0, Landroidx/transition/Transition;->B:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/Transition;->B:I

    .line 204
    iget v0, p0, Landroidx/transition/Transition;->B:I

    if-nez v0, :cond_5

    .line 205
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 209
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$f;

    invoke-interface {v5, p0}, Landroidx/transition/Transition$f;->c(Landroidx/transition/Transition;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object v3, v3, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {v3}, La/e/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 211
    iget-object v3, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object v3, v3, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {v3, v0}, La/e/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 212
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 213
    :goto_2
    iget-object v3, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    iget-object v3, v3, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {v3}, La/e/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 214
    iget-object v3, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    iget-object v3, v3, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {v3, v0}, La/e/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 215
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 216
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    :cond_5
    return-void
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Landroidx/transition/Transition;->a()V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 196
    invoke-virtual {p0}, Landroidx/transition/Transition;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition;->h()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 198
    invoke-virtual {p0}, Landroidx/transition/Transition;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 199
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/Transition;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p0}, Landroidx/transition/Transition;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    :cond_3
    new-instance v0, Landroidx/transition/Transition$c;

    invoke-direct {v0, p0}, Landroidx/transition/Transition$c;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    .line 167
    iget-object v0, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object v1, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroidx/transition/n;)V

    .line 168
    invoke-static {}, Landroidx/transition/Transition;->C()La/e/a;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, La/e/g;->size()I

    move-result v1

    .line 170
    invoke-static {p1}, Landroidx/transition/x;->d(Landroid/view/View;)Landroidx/transition/e0;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_5

    .line 171
    invoke-virtual {v0, v1}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_4

    .line 172
    invoke-virtual {v0, v4}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$d;

    if-eqz v5, :cond_4

    .line 173
    iget-object v6, v5, Landroidx/transition/Transition$d;->a:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroidx/transition/Transition$d;->d:Landroidx/transition/e0;

    .line 174
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 175
    iget-object v6, v5, Landroidx/transition/Transition$d;->c:Landroidx/transition/m;

    .line 176
    iget-object v7, v5, Landroidx/transition/Transition$d;->a:Landroid/view/View;

    .line 177
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->b(Landroid/view/View;Z)Landroidx/transition/m;

    move-result-object v8

    .line 178
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->a(Landroid/view/View;Z)Landroidx/transition/m;

    move-result-object v7

    if-nez v8, :cond_0

    if-eqz v7, :cond_1

    .line 179
    :cond_0
    iget-object v5, v5, Landroidx/transition/Transition$d;->e:Landroidx/transition/Transition;

    .line 180
    invoke-virtual {v5, v6, v7}, Landroidx/transition/Transition;->a(Landroidx/transition/m;Landroidx/transition/m;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 181
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 182
    :cond_2
    invoke-virtual {v0, v4}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 184
    :cond_5
    iget-object v6, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object v7, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    iget-object v8, p0, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/transition/Transition;->a(Landroid/view/ViewGroup;Landroidx/transition/n;Landroidx/transition/n;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 185
    invoke-virtual {p0}, Landroidx/transition/Transition;->A()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/transition/n;Landroidx/transition/n;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/n;",
            "Landroidx/transition/n;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/m;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/m;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 55
    invoke-static {}, Landroidx/transition/Transition;->C()La/e/a;

    move-result-object v8

    .line 56
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 57
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 58
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/m;

    move-object/from16 v14, p5

    .line 59
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/m;

    if-eqz v2, :cond_0

    .line 60
    iget-object v5, v2, Landroidx/transition/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 61
    iget-object v5, v3, Landroidx/transition/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 62
    invoke-virtual {v6, v2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/m;Landroidx/transition/m;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {v6, v7, v2, v3}, Landroidx/transition/Transition;->a(Landroid/view/ViewGroup;Landroidx/transition/m;Landroidx/transition/m;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 64
    iget-object v15, v3, Landroidx/transition/m;->b:Landroid/view/View;

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->z()[Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_9

    if-eqz v4, :cond_9

    .line 66
    array-length v11, v4

    if-lez v11, :cond_9

    .line 67
    new-instance v11, Landroidx/transition/m;

    invoke-direct {v11}, Landroidx/transition/m;-><init>()V

    .line 68
    iput-object v15, v11, Landroidx/transition/m;->b:Landroid/view/View;

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 69
    iget-object v5, v10, Landroidx/transition/n;->a:La/e/a;

    invoke-virtual {v5, v15}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/m;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 70
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 71
    iget-object v13, v11, Landroidx/transition/m;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Landroidx/transition/m;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 72
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 73
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 74
    invoke-virtual {v8}, La/e/g;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 75
    invoke-virtual {v8, v5}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 76
    invoke-virtual {v8, v10}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/Transition$d;

    .line 77
    iget-object v12, v10, Landroidx/transition/Transition$d;->c:Landroidx/transition/m;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroidx/transition/Transition$d;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Landroidx/transition/Transition$d;->b:Ljava/lang/String;

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 79
    iget-object v10, v10, Landroidx/transition/Transition$d;->c:Landroidx/transition/m;

    invoke-virtual {v10, v11}, Landroidx/transition/m;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v5, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v5, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v5

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 80
    iget-object v4, v2, Landroidx/transition/m;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 81
    iget-object v4, v6, Landroidx/transition/Transition;->G:Landroidx/transition/k;

    if-eqz v4, :cond_b

    .line 82
    invoke-virtual {v4, v7, v6, v2, v3}, Landroidx/transition/k;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/m;Landroidx/transition/m;)J

    move-result-wide v2

    .line 83
    iget-object v4, v6, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 85
    new-instance v13, Landroidx/transition/Transition$d;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->e()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static/range {p1 .. p1}, Landroidx/transition/x;->d(Landroid/view/View;)Landroidx/transition/e0;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$d;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/e0;Landroidx/transition/m;)V

    .line 87
    invoke-virtual {v8, v10, v13}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, v6, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    const/4 v2, 0x0

    .line 89
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 90
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 91
    iget-object v4, v6, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 92
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 93
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 97
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->a(Z)V

    .line 98
    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->c(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 102
    :goto_1
    iget-object v2, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 103
    iget-object v2, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 104
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 105
    new-instance v3, Landroidx/transition/m;

    invoke-direct {v3}, Landroidx/transition/m;-><init>()V

    .line 106
    iput-object v2, v3, Landroidx/transition/m;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 107
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->c(Landroidx/transition/m;)V

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/m;)V

    .line 109
    :goto_2
    iget-object v4, v3, Landroidx/transition/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->b(Landroidx/transition/m;)V

    if-eqz p2, :cond_5

    .line 111
    iget-object v4, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V

    goto :goto_3

    .line 112
    :cond_5
    iget-object v4, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 113
    :goto_4
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 114
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 115
    new-instance v2, Landroidx/transition/m;

    invoke-direct {v2}, Landroidx/transition/m;-><init>()V

    .line 116
    iput-object v0, v2, Landroidx/transition/m;->b:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 117
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->c(Landroidx/transition/m;)V

    goto :goto_5

    .line 118
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/m;)V

    .line 119
    :goto_5
    iget-object v3, v2, Landroidx/transition/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->b(Landroidx/transition/m;)V

    if-eqz p2, :cond_9

    .line 121
    iget-object v3, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V

    goto :goto_6

    .line 122
    :cond_9
    iget-object v3, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/n;Landroid/view/View;Landroidx/transition/m;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 123
    iget-object p1, p0, Landroidx/transition/Transition;->I:La/e/a;

    if-eqz p1, :cond_d

    .line 124
    invoke-virtual {p1}, La/e/g;->size()I

    move-result p1

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_b

    .line 126
    iget-object v2, p0, Landroidx/transition/Transition;->I:La/e/a;

    invoke-virtual {v2, v0}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    iget-object v3, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object v3, v3, Landroidx/transition/n;->d:La/e/a;

    invoke-virtual {v3, v2}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 128
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 129
    iget-object v2, p0, Landroidx/transition/Transition;->I:La/e/a;

    invoke-virtual {v2, v1}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    iget-object v3, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object v3, v3, Landroidx/transition/n;->d:La/e/a;

    invoke-virtual {v3, v2, v0}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public a(Landroidx/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 220
    sget-object p1, Landroidx/transition/Transition;->L:Landroidx/transition/PathMotion;

    iput-object p1, p0, Landroidx/transition/Transition;->J:Landroidx/transition/PathMotion;

    goto :goto_0

    .line 221
    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->J:Landroidx/transition/PathMotion;

    :goto_0
    return-void
.end method

.method public a(Landroidx/transition/Transition$e;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iput-object p1, p0, Landroidx/transition/Transition;->H:Landroidx/transition/Transition$e;

    return-void
.end method

.method public a(Landroidx/transition/k;)V
    .locals 0
    .param p1    # Landroidx/transition/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 223
    iput-object p1, p0, Landroidx/transition/Transition;->G:Landroidx/transition/k;

    return-void
.end method

.method public abstract a(Landroidx/transition/m;)V
    .param p1    # Landroidx/transition/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object p1, p1, Landroidx/transition/n;->a:La/e/a;

    invoke-virtual {p1}, La/e/g;->clear()V

    .line 152
    iget-object p1, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object p1, p1, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 153
    iget-object p1, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    iget-object p1, p1, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {p1}, La/e/d;->a()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    iget-object p1, p1, Landroidx/transition/n;->a:La/e/a;

    invoke-virtual {p1}, La/e/g;->clear()V

    .line 155
    iget-object p1, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    iget-object p1, p1, Landroidx/transition/n;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 156
    iget-object p1, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    iget-object p1, p1, Landroidx/transition/n;->c:La/e/d;

    invoke-virtual {p1}, La/e/d;->a()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/transition/m;Landroidx/transition/m;)Z
    .locals 6
    .param p1    # Landroidx/transition/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 186
    invoke-virtual {p0}, Landroidx/transition/Transition;->z()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 188
    invoke-static {p1, p2, v5}, Landroidx/transition/Transition;->a(Landroidx/transition/m;Landroidx/transition/m;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p1, Landroidx/transition/m;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/m;Landroidx/transition/m;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/Transition;->g:J

    return-wide v0
.end method

.method public b(J)Landroidx/transition/Transition;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Landroidx/transition/Transition;->f:J

    return-object p0
.end method

.method public b(Landroidx/transition/Transition$f;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroidx/transition/Transition$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 32
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public b(Landroid/view/View;Z)Landroidx/transition/m;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Landroidx/transition/Transition;->v:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->b(Landroid/view/View;Z)Landroidx/transition/m;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 30
    iget-object p2, p0, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    .line 31
    :goto_0
    iget-object p2, p2, Landroidx/transition/n;->a:La/e/a;

    invoke-virtual {p2, p1}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/m;

    return-object p1
.end method

.method b(Landroidx/transition/m;)V
    .locals 5

    .line 36
    iget-object v0, p0, Landroidx/transition/Transition;->G:Landroidx/transition/k;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/transition/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 37
    iget-object v0, p0, Landroidx/transition/Transition;->G:Landroidx/transition/k;

    invoke-virtual {v0}, Landroidx/transition/k;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 39
    iget-object v3, p1, Landroidx/transition/m;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 40
    iget-object v0, p0, Landroidx/transition/Transition;->G:Landroidx/transition/k;

    invoke-virtual {v0, p1}, Landroidx/transition/k;->a(Landroidx/transition/m;)V

    :cond_3
    return-void
.end method

.method b(Landroid/view/View;)Z
    .locals 5

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 16
    iget-object v4, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v1, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 20
    :cond_4
    iget-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 23
    :cond_7
    iget-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 24
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 25
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 26
    :goto_1
    iget-object v1, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 27
    iget-object v1, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public c()Landroidx/transition/Transition$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Landroidx/transition/Transition;->H:Landroidx/transition/Transition$e;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 25
    iget-boolean v0, p0, Landroidx/transition/Transition;->D:Z

    if-nez v0, :cond_3

    .line 26
    invoke-static {}, Landroidx/transition/Transition;->C()La/e/a;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, La/e/g;->size()I

    move-result v1

    .line 28
    invoke-static {p1}, Landroidx/transition/x;->d(Landroid/view/View;)Landroidx/transition/e0;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 29
    invoke-virtual {v0, v1}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$d;

    .line 30
    iget-object v4, v3, Landroidx/transition/Transition$d;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/transition/Transition$d;->d:Landroidx/transition/e0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v0, v1}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 32
    invoke-static {v3}, Landroidx/transition/a;->a(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 34
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$f;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$f;->b(Landroidx/transition/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_2
    iput-boolean v2, p0, Landroidx/transition/Transition;->C:Z

    :cond_3
    return-void
.end method

.method public abstract c(Landroidx/transition/m;)V
    .param p1    # Landroidx/transition/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    .line 4
    new-instance v2, Landroidx/transition/n;

    invoke-direct {v2}, Landroidx/transition/n;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->t:Landroidx/transition/n;

    .line 5
    new-instance v2, Landroidx/transition/n;

    invoke-direct {v2}, Landroidx/transition/n;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->u:Landroidx/transition/n;

    .line 6
    iput-object v0, v1, Landroidx/transition/Transition;->x:Ljava/util/ArrayList;

    .line 7
    iput-object v0, v1, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 16
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/transition/Transition;->C:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Landroidx/transition/Transition;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Landroidx/transition/Transition;->C()La/e/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, La/e/g;->size()I

    move-result v2

    .line 5
    invoke-static {p1}, Landroidx/transition/x;->d(Landroid/view/View;)Landroidx/transition/e0;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$d;

    .line 7
    iget-object v4, v3, Landroidx/transition/Transition$d;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/transition/Transition$d;->d:Landroidx/transition/e0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0, v2}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 9
    invoke-static {v3}, Landroidx/transition/a;->b(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$f;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$f;->d(Landroidx/transition/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_2
    iput-boolean v1, p0, Landroidx/transition/Transition;->C:Z

    :cond_3
    return-void
.end method

.method public f()Landroidx/transition/PathMotion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->J:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public g()Landroidx/transition/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->G:Landroidx/transition/k;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/Transition;->f:J

    return-wide v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public z()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
