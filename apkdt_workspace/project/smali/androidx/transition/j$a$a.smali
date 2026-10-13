.class Landroidx/transition/j$a$a;
.super Landroidx/transition/i;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/j$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:La/e/a;

.field final synthetic f:Landroidx/transition/j$a;


# direct methods
.method constructor <init>(Landroidx/transition/j$a;La/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/j$a$a;->f:Landroidx/transition/j$a;

    iput-object p2, p0, Landroidx/transition/j$a$a;->e:La/e/a;

    invoke-direct {p0}, Landroidx/transition/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/transition/j$a$a;->e:La/e/a;

    iget-object v1, p0, Landroidx/transition/j$a$a;->f:Landroidx/transition/j$a;

    iget-object v1, v1, Landroidx/transition/j$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
