.class Landroidx/transition/b$c;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroidx/transition/Transition$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/util/ArrayList;

.field final synthetic k:Landroidx/transition/b;


# direct methods
.method constructor <init>(Landroidx/transition/b;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/b$c;->k:Landroidx/transition/b;

    iput-object p2, p0, Landroidx/transition/b$c;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/b$c;->f:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/transition/b$c;->g:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/transition/b$c;->h:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/transition/b$c;->i:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/transition/b$c;->j:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/Transition;)V
    .locals 3
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/transition/b$c;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/b$c;->k:Landroidx/transition/b;

    iget-object v2, p0, Landroidx/transition/b$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/b;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/transition/b$c;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/transition/b$c;->k:Landroidx/transition/b;

    iget-object v2, p0, Landroidx/transition/b$c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/b;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/transition/b$c;->i:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 6
    iget-object v1, p0, Landroidx/transition/b$c;->k:Landroidx/transition/b;

    iget-object v2, p0, Landroidx/transition/b$c;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroidx/transition/b;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public b(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public d(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
